$(document).ready(function () {

    $(".del-category").on("click", function () {
        var categoryId = $(this).data("category");
        console.log(categoryId);
        var linkPost="/api/category/delete/"+categoryId;
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
                'Some error when deleting category',
                'error'
            );
        });
    });

    $(".edit-category").on("click", function () {
        var categoryId = $(this).data("category");
        console.log(categoryId);
        $.ajax({
            url:"/api/category/detail",
            dataType:'json',
            type:'POST',
            data: {
                categoryId: categoryId
            },
            success: function (data) {
                console.log(data);
                $("#input-category-id").val(data.id);
                $("#input-category-name").val(data.name);
                $("#input-category-desc").val(data.shortDesc);
            },
            error: function(xhr, status, err)  {
                console.log(err.toString());
            }
        })
    });

    $(".btn-save-category").on("click", function () {
        if($("#input-category-name").val() === "" || $("#input-category-desc").val() === "" ) {
            swal(
                'Error',
                'You need to fill all values',
                'error'
            );
            return;
        }

        var  category={};
        category.name = $('#input-category-name').val();
        category.shortDesc = $('#input-category-desc').val();
        category.id = $("#input-category-id").val();

       // console.log(supply.id);

        // console.log(supply.id);?
        var linkPost = "/api/category/create";
        if(category.id) {
            linkPost = "/api/category/update/" + category.id;
        }
        NProgress.start();
        axios.post(linkPost, category).then(function(res){
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
                'Some error when saving category',
                'error'
            );
        })

    });



});