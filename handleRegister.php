<?php
require_once 'connect.php';

if ((connect()->query("SELECT id FROM users where username='".$_POST['username1']."'"))->num_rows>0){
	echo 'username Đã Tồn Tại';
}else{
	$sql="INSERT INTO `users`(`id`, `username`, `password`, `name`) VALUES (null,'".$_POST['username1']."','".md5($_POST['password1'])."','".$_POST['name']."')";
	connect()->query($sql);
	echo 'Tài Khoàn Tạo Thành Công';
}