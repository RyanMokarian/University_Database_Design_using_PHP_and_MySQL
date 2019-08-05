<?php
include 'db.php';

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($fh = fopen('theBigInserter.txt', 'r')) {
    while (!feof($fh)) {
        $line = fgets($fh);
        echo $line;
        $sql_Insert = $line;
    
        if ($conn->query($sql_Insert) === TRUE) {
            return "New record created successfully";
        } else {
            return "Error: " . $sql_Insert . "<br>" . $conn->error;
        }
    }
    fclose($fh);
}
