$("#tinh").on("change", function () {
  let tinh = $("#tinh").val();
  $.ajax({
    type: "POST", //kiểu post
    url: "handle.php", //gửi dữ liệu sang trang submit.php
    data: { tinh: tinh },
    success: function (data) {
      if (data == "false") {
        alert("");
      } else {
        $("#huyen").html(data);
      }
    },
  });
});
$("#huyen").on("change", function () {
  let huyen = $("select#huyen").val();
  $.ajax({
    type: "POST", //kiểu post
    url: "handleHuyen.php", //gửi dữ liệu sang trang submit.php
    data: {huyen: huyen},
    success: function (data) {
      if (data == "false") {
        alert("");
      } else {
        $("#xa").html(data);
      }
    },
  });
});
$("#gui").click(function (event) {
  event.preventDefault();
  let title = $('input[name="title"]').val();
  let email = $('input[name="email"]').val();
  let content = $('textarea[name="content"]').val();
  $.ajax({
    type: "POST", //kiểu post
    url: "handleMail.php",
    data: {title: title, email: email, content: content},
    success: function (data) {
      alert(data);
    },
  });
});
$(document).ready(function(){

  $('#submit').click(function(){

    var form_data = new FormData();

    // Read selected files
    var totalfiles = document.getElementById('files').files.length;
    for (var index = 0; index < totalfiles; index++) {
      form_data.append("files[]", document.getElementById('files').files[index]);
    }
  console.log(form_data)
    // AJAX request
    $.ajax({
      url: 'upload.php',
      type: 'post',
      data: form_data,
      dataType: 'json',
      contentType: false,
      processData: false,
      success: function (response) {

        for(var index = 0; index < response.length; index++) {
          var src = response[index];

          // Add img element in <div id='preview'>
          $('#preview').append('<img src="' + src + '" width="200px;" height="200px">');
        }

      }
    });

  });

});
$("#login").click(function (event) {
  event.preventDefault();
  let username = $('input[name="username"]').val();
  let password = $('input[name="password"]').val();
  $.ajax({
    type: "POST", //kiểu post
    url: "handleLogin.php",
    data: {username: username, password: password},
    success: function (data) {
      alert(data);
    },
  });
});
$("#register").click(function (event) {
  event.preventDefault();
  let username1 = $('#username1').val();
  let name = $('#name').val();
  let password1 = $('#password1').val();
  $.ajax({
    type: "POST", //kiểu post
    url: "handleRegister.php",
    data: {username1: username1, password1: password1, name: name},
    success: function (data) {
      alert(data);
    },
  });
});