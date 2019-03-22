$(document).ready(function() {

    var dataProduct = {};



    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                // $('#preview-product-img').attr('src', e.target.result);
                $('#product-image-add').attr('src', e.target.result);

            }
            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#input-image").change(function (e) {
        readURL(this);
    });


    $("#change-product-mainImage").change(function() {
        readURL(this);
        var formData = new FormData();
        NProgress.start();
        formData.append('file', $("#change-product-mainImage")[0].files[0]);
        axios.post("/api/upload/upload-image", formData).then(function(res){
            NProgress.done();
            if(res.data.success) {
                $('.product-main-image').attr('src', res.data.link);
            }
        }, function(err){
            NProgress.done();
        });
    });



    $("#new-product").on("click", function () {
        dataProduct = {};
        $('#input-product-name').val("");
        $('#input-product-desc').val("");
        $("#input-product-category").val("");
        $("#input-product-price").val("");
        $("#input-product-promotion").val("");
        $("#input-product-supply").val("");

        $('.product-main-image').attr('src', 'https://www.vietnamprintpack.com/images/default.jpg');

    });


    $(".edit-product").on("click", function () {
        var pdInfo = $(this).data("product");
        console.log(pdInfo);
        NProgress.start();
        axios.get("/api/product/detail/" + pdInfo).then(function(res){
            NProgress.done();
            if(res.data.success) {
                console.log("data: ",res.data);
                dataProduct.id = res.data.data.id;
                $("#input-product-name").val(res.data.data.name);
                $("#input-product-desc").val(res.data.data.shortDesc);
                $("#input-product-category").val(res.data.data.categoryId);
                $("#input-product-price").val(res.data.data.price);
                $("#input-product-promotion").val(res.data.data.promotionId);
                $("#input-product-supply").val(res.data.data.supplyId);

                if(res.data.data.mainImage != null) {
                    $('.product-main-image').attr('src', res.data.data.mainImage);
                }
            }else {
                console.log("ahihi");
            }
        }, function(err){
            NProgress.done();
        })
    });



    $(".btn-save-product").on("click", function () {
        if($("#input-product-name").val() === "" || $("#input-product-desc").val() === "" || $("#input-product-price").val()==="") {
            swal(
                'Error',
                'You need to fill all values',
                'error'
            );
            return;
        }


        dataProduct.name = $('#input-product-name').val();
        dataProduct.shortDesc = $('#input-product-desc').val();
        dataProduct.categoryId = $("#input-product-category").val();
        dataProduct.promotionId = $("#input-product-promotion").val();;
        dataProduct.supplyId = $("#input-product-supply").val();

        dataProduct.mainImage = $('.product-main-image').attr('src');
        dataProduct.price = $("#input-product-price").val();
        NProgress.start();
        console.log(dataProduct.id);
        var linkPost = "/api/product/create";
        if(dataProduct.id) {
            linkPost = "/api/product/update/" + dataProduct.id;
        }

        axios.post(linkPost, dataProduct).then(function(res){
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
                'Some error when saving product',
                'error'
            );
        })
    });


    $("#addImage").click(function () {
        var productId = $(this).data("product");
        var data={};
        data.productId= productId;
        $("#product-id").val(productId);
        console.log("data: ",data);
        $.ajax({
            url:"/ProductImage/ListImage",
            data: {
                productId:productId
            },
            type:"POST",
            dataType:"json",
            contentType: "application/json",
            success: function (data) {
                if (data.success === true) {
                    alert(data.message);
                    console.log("data: ", data.data);
                }
                else {
                    alert(data.message);
                }
            }.bind(this),
            error: function (e) {
                console.log(e);
            }
        });

    });

    $("#btn-add-image").click(function (e) {
        e.preventDefault();
        var formData= new FormData();
        NProgress.start();
        formData.append('file',$("#input-image")[0].files[0]);
        axios.post("/api/upload/upload-image", formData).then(function (res) {
            NProgress.done();
            if(res.data.success) {
                var productImage={};
                productImage.title= $("#input-title").val();
                productImage.link=res.data.link;
                productImage.productId= $("#product-id").val();
                productImage.imageId=$("#image-id").val();
                // NProgress.start();
                // axios.post("/api/productImage/update", productImage).then(function (res) {
                //     NProgress.done();
                //     alert(ok);
                // },function (err) {
                //     NProgress.done();
                //    // $('#myForm')[0].submit();
                //     console.log(err);
                // });
                console.log("data: ", productImage);
                $.ajax({
                    url:"/api/productImage/update",
                    data: JSON.stringify(productImage),
                    type:"POST",
                    dataType:"json",
                    contentType: "application/json",
                    success: function (data) {
                        if (data.success === true) {
                            alert(data.message);
                        }
                        else {

                        }
                    }.bind(this),
                    error: function (e) {
                        console.log(e);
                    }
                });
            }
           // $('#myForm')[0].submit();
        },function (err) {
            NProgress.done();
            $('#myForm')[0].submit();
        });
    });

});