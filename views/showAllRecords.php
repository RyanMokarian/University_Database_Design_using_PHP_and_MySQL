<?php

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

