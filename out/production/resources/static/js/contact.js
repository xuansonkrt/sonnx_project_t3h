$(document).ready(function () {
   $("#submit").on("click", function () {
       var data={};
       data.email=$("#email").val();
       data.title=$("#title").val();
       data.content=$("#content").text();
        console.log("data: ", data);
       $.ajax({
           url:"/api/contact/add",
           data: JSON.stringify(data),
           type:"POST",
           dataType:"json",
           contentType: "application/json",
           success: function (data) {
               if (data.success === true) {
                   swal({
                           title: 'Thành công',
                           text:  data.data.message,
                           type:'success' ,
                           timer:1500
                       }
                   ).then(function() {
                       location.replace("/");
                   });
               } else{
                   swal(
                       'Xảy ra lỗi',
                       data.data.message,
                       'error'
                   );
               }
           }.bind(this),
           error: function (e) {
               console.log(e);
           }
       });
   }) ;
});