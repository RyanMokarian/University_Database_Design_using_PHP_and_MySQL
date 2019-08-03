<form action="" method="get">
       <fieldset>
          <legend>Select a table</legend>
          <p>
            <label>Tables</label>
            <select id = "table_name" name='table_name'>
               <option value = "Student">Student</option>
               <option value = "Class">Class</option>
            </select>
          </p>
          <input type="submit" value="Submit">
       </fieldset>
</form>
<?php

print_r(getAllTables($conn));
