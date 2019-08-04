<!DOCTYPE html>
<html>
<head>
<title>qqc5531 - main project</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>

<body>
<?php
include 'db.php';
require 'helpers.php';

$conn = getConnection($servername, $username, $password, $dbname);
// genrate the input form:
$tableName = isset($_GET['table_name']) ? $_GET['table_name'] : '';

if ($tableName) {
    $pk = getPrimaryKeyName($conn, $tableName);
}

include __DIR__ . '/views/dropBox.php';

if (empty($tableName)) {
    return;
}

$columns = getColumns($conn, $tableName);

include __DIR__ . '/views/showAllRecords.php';
?>
<script>
    var studentLevel;
    var studentCredits;
    $('.Student_level').on('input', function() {
        console.log('changed');
        studentLevel = $(this).val().trim().toLowerCase();
        studentCredits = $(this).closest('td').next('td').find('.Student_credits').val();
        console.log(studentLevel);
        console.log(studentCredits);
        if (!studentCredits) {
            if (studentLevel === 'undergraduate') {
                $(this).closest('td').next('td').find('.Student_credits').val(90);
            } else if (studentLevel === 'graduate') {
                $(this).closest('td').next('td').find('.Student_credits').val(44);
            }
        }
    });

    $(document).ready(function(){
        console.log('jquery loaded');
    });
</script>
</body>
</html>