<?php

$servername = "qqc5531.encs.concordia.ca";
$username = "qqc55311";
$password = "p1usp1us";
$dbname = "qqc55311";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
