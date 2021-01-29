<?php
require_once 'connect.php';
if (isset($_POST['tinh'])){
   $data=(connect()->query("SELECT * FROM district where _province_id='".$_POST['tinh']."' ORDER BY _name ASC")->fetch_all());
   $tabel= '<div class="ui form">
        <div class="field">
            <label>Huyện</label>
        </div>
        <div class="field">
            <select name="huyen" id="huyen">
                <option selected>chọn Huyện</option>';

	   foreach ($data as $item){
	   $tabel .='<option value='.$item[0].'>'.$item[1].'</option>';
	   }
	   $tabel.=' </select>
        </div>
    </div>';
	   echo $tabel;
}
?>
