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


function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires="+d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
}

var delete_cookie = function(name) {
    document.cookie = name + '=;expires=Thu, 01 Jan 1970 00:00:01 GMT;';
};

function getCookie(name) {
    var nameEQ = name + "=";
    var ca = document.cookie.split(';');
    for(var i=0;i < ca.length;i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1,c.length);
        if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
    }
    return null;
}

function checkCookie() {
    var user = getCookie("username");
    if (user != "") {
        alert("Welcome again " + user);
    } else {
        user = prompt("Please enter your name:", "");
        if (user != "" && user != null) {
            setCookie("username", user, 365);
        }
    }
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

function TextAbstract(text, length) {
    if (text == null) {
        return "";
    }
    if (text.length <= length) {
        return text;
    }
    text = text.substring(0, length);
   // last = text.lastIndexOf(" ");
   // text = text.substring(0, last);
    return text + "...";
}

var maxlengthwanted=20;

$('.MySender').each(function(){
    if ($('.MySender').text().length > maxlengthwanted)
        $(this).text(TextAbstract($(this).text(),maxlengthwanted));
});

$('.MyContent').each(function(){
    if ($('.MySender').text().length > 100)
        $(this).text(TextAbstract($(this).text(),100));
});

function NewDate(text){
    var date = new Date(text);
    return date.getDate()+'/'+(date.getMonth()+1)+'/'+date.getFullYear();
}
$('.MyDate').each(function(){
    if ($('.MyDate').text().length > 10)
        $(this).text(NewDate($(this).text()));
});
$('.changeRole').on('change',function () {
    var id = $(this).data('id');
    var role = parseInt($(this).val());
    var data = {};
    data.id = $(this).data('id');
    data.roleId = $(this).val();
    console.log("data: ", data);
    $.ajax({
        url: "/api/user/changeRole",
        data: JSON.stringify(data),
        type: "POST",
        crossDomain: true,
        contentType: "application/json",
        dataType: 'json',
        success: function (data) {
            if (data.success === true) {
                swal({
                    title: 'Thành công',
                    text: data.message,
                    type: 'success',
                    timer: 1500
                });
            }
            else {
                swal({
                    title: 'Thất bại',
                    text: data.message,
                    type: 'error',
                    timer: 1500
                }).then(function () {
                    window.location.reload();
                });
            }
        }.bind(this),
        error: function (e) {
            console.log(e);
        }
    });
});

$('.changeStatus').on('change',function () {
    var id= $(this).data('id');
    var status = parseInt($(this).val());
    var data={};
    data.id=$(this).data('id');
    data.status=$(this).val();
    console.log("data: ",data);
    $.ajax({
        url:"/order/changeStatus",
        data: JSON.stringify(data),
        type:"POST",
        crossDomain: true,
        contentType: "application/json",
        dataType: 'json',
        success: function (data) {
            if (data.success === true) {
                swal({
                    title: 'Thành công',
                    text: data.message,
                    type: 'success',
                    timer: 1500
                });
            }
            else {
                swal({
                    title: 'Thất bại',
                    text: data.message,
                    type: 'error',
                    timer: 1500
                }).then(function() {
                    window.location.reload();
                });
            }
        }.bind(this),
        error: function (e) {
            console.log(e);
        }
    });

});

$('.delUser').on('click', function(){
    var id=$(this).data('id');
    var data = {};
    data.id = id;
    console.log("data: ", data);
    swal({
        title: 'Xóa tài khoản?',
        text: "Bạn sẽ không có khả năng khôi phục!",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Xóa',
        cancelButtonText:'Hủy'
    }).then(function(result)  {
        if (result.value) {


            NProgress.start();
            var linkGet = "/api/user/delete/"+id;
            axios.get(linkGet).then(function(res){
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
                        'Thất bại',
                        res.data.message,
                        'error'
                    );
                }
            }, function(err){
                NProgress.done();
                swal(
                    'Thất bại',
                    'Xảy ra lỗi',
                    'error'
                );
            });
        }
    });

});

