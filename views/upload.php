<div>
    <form method="post" id="uploadForm" enctype="multipart/form-data" onsubmit="return false">
        <input type="file" name="images[]" id="images" multiple >
        <div></div>
        <button onclick="upload()">Gửi</button>
    </form>

    <!-- display upload status -->
    <div id="uploadStatus"></div>

    <!-- gallery view of uploaded images -->
    <div class="gallery" id="imagesPreview">

    </div>
</div>