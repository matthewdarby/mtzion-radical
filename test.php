<?php  
/* Connect to an ODBC database using driver invocation */  
#$dsn = 'mysql:dbname=mtzionmb_radical;host=localhost:/tmp/mysql5.sock';  
$dsn = 'mysql:unix_socket=/tmp/mysql5.sock; dbname=mtzionmb_radical';
$user = 'cmsHome';  
$password = 'mySite';  
  
try {  
  $dbh = new PDO($dsn, $user, $password);  
} catch (PDOException $e) {  
  echo 'Connection failed: ' . $e->getMessage();  
}  
?>  