<?php
require_once 'connect.php';
if (isset($_POST['huyen'])) {
	$data = (connect()->query("SELECT * FROM ward where _district_id='" . $_POST['huyen'] . "'")->fetch_all());
	$tabel = '<table class="styled-table">
    <thead>
        <tr>
        	<th>stt</th>
            <th>Tên Đơn Vị</th>
            <th>Đơn Vị Cấp</th>
        </tr>
    </thead>
    <tbody>';
	$i = 1;
	foreach ($data as $item) {
		$tabel .= '<tr>
			<td>' . $i . '</td>
            <td>' . $item[1] . '</td>
            <td>' . $item[2] . '</td>
        </tr>';
		$i++;
	}
	$tabel .= ' </tbody>
</table>';
	echo $tabel;
}