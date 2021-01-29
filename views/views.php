<div class="ui form">
    <div class="field">
        <label>Tỉnh</label>
    </div>
    <div class="field">
        <select name="tinh" id="tinh">
            <option selected>chọn tỉnh</option>
			<?php foreach ($data as $key => $val): ?>
                <option value="<?=$val[0]?>"><?=$val[1]?></option>
			<?php endforeach; ?>
        </select>
    </div>
</div>
<div id="huyen">

</div>
<div id="xa">

