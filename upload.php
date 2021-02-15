<?php

//// Count total files
//$countfiles = count($_FILES['files']['name']);
//
//// Upload directory
//$upload_location = "uploads/";
//
//// To store uploaded files path
//$files_arr = array();
//
//// Loop all files
//for($index = 0;$index < $countfiles;$index++){
//
//	if(isset($_FILES['files']['name'][$index]) && $_FILES['files']['name'][$index] != ''){
//		// File name
//		$filename = $_FILES['files']['name'][$index];
//
//		// Get extension
//		$ext = strtolower(pathinfo($filename, PATHINFO_EXTENSION));
//
//		// Valid image extension
//		$valid_ext = ["png", "jpeg", "jpg", "gif"];
//
//		// Check extension
//		if (in_array($ext, $valid_ext)) {
//
//			// File path
//			$path = $upload_location . $filename;
//
//			// Upload file
//			if (move_uploaded_file($_FILES['files']['tmp_name'][$index], $path)) {
//				$files_arr[] = $path;
//			}
//			echo json_encode(['status' => true, 'data' => json_encode($files_arr)]);
//		} else {
//			 echo json_encode(['status' => false, 'data' => 'file Không Đúng Định Dạng']);
//		}
//	}
//}
$data=$_FILES['files'];
$allowed = array('image/jpeg', 'image/jpg', 'image/png', 'images/x-png','image/gif');

// Kiem tra xem file upload co nam trong dinh dang cho phep
for ($i = 0; $i < count($data['name']); $i++) {
	if (in_array(strtolower($data['type'][$i]), $allowed)) {
		// Neu co trong dinh dang cho phep, tach lay phan mo rong
		$ext = substr(strrchr($data['name'][$i], '.'), 1);
		$renamed = uniqid(rand(), true) . '.' . "$ext";
		$NameIMG[] = $renamed;
		if (!move_uploaded_file($data['tmp_name'][$i], "uploads/" . $renamed)) {
			$errors[] = "<p class='error'>Server problem</p>";
		}
		// Xoa file da duoc upload va ton tai trong thu muc tam
		if (isset($data['tmp_name'][$i]) && is_file($data['tmp_name'][$i]) && file_exists($data['tmp_name'][$i])) {
			unlink($data['tmp_name'][$i]);
		}
	}else{
		$NameIMG='file Không Đúng Định Dạng';
	}
}
if(is_array($NameIMG)){
	echo json_encode(['status' => true, 'data' => json_encode($NameIMG)]);
}else{
	echo json_encode(['status' => false, 'data' => $NameIMG]);
}

