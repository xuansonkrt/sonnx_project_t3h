function myFunction(obj) {
    var productImageId = $(obj).attr("id");
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
                $("#input-title").val(data.data.title);
                $("#product-image-add").attr("src",data.data.link);
                $("#product-id").val(data.data.productId);
                $("#image-id").val(data.data.id);
                $("#image-link").val(data.data.link);

                // var button=$(" <button type=\"button\" class=\"btn btn-danger mb-10px\" id=\"btn-del-image\">Delete</button>");
                $("#btn-del-image").removeClass("hidden");
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

function custom_alert( message, title ) {
    if ( !title )
        title = 'Alert';

    if ( !message )
        message = 'No Message to Display.';

    $('<div></div>').html( message ).dialog({
        title: title,
        resizable: false,
        modal: true,
        buttons: {
            'Ok': function()  {
                $( this ).dialog( 'close' );
            }
        }
    });
}

function myFuncDel(obj) {
    console.log("del: ",obj);
}

function loadListImage(productId) {

}