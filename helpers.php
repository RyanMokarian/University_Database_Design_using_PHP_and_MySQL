<?php

function getConnection($servername, $username, $password, $dbname)
{

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    return $conn;
}

function getAllTables($conn)
{
    $sql = "SHOW TABLES";
    $res = $conn->query($sql);

    $r = [];
    while ($row = $res->fetch_array()) {
        $r[] = $row[0];
    }
    return $r;
}

function getColumns($conn, $tableName)
{
    $sql = "SHOW COLUMNS FROM $tableName";
    $res = $conn->query($sql);

    $columns = [];
    while ($row = $res->fetch_assoc()) {
        $columns[] = $row['Field'];
    }
    return $columns;
}

function insertIntoTable($conn, $tableName, $columns, $postData)
{
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

function getAllRecords($conn, $tableName)
{
    $sql_Display = "SELECT * FROM $tableName";
    return $conn->query($sql_Display);
}

function deleteFromTable($conn, $tableName, $pkName, $id)
{
    $sql_Delete = "DELETE FROM " . $tableName . " WHERE " . $pkName . " = " . $id;
    if ($conn->query($sql_Delete) === TRUE) {
        return "Record was deleted successfully.";
    } else {
        return "Error: " . $sql_Delete . $conn->error;
    }
}

function getPrimaryKeyName($conn, $tableName)
{
    $sql = "show keys from $tableName where key_name = 'PRIMARY'";
    $res = $conn->query($sql);
    while ($row = $res->fetch_assoc()) {
        return $row['Column_name'];
    }

    return '';
}

function updateTable($conn, $tableName, $postData, $pkName, $pkValue)
{
    $sql_Update = "UPDATE $tableName SET ";

    $setPart = '';
    foreach ($postData as $k => $v) {
        $setPart = $setPart . $k . ' = "' . $v . '", ';
    }

    $setPart = rtrim($setPart, ', ');

    $wherPart = " WHERE $pkName = $pkValue";

    $sql_Update = $sql_Update . $setPart . $wherPart;

    if ($conn->query($sql_Update) === TRUE) {
        return "Record was updated successfully.";
    } else {
        return "Error: " . $sql_Update . $conn->error;
    }
}

function isStudentCompletedPrereq($conn, $courseId, $studentId) 
{
    $passedGrade = 1;
    $sql = "
        SELECT prereqId FROM Prerequisite
        WHERE  courseId = {$courseId}
    ";

    $res = $conn->query($sql);

    var_dump($res);

    $prerequisites = [];
    while ($row = $res->fetch_assoc()) {
        $prerequisites[] = $row['prereqId'];
    }

    var_dump($prerequisites);

    foreach ($prerequisites as $prerequisite) {
        $sql = "
            SELECT score FROM StudentRegisterSection
            courseId = {$prerequisite}
            AND pId = {$studentId}
        ";

        $res = $conn->query($sql);
        var_dump($res);
        if ($res->num_rows == 0) {
            return false;
        }

        while ($row = $res->fetch_assoc()) {
            var_dump($row);
            $r = $row['score'];
            var_dump($r);
            if ($r < $passedGrade) {
                return false;
            }
        }
    }

    return true;
}
