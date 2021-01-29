<div>
    <form method="post" id="uploadForm" enctype="multipart/form-data" >
        <input type="file" name="images[]" id="images" multiple >
        <div></div>
        <input type="submit" name=" " value="UPLOAD" style="margin-top: 10px"/>
    </form>

    <!-- display upload status -->
    <div id="uploadStatus"></div>

    <!-- gallery view of uploaded images -->
    <div class="gallery" id="imagesPreview">

    </div>
</div>