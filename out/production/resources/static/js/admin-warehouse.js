$(document).ready(function () {
    $("#input-nameProduct").autocomplete({
        open: function () {
            setTimeout(function () {
                $('.ui-autocomplete').css('z-index', 99999999999999);
            }, 0);
        },
        select: function (event, ui) {
            $("#input-productId").val(ui.item.id);
         //   $('#lbl').text(ui.item.label);
            alert($("#input-productId").val());
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

                    console.log("demo: ",   data);
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


    $(".addProductEntity").click(function () {
        var pdInfo = $(this).data("product");
        $.ajax({
            url:"/api/product/AmountProductEntity/"+pdInfo,
            dataType:'json',
            type:'POST',
            data: {
                productId: pdInfo
            },
            success: function (data) {
                var list=data.data;
                console.log("data ahihi: ",list);
                for(var i=0; i<list.length;i++){
                    var row=$("<tr style=\"height: 20px\"></tr>")
                    var td1=$("<td colspan=\"1\">"+(i+1)+"</td>");
                    var td2=$("<td colspan=\"3\">"+list[i].sizeName+"</td>");
                    var td3=$("<td colspan=\"3\">"+list[i].colorName+"</td>");
                    var td4=$("<td colspan=\"5\">"+list[i].amount+"</td>");
                    row.append(td1);
                    row.append(td2);
                    row.append(td3);
                    row.append(td4);

                    $("#productEntity").append(row);
                }


            },
            error: function(xhr, status, err)  {
                console.log(err.toString());
            }
        })
    });
});