$(document).ready(function () {
    $("#input-nameProduct").autocomplete({
        open: function () {
            setTimeout(function () {
                $('.ui-autocomplete').css('z-index', 99999999999999);
            }, 0);
        },
        select: function (event, ui) {
            $("#input-productId").val(ui.item.code);
         //   $('#lbl').text(ui.item.label);
        },
        source: function (request, response) {
            //                console.log("call: " + request.term);
            $('#lbl').text('');
            $("#input-productId").val('');
            request = $.ajax({
                url: "/api/product/listSearch",
                timeout: 6000,
                data: "{ 'productName': '" + request.term + "' }",
                dataType: "json",
               type: "POST",
                contentType: "application/json; charset=utf-8",
                dataFilter: function (data) { return data; },
                success: function (data) {
                    response($.map(data.data, function (item) {
                        return {
                            label: item.id + " - " + item.name ,
                            value: item.name,
                            name: item.name,
                            code: item.id
                        }
                    }))
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    //alert(textStatus);
                    if (textStatus === 'timeout') {
                        request.abort();
                        alert('Không tìm thấy sản phẩm');

                    }
                }
            });
        },
        minLength: 1
    });
});