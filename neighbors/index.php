<?php 
	$condition = 0;
	if(isset($_POST['gutcheck']) && $_POST['gutcheck'] == 1) {
		$condition = 1;
		include 'act_dbConnection.php';
		include 'act_validateAndProcess.php';
		
		if(isSet($isError) && $isError) {
			$condition = 2;
			include 'dsp_form.php';
		} else {
			$condition = 3;
			header("Location: /neighbors#contacts");
		}	
	}
	elseif(isset($_GET['signup'])){
		$condition = 4;
		include 'dsp_form.php';
	}
	else {
		$condition = 5;
		include 'act_dbConnection.php';
		include_once 'dsp_info.php';
	}
?>