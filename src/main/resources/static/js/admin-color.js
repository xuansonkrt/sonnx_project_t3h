$(document).ready(function () {

    $(".del-color").on("click", function () {
        var colorId = $(this).data("color");
        var linkPost="/api/color/delete/"+colorId;
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
                'Some error when deleting color',
                'error'
            );
        });
    });

    $(".edit-color").on("click", function () {
        var colorId = $(this).data("color");
        $.ajax({
            url:"/api/color/detail",
            dataType:'json',
            type:'POST',
            data: {
                colorId: colorId
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

        var  color={};
        color.name = $('#input-name').val();
        color.shortDesc = $('#input-desc').val();
        color.id = $("#input-id").val();

       // console.log(supply.id);

        // console.log(supply.id);?
        var linkPost = "/api/color/create";
        if(color.id) {
            linkPost = "/api/color/update/" + color.id;
        }
        NProgress.start();
        axios.post(linkPost, color).then(function(res){
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
                'Some error when saving color',
                'error'
            );
        })

    });



});