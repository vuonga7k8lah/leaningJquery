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
    data: { huyen: huyen },
    success: function (data) {
      if (data == "false") {
        alert("");
      } else {
        $("#xa").html(data);
      }
    },
  });
});
$(document).ready(function(){
  $('#uploadForm').ajaxForm({
    target:'#imagesPreview',
    beforeSubmit:function(){
      $('#uploadStatus').html('<img src="uploading.gif"/>');
    },
    success:function(){
      $('#images').val('');
      $('#uploadStatus').html('');
    },
    error:function(){
      $('#uploadStatus').html('Images upload failed, please try again.');
    }
  });
});
