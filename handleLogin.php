<?php
require_once 'connect.php';

$sql = connect()->query("SELECT name FROM users where username='" . $_POST['username'] . "'and password='" .
	md5($_POST['password'])
	. "'");
if ($sql->num_rows>0) {
	echo 'Tài Khoản Đăng Nhập Thành Công, Xin Chào '.$sql->fetch_assoc()['name'];
} else {
	echo 'Sai Tài Khoản Hoặc Mật Khẩu';
}