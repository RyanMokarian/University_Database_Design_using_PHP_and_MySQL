<?php
require 'helpers.php';

$conn = getConnection();
// genrate the input form:
$tableName = 'Class';

$columns = getColumns($conn, $tableName);

include __DIR__ . '/views/create.php';

include __DIR__ . '/views/delete.php';

include __DIR__ . '/views/showAllRecords.php';
