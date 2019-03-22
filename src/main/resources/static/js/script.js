function myFunction(obj) {
    alert("add");
    var productImageId = $(this).attr("id");
    alert("ahihi");
    $.ajax({
        url:"/ProductImage/Detail/"+productImageId,
        data: {
            productImageId:productImageId
        },
        type:"POST",
        dataType:"json",
        contentType: "application/json",
        success: function (data) {
            if (data.success === true) {

                console.log("detail : ", data.data );
            }
            else {
                alert(data.message);
            }
        }.bind(this),
        error: function (e) {
            console.log(e);
        }
    });
}