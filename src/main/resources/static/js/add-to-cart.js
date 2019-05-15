$(document).ready(function () {
    var state={
        amount:"",
        productEntityId:""
    }

    $("select.selectColor").change(function(){
        var selectedCountry = $(this).children("option:selected").val();
        alert("You have selected the country - " + selectedCountry);
    });

    // $("select.selectColor").on("change",function () {
    //     alert("a");
    //     var selectedCountry = $(this).children("option:selected").val();
    //     // if($('.selectSize :selected').val()=="0"){
    //     //     return;
    //     // }
    //     console.log("color: ",selectedCountry);
    //
    //     getAmount();
    //
    //
    // });


    $("#selectSize").on("change",function () {
        console.log("size");
        if($('#selectColor :selected').val()=="0"){
            return;
        }
        getAmount();
    });
    $("#selectColor").on("change",function () {
        console.log("color");
        if($('#selectSize :selected').val()=="0"){
            return;
        }
        getAmount();
    });


    function changeSize(that) {

        alert("size");
       // var id= $(that).val();
        //alert(id);
        if($('#selectColor :selected').val()=="0"){
            return;
        }
        getAmount();
    };
    function getAmount() {
        console.log(" get vm: ",vm.productEntityVMList);
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

    };


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




    //new



})