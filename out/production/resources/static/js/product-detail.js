$(document).ready(function () {
    var state={
        amount:"",
        productEntityId:""
    }
    $("#selectColor").on("change",function () {
       if($('#selectSize :selected').val()=="0"){
           return;
       }
       getAmount();


    });


    $("#selectSize").on("change",function () {
        if($('#selectColor :selected').val()=="0"){
            return;
        }
        getAmount();
    });

    function getAmount() {
        var size=$('#selectSize :selected').val();
        var color=$('#selectColor :selected').val();
        var amount=0;
        var listEntity=vm.productEntityVMList;
        for(var i=0; i<listEntity.length;i++){
            console.log("item: ",listEntity[i]);

            if(listEntity[i].sizeId==size && listEntity[i].colorId==color){
                amount=listEntity[i].amount;
                state.productEntityId=listEntity[i].productEntityId;
                break;
            }
        }
        state.amount=amount;
        $("#warehouse").text("(Còn "+amount+" sản phẩm)");

    }


    $(".add-to-cart").on("click", function () {
        if($('#selectSize :selected').val()=="0"){
            swal(
                'Thất bại',
                'Chưa chọn size!',
                'error'
            )
            return;
        }
        if($('#selectColor :selected').val()=="0"){
            swal(
                'Thất bại',
                'Chưa chọn màu!',
                'error'
            )
            return;
        }


        var dataCart = {};
        var pdInfo = $(this).data("product");
        dataCart.amount = $(".num-product").val();
        if(dataCart.amount>state.amount){
            swal(
                'Thất bại',
                'Không đủ số lượng!',
                'error'
            )
            return;
        }
        dataCart.productEntityId = state.productEntityId;
        dataCart.guid = getCookie("guid");

        NProgress.start();
    console.log("data: ",dataCart);
        var linkPost = "/api/cart-product/add";

        axios.post(linkPost, dataCart).then(function(res){
            NProgress.done();
            if(res.data.success) {
                swal(
                    {
                        title:'Thành công',
                        text:res.data.message,
                        type:'success',
                        showCancelButton: false,
                        timer:1500
                    }
                ).then(function() {
                    location.reload();
                });
            } else {
                swal(
                    'Xảy ra lỗi',
                    res.data.message,
                    'error'
                );
            }
        }, function(err){
            NProgress.done();
            swal(
                'Error',
                'Fail',
                'error'
            );
        });
    });

    $(".quickView").on("click",function () {
        var productId=$(this).data("id");
        console.log("id: ",productId );
        var data={
            productId:productId
        }

        $.ajax({
            url:"/api/product/quick-view",
            data: JSON.stringify(productId),
            type:"POST",
            dataType:"json",
            contentType: "application/json",
            success: function (data) {
                if (data.success === true) {
                    console.log(data.data)

                    $("#qv-image").append(renderImage(data.data.mainImage));
                    var listImage=data.data.productImageVMList;
                    console.log('item: ',listImage);

                    for (var i=0; i<listImage.length;i++) {
                        console.log('item: ',listImage[i]);
                        $("#qv-image").append(renderImage(listImage[i].link));
                    }

                }
                else {

                }
            }.bind(this),
            error: function (e) {
                console.log(e);
            }
        });
    });

    function renderImage(link) {
        var result=$("<div class='item-slick3' ></div>");
        result.attr('data-thumb',link);
        var div=$("<div class='wrap-pic-w pos-relative'></div>");
        var img=$("<img  alt='IMG-PRODUCT'>");
        img.attr('src',link);
        // console.log("img: ",img);
        var a=$("<a class='flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04'></a>")
        a.attr('href',link);
        var i=$("<i class='fa fa-expand'></i>");
        a.append(i);
        div.append(img);
        div.append(a);
        result.append(div);


        return result;
    }
});