$(document).ready(function() {

    var dataProduct = {};
    var listImage =[];


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
        $("#image-id").val("");
        $("#input-title").val("");
        $("#image-link").val("");
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


    $(".addImage").click(function () {

        var productId = $(this).data("product");
        var temp= $("#product-id").val();
        if(temp!=productId){
            $("#product-id").val(productId);
            $("#image-id").val("");
            $("#input-title").val("");
            $("#product-image-add").attr("src","https://www.vietnamprintpack.com/images/default.jpg");
            $("#block-image").empty();
        }

        // var productId = $(this).data("product");
        var data={};
        data.productId= productId;
        $("#product-id").val(productId);
        // console.log("data: ",data);
        loadListImage(productId);

    });

    $("#btn-add-image").click(function (e) {
        debugger
        var str=$("#input-image")[0].files[0];
        if(typeof(str) == "undefined"){

            swal(
                'Error',
                'Full infor',
                'error'
            );
            return;
        }
        e.preventDefault();
        var flag=0;
        var add=0;

        if($("#image-id").val()=="")
            add=1;
        var formData= new FormData();
        NProgress.start();
        if($("#image-link").val()==""){
            formData.append('file',$("#input-image")[0].files[0]);
            axios.post("/api/upload/upload-image", formData).then(function (res) {
                NProgress.done();
                if(res.data.success) {
                    flag=1;
                    $("#image-link").val(res.data.link);
                }
                // $('#myForm')[0].submit();
            },function (err) {
                NProgress.done();
                //  $('#myForm')[0].submit();
                console.log(err);
            });
        }


        if(flag==1||$("#image-link").val()!=""){
            var productImage={};
            productImage.title= $("#input-title").val();
            productImage.link=  $("#image-link").val();
            productImage.productId= $("#product-id").val();
            productImage.id=$("#image-id").val();
            console.log("data: ", productImage);
            $.ajax({
                url:"/api/productImage/update",
                data: JSON.stringify(productImage),
                type:"POST",
                dataType:"json",
                contentType: "application/json",
                success: function (data) {
                    if (data.success === true) {
                        if(add==1)
                        {
                            var div= $("<div></div>");
                            div.addClass("col-sm-3 mx-15px edit-image");
                            div.attr("id",data.data.id);

                            // var span=$("<span>&times;</span>");
                            // span.addClass("closebtn");
                            // span.attr("id",data.data.id);

                            var image=$("<img>")
                            image.attr("src",data.data.link);
                            image.attr("width","100%");
                            image.attr("id",data.data.id);
                            image.attr("onclick","myFunction(this)");
                            image.attr("class","image-product-2");
                           // div.append(span);
                            div.append(image);
                            $("#block-image").append(div);
                            $("#image-id").val(data.data.id);
                            $("#btn-del-image").removeClass("hidden");

                        } else{
                            //update infor  trên grid
                        }
                        log.show("Update success",true);
                    }
                    else {

                    }
                }.bind(this),
                error: function (e) {
                    console.log(e);
                }
            });
        }
    });


    $(".del-product").click(function () {
        var productId= $(this).data("product");
        $.ajax({
            url:"/api/product/delete/"+productId,
            data: JSON.stringify(productImageId),
            type:"POST",
            dataType:"json",
            contentType: "application/json",
            success: function (data) {
                if (data.success === true) {
                    swal(
                        'Good job!',
                        data.message,
                        'success'
                    ).then(function() {
                        location.reload();
                    });
                }
                else {
                    swal(
                        'Error',
                        data.message,
                        'error'
                    );
                }
            }.bind(this),
            error: function (e) {
                swal(
                    'Error',
                    'Some error when delete product',
                    'error'
                );
                console.log(e);
            }
        });

    });

    $("#btn-del-image").click(function () {
        var productImageId=$("#image-id").val();
        $.ajax({
            url:"/api/productImage/delete/"+productImageId,
            data: JSON.stringify(productImageId),
            type:"POST",
            dataType:"json",
            contentType: "application/json",
            success: function (data) {
                if (data.success === true) {
                    var id=$("#image-id").val();
                    $("#"+id).addClass("hidden");
                    $("#input-title").val("");
                    $("#product-image-add").attr("src","https://www.vietnamprintpack.com/images/default.jpg");
                  //  $("#product-id").val("");
                    $("#image-id").val("");
                    $("#image-link").val("");
                    $("#btn-del-image").addClass("hidden");
                  //  var productId=$("#product-id").val();
                    //loadListImage(productId);
                }
                else {

                }
            }.bind(this),
            error: function (e) {
                console.log(e);
            }
        });
    });


});