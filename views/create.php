<?php
echo "<table>";
echo '<tr>';
echo '<form action="" method="post">';
echo '<input type="hidden" name="__insert" value=""><br>';
foreach ($columns as $column) {
	//echo $column;
	echo "<td>";
	echo '<input type="text" name="'. $column. '" value="">';
	echo "</td>";
}
echo '<input type="submit" value="Submit"></form>';
echo '</tr>';
echo "</table>";
$postData = $_POST;
//process insert by getting the input from $POST
if (!empty($_POST) && isset($_POST['__insert'])) {
	unset($postData['__insert']);
	echo insertIntoTable($conn, $tableName, $columns, $postData);
}
