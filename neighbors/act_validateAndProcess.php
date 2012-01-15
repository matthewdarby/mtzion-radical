<?php
$isError = false;

if ($_POST['ContactName']) {
	$ContactName = $_POST['ContactName'];
} else {
	$errorMSGContactName = 'Please provide a Name.<br />';
	$isError = true;
}	
$EmailAddy = $_POST['EmailAddy'];
$PhoneNumber = $_POST['PhoneNumber'];
$HomeTown = $_POST['HomeTown'];
$formid = $_POST['formid'];

if (!validEmail($EmailAddy) && $_POST['EmailAddy']) {
	$errorMSGEmailAddy = 'Please provide a valide email address.<br />';
	$isError = true;
}

if (!$isError) { 
 mysql_insert('neighborcontacts', array(
     'name' => $ContactName,
     'email' => $EmailAddy,
     'phone' => $PhoneNumber,
     'hometown' => $HomeTown,
     'formid' => $formid,
     'updated' => date ("Y-m-d H:m:s")
 ));

}

function mysql_insert($table, $inserts) {
	$values = array_map('mysql_real_escape_string', array_values($inserts));
	$keys = array_keys($inserts);
	 
	return mysql_query('INSERT INTO `'.$table.'` (`'.implode('`,`', $keys).'`) VALUES (\''.implode('\',\'', $values).'\')');
}
/**
Validate an email address.
Provide email address (raw input)
Returns true if the email address has the email
address format and the domain exists.
*/
function validEmail($email)
{
	$isValid = true;
	$atIndex = strrpos($email, "@");
	if (is_bool($atIndex) && !$atIndex)
	{
		$isValid = false;
	}
	else
	{
		$domain = substr($email, $atIndex+1);
		$local = substr($email, 0, $atIndex);
		$localLen = strlen($local);
		$domainLen = strlen($domain);
		if ($localLen < 1 || $localLen > 64)
		{
			// local part length exceeded
			$isValid = false;
		}
		else if ($domainLen < 1 || $domainLen > 255)
		{
			// domain part length exceeded
			$isValid = false;
		}
		else if ($local[0] == '.' || $local[$localLen-1] == '.')
		{
			// local part starts or ends with '.'
			$isValid = false;
		}
		else if (preg_match('/\\.\\./', $local))
		{
			// local part has two consecutive dots
			$isValid = false;
		}
		else if (!preg_match('/^[A-Za-z0-9\\-\\.]+$/', $domain))
		{
			// character not valid in domain part
			$isValid = false;
		}
		else if (preg_match('/\\.\\./', $domain))
		{
			// domain part has two consecutive dots
			$isValid = false;
		}
		else if
		(!preg_match('/^(\\\\.|[A-Za-z0-9!#%&`_=\\/$\'*+?^{}|~.-])+$/',
		str_replace("\\\\","",$local)))
		{
			// character not valid in local part unless
			// local part is quoted
			if (!preg_match('/^"(\\\\"|[^"])+"$/',
			str_replace("\\\\","",$local)))
			{
				$isValid = false;
			}
		}
		/*if ($isValid && !(checkdnsrr($domain,"MX") ||
		↪checkdnsrr($domain,"A")))
		{
		// domain not found in DNS
			$isValid = false;
		}*/
		}
		return $isValid;
	}
?>