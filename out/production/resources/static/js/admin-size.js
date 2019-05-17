$(document).ready(function () {

    $(".del-size").on("click", function () {
        var sizeId = $(this).data("size");
        var linkPost="/api/size/delete/"+sizeId;
        swal({
            title: 'Bạn có chắc chắn muốn xóa size?',
            text: "Bạn sẽ không có khả năng khôi phục!",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Xóa',
            cancelButtonText:'Hủy'
        }).then(function(result)  {
            if (result.value) {
                NProgress.start();
                axios.post(linkPost).then(function(res){
                    NProgress.done();
                    if(res.data.success) {
                        swal(
                            {
                                title:'Thành công',
                                text:'Xóa thành công',
                                type:'success',
                                showCancelButton: false,
                                timer:1500
                            }
                        ).then(function() {
                            location.reload();
                        });
                    } else {
                        swal(
                            'Error',
                            res.data.message,
                            'error'
                        );
                    }
                }, function(err){
                    NProgress.done();
                    swal(
                        'Error',
                        'Some error when deleting size',
                        'error'
                    );
                });




            }
        });

    });

    $(".edit-size").on("click", function () {
        var sizeId = $(this).data("size");
        console.log(sizeId);
        $.ajax({
            url:"/api/size/detail",
            dataType:'json',
            type:'POST',
            data: {
                sizeId: sizeId
            },
            success: function (data) {
                console.log(data);
                $("#input-id").val(data.id);
                $("#input-name").val(data.name);
                $("#input-desc").val(data.shortDesc);
            },
            error: function(xhr, status, err)  {
                console.log(err.toString());
            }
        })
    });

    $(".btn-save").on("click", function () {
        if($("#input-name").val() === "" || $("#input-desc").val() === "" ) {
            swal(
                'Error',
                'You need to fill all values',
                'error'
            );
            return;
        }

        var  size={};
        size.name = $('#input-name').val();
        size.shortDesc = $('#input-desc').val();
        size.id = $("#input-id").val();

       // console.log(supply.id);

        // console.log(supply.id);?
        var linkPost = "/api/size/create";
        if(size.id) {
            linkPost = "/api/size/update/" + size.id;
        }
        NProgress.start();
        axios.post(linkPost, size).then(function(res){
           NProgress.done();
            if(res.data.success) {
                swal(
                    {
                        title:'Thành công',
                        text:'Cập nhật thành công',
                        type:'success',
                        showCancelButton: false,
                        timer:1500
                    }
                ).then(function() {
                    location.reload();
                });
            } else {
                swal(
                    'Error',
                    res.data.message,
                    'error'
                );
            }
        }, function(err){
            NProgress.done();
            swal(
                'Error',
                'Some error when saving size',
                'error'
            );
        })

    });



});