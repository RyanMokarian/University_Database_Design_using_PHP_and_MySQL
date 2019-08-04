<?php
$postData = $_POST;
//process insert by getting the input from $POST
if (!empty($_POST) && isset($_POST['__insert'])) {
	unset($postData['__insert']);
	echo insertIntoTable($conn, $tableName, $columns, $postData);
}
