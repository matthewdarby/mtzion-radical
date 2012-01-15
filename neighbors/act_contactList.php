
<table cellpadding="0" cellspacing="0" width="500px" summary="List of people who have signed up for Project: Serves Thy Neighbor">

<?php
$sql_check = mysql_query("SELECT name, hometown FROM neighborcontacts WHERE formid = 2 order by id desc");

while ($row = mysql_fetch_assoc($sql_check)) {
	echo '<tr class="comment">';
	echo '<td style="padding:14px;" class="comment_box" align="left"><strong>' . $row["name"] . '</strong>';
	if (strlen($row["hometown"]) > 0)
		echo ' from ' . $row['hometown'];
	echo '</td></tr>';
}
?>
</table>