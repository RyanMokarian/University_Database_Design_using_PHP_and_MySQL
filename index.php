<?php
require 'db.php';

// genrate the input form:
$tableName = 'Class';

$sql = "SHOW COLUMNS FROM $tableName";
$res = $conn->query($sql);

$columns = [];
while($row = $res->fetch_assoc()){
    $columns[] = $row['Field'];
}

echo '<form action="" method="post">';
echo '<input type="hidden" name="__insert" value=""><br>';
foreach ($columns as $column) {
	echo $column;
	echo '</br>';
	echo '<input type="text" name="'. $column. '" value=""><br>';
}
echo '<input type="submit" value="Submit"></form>';  

//process insert by getting the input from $POST
if (!empty($_POST) && isset($_POST['__insert'])) {
	$implodedFieldsName = implode(",", $columns);
	$implodedValues = "'" . implode("','", $_POST) . "'";
	$sql_Insert = "INSERT INTO $tableName ($implodedFieldsName)
		VALUES ($implodedValues)";

	echo "<br />";
	if ($conn->query($sql_Insert) === TRUE) {
		echo "New record created successfully";
	} else {
		echo "Error: " . $sql_Insert . "<br>" . $conn->error;
	}
}

//show the whole table after insertion 
echo '<br />';
echo "<br>Table " . $tableName . " after insertion:";

$sql_Display = "SELECT * FROM $tableName";
$result = $conn->query($sql_Display);

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


//Process deletion by getting the input from $POST

// The primary key and record number for deletion are asked 
echo '<form action="" method="post">';
echo 'Primary_Key: <input type="text" name="name1"><br>';
echo 'Record_Number_To_Delete: <input type="text" name="name2"><br>';
echo '<input type="submit"></form>';
echo '<br />';
if (!empty($_POST) && !empty($_POST['name1']) && !empty($_POST['name2'])) {
	$sql_Delete = "DELETE FROM " . $tableName . " WHERE " . $_POST["name1"] . " = " . $_POST["name2"]; 
	if($conn->query($sql_Delete) === TRUE){ 
		echo "<br>Record was deleted successfully."; 
	} else{ 
			echo "Error: " . $sql_Delete . "<br>" . $conn->error;
	}
}

//show the whole table after deletion 
echo '<br />';
echo "<br>Table " . $tableName . " after deletion:";

$sql_Display = "SELECT * FROM $tableName";
$result = $conn->query($sql_Display);

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


mysqli_close($conn);
?>


