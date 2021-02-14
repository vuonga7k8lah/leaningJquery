<?php
if(isset($_POST)){
	$status=mail($_POST['email'], $_POST['title'], $_POST['content']);
	if ($status){
		echo 'mail gui ok';
	}else{
		echo 'mail k gui dc ';
	}
}