<?php
$mysqli = new mysqli('127.0.0.1', 'controlstock', 'controlstock2012*/', 'controlstock');
if ($mysqli->connect_error) {
	die('Error : (' . $mysqli->connect_errno . ') ' . $mysqli->connect_error);
}
