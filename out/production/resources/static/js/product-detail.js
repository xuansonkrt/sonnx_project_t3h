$(document).ready(function () {
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
            console.log("item.colorId: ",listEntity[i].colorId);

            if(listEntity[i].sizeId==size && listEntity[i].colorId==color){
                amount=listEntity[i].amount;
                break;
            }
        }
        $("#warehouse").text("(Còn "+amount+" sản phẩm)");

    }
});