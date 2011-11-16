 <?php
$dbHost = 'localhost'; // usually localhost
$dbUsername = 'rad';
$dbPassword = 'rad';
$dbDatabase = 'mtzionscrap';
$db = mysql_connect($dbHost, $dbUsername, $dbPassword) or die ("Unable to connect to Database Server.");
mysql_select_db ($dbDatabase, $db) or die ("Could not select database.");

$sql_check = mysql_query("SELECT * FROM messages order by msg_id desc");


if(isSet($_POST['content']))

{
$content=$_POST['content'];

mysql_query("insert into messages(msg,updated) values ('$content', NOW())");


}

$sql_in= mysql_query("SELECT msg FROM messages order by msg_id desc");
$r=mysql_fetch_array($sql_in);
?>

<table cellpadding="0" cellspacing="0" width="500px">

<?php

if (isSet($_POST['content'])) {
	echo '<tr class="comment">';
	echo '<td style="padding:14px;" class="comment_box" align="left"><b>' . $r["msg"] . '</b></td>';
	echo '</tr>';		
}


while ($row =mysql_fetch_assoc($sql_check)) {
	echo '<tr class="comment">';
	echo '<td style="padding:14px;" class="comment_box" align="left"><b>' . $row["msg"] . '</b></td>';
	echo '</tr>';
}
?>
</table>