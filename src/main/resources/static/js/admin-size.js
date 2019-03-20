$(document).ready(function () {

    $(".del-size").on("click", function () {
        var sizeId = $(this).data("size");
        var linkPost="/api/size/delete/"+sizeId;
        NProgress.start();
        axios.post(linkPost).then(function(res){
            NProgress.done();
            if(res.data.success) {
                swal(
                    'Good job!',
                    res.data.message,
                    'success'
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
                    'Good job!',
                    res.data.message,
                    'success'
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