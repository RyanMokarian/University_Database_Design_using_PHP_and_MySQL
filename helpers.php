<?php

function getConnection($servername, $username, $password, $dbname) {
    
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    
    return $conn;
}

function getAllTables($conn) {
    $sql = "SHOW TABLES";
    $res = $conn->query($sql);
    
    $r = [];
    while($row = $res->fetch_array()){
        $r[] = $row[0];
    }
    return $r;    
}

function getColumns($conn, $tableName) {
    $sql = "SHOW COLUMNS FROM $tableName";
    $res = $conn->query($sql);
    
    $columns = [];
    while($row = $res->fetch_assoc()){
        $columns[] = $row['Field'];
    }
    return $columns;    
}

function insertIntoTable($conn, $tableName, $columns, $postData) {
    $implodedFieldsName = implode(",", $columns);
	$implodedValues = "'" . implode("','", $postData) . "'";
	$sql_Insert = "INSERT INTO $tableName ($implodedFieldsName)
		VALUES ($implodedValues)";

	if ($conn->query($sql_Insert) === TRUE) {
		return "New record created successfully";
	} else {
		return "Error: " . $sql_Insert . "<br>" . $conn->error;
	}
}

function getAllRecords($conn, $tableName) {
    $sql_Display = "SELECT * FROM $tableName";
    return $conn->query($sql_Display);
}

function deleteFromTable($conn, $tableName, $pkName, $id) {
    $sql_Delete = "DELETE FROM " . $tableName . " WHERE " . $pkName . " = " . $id; 
	if($conn->query($sql_Delete) === TRUE){ 
		return "Record was deleted successfully."; 
	} else{ 
	    return "Error: " . $sql_Delete . $conn->error;
	}
}

function getPrimaryKeyName($conn, $tableName) {
    $sql = "show keys from $tableName where key_name = 'PRIMARY'";
    $res = $conn->query($sql);
    while ($row = $res->fetch_assoc()) {
        return $row['Column_name'];
    }

    return '';
}
