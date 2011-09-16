<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Insert Record with jQuery and Ajax</title>
 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.0/jquery.min.js"></script>
 <script type="text/javascript">
$(function() {

$(".comment_button").click(function() {

var element = $(this);
   
    var test = $("#content").val();
	
    var dataString = 'content='+ test;
	
	
	
	if(test=='')
	{
	alert("Please Enter Some Text");
	
	}
	else
	{
	$("#flash").show();
	$("#flash").fadeIn(400).html('<img src="http://tiggin.com/ajax-loader.gif" align="absmiddle">&nbsp;<span class="loading">Loading Comment...</span>');
	
		
		$.ajax({
		type: "POST",
  url: "test-process.php",
   data: dataString,
  cache: false,
  success: function(html){
  
  
  
    $("#display").after(html);

 document.getElementById('content').value='';
 $("#flash").hide();
	
  }
  
  
});
	}
		

    return false;
	});



});
</script>
<style type="text/css">
body
{
font-family:Arial, Helvetica, sans-serif;
font-size:14px;
}
.comment_box
{
background-color:#D3E7F5; border-bottom:#ffffff solid 1px; padding-top:3px
}
a
	{
	text-decoration:none;
	color:#d02b55;
	}
	
</style>
</head>

<body>
<div style="background:url(http://lh4.ggpht.com/_N9kpbq3FL74/SdxnYQti7XI/AAAAAAAABcQ/JmDyIsUOons/feedbirdl.jpg) right no-repeat #FFFFFF; height:90px; border-bottom:#006699 solid 2px; padding-left:10px; ">
  <h2>More tutorials <a href="http://9lessons.blogspot.com" style="color:#0099CC">9lessons.blogspot.com</a></h2>
  <span style="float:right; padding-right:70px"><h3><a href="http://feeds2.feedburner.com/9lesson">Subscribe to my feeds</a></h3></span> <span style="float:left; "><h3><a href="">Tutorial Link</a></h3></span>     </div>
<div align="center">
<table cellpadding="0" cellspacing="0" width="500px">
<tr>
<td>

<div align="left">
<form  method="post" name="form" action="">
<table cellpadding="0" cellspacing="0" width="500px">

<tr><td align="left"><div align="left"><h3>What are you doing?</h3></div></td></tr>
<tr>
<td style="padding:4px; padding-left:10px;" class="comment_box">
<textarea cols="30" rows="2" style="width:480px;font-size:14px; font-weight:bold" name="content" id="content" maxlength="145" ></textarea><br />
<input type="submit"  value="Update"  id="v" name="submit" class="comment_button"/>
</td>

</tr>

</table>
</form>

</div>
<div style="height:7px"></div>
<div id="flash" align="left"  ></div>

<div id="display" align="left"></div>
<?php  include_once('test-process.php') ?>
</td>
</tr>
</table>






</div>
</body>
</html>
