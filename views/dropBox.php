<?php
$tables = getAllTables($conn);
?>

<form action="" method="get">
       <fieldset>
          <legend>Select a table</legend>
          <p>
            <label>Tables</label>
            <select id = "table_name" name='table_name'>
               <?php
                  foreach ($tables as $table) {
                     echo "<option value = \"{$table}\">{$table}</option>";
                  }
               ?>
               </select>
          </p>
          <input type="submit" value="Submit">
       </fieldset>
</form>
