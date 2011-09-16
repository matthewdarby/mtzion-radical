 <?php
$dbHost = 'localhost'; // usually localhost
$dbUsername = 'rad';
$dbPassword = 'rad';
$dbDatabase = 'mtzionscrap';
$db = mysql_connect($dbHost, $dbUsername, $dbPassword) or die ("Unable to connect to Database Server.");
mysql_select_db ($dbDatabase, $db) or die ("Could not select database.");
?>