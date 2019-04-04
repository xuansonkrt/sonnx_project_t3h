$(document).ready(function () {
    $(".js-show-modal1").on("click",function () {
        var productId = $(this).data("product");
        console.log("product: ",productId);
    });
});