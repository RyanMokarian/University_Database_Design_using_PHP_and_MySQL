<?php
require 'helpers.php';

$conn = getConnection();
// genrate the input form:
$tableName = 'Class';

$columns = getColumns($conn, $tableName);

include 'views/create.php';

$postData = $_POST;
//process insert by getting the input from $POST
if (!empty($_POST) && isset($_POST['__insert'])) {
	unset($postData['__insert']);
	echo insertIntoTable($conn, $tableName, $columns, $postData);
}

//Process deletion by getting the input from $POST
// The primary key and record number for deletion are asked 
echo '<form action="" method="post">';
echo 'Primary_Key: <input type="text" name="name1"><br>';
echo 'Record_Number_To_Delete: <input type="text" name="name2"><br>';
echo '<input type="submit"></form>';
echo '<br />';
if (!empty($_POST) && !empty($_POST['name1']) && !empty($_POST['name2'])) {
	echo deleteFromTable($conn, $tableName, $_POST['name1'], $_POST['name2']);
}

//show the whole table after deletion 
echo '<br />';
echo "<br>Table " . $tableName . " after deletion:";

$result = getAllRecords($conn, $tableName);

if ($result->num_rows > 0) {
    // output data of each row
	echo "<table>";
	echo '<tr>';
	foreach ($columns as $column) {
		echo "<th>$column</th>";
	}
	echo '</tr>';
    while($row = $result->fetch_assoc()) {
		echo '<tr>';
		foreach ($row as $k => $v) {
			echo "<td>";
			echo $v;
			echo "</td>";
		}
		echo '</tr>';
    }
	echo "</table>";

} else {
    echo "0 results";
}

