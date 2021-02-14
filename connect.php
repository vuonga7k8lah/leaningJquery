<?php
function connect()
{
	$connect= mysqli_connect('localhost', 'root', '', 'hcvn');
	mysqli_set_charset($connect,'UTF8');
	return $connect;
}