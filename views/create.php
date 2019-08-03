<?php
echo '<form action="" method="post">';
echo '<input type="hidden" name="__insert" value=""><br>';
foreach ($columns as $column) {
	echo $column;
	echo '</br>';
	echo '<input type="text" name="'. $column. '" value=""><br>';
}
echo '<input type="submit" value="Submit"></form>';  
