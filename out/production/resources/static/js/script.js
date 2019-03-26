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
    $.ajax({
        url:"/ProductImage/ListImage/"+productId,
        data: {
            productId:productId
        },
        type:"POST",
        dataType:"json",
        contentType: "application/json",
        success: function (data) {
            if (data.success === true) {
                var list=data.data;
                listImage=data.data;
                var length= list.length;
                for(var i=0; i<length; i++){
                    var div= $("<div></div>");
                    div.addClass("col-sm-3 mx-15px edit-image");
                    div.attr("id",list[i].id);
                    // var span=$("<span>&times;</span>");
                    // span.addClass("closebtn");
                    // span.attr("id",list[i].id);
                    // span.attr("onclick","myFuncDel(this)");

                    var image=$("<img>")
                    image.attr("src",list[i].link);
                    image.attr("width","100%");
                    image.attr("id",list[i].id);
                    image.attr("onclick","myFunction(this)");
                    image.attr("class","image-product-2");
                    image.addClass("mx-auto");
                    image.attr("height","100px");
                    image.attr("width","auto");

                    // div.append(span);
                    div.append(image);
                    $("#block-image").append(div);

                    // log.show("Cập nhật thành công", true);

                }
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

// $(function() {
//     var availableTutorials = [
//         "ActionScript",
//         "Boostrap",
//         "Candsomething",
//         "ActionScript",
//         "Boostrap",
//         "Carwith other car",
//         "dwithsometext",
//     ];
//     $( "#input-nameProduct" ).autocomplete({
//         source: availableTutorials
//     });
// });