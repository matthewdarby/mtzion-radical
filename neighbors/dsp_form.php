<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	<title>Love Thy Neighbor - The Radical Experiment at Mt. Zion</title>
	<meta name="description" content="A new project to encourge Mt. Zion member to get to know thier neighbors during the Radical Experiment" />
	<meta name="keywords" content="" />
	<link href="/css/my_layout.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="/js/google-analytics.js"></script>
	<!--[if lte IE 7]>
	<link href="/css/patches/patch_my_layout.css" rel="stylesheet" type="text/css" />
	<![endif]-->	
</head>
<body>
	<div class="page_margins">
      <div id="header">
        <img src="/images/experimentLogo.jpg" alt="The Radical Experiment" />
      </div>		
		<div id="navigation">
			<ul>
				<li><a title="Mt. Zion Church" href="http://mtzioncary.org/">Mt. Zion</a></li>
				<li><a title="Mt. Zion Family" href="http://family.mtzioncary.org">Family</a></li>
				<li><a title="The Radical Experiment at Mt. Zion" href="http://radical.mtzioncary.org">Radical</a></li>
			</ul>
		</div>
		<div class="page">
			<div id="main">
			<h3>Sign Up to Know Thy Neighbor</h3>
			<p>Our goal is to know who is signing up to participate in this project. Only your name will be displayed on the next page. We are collecting
			your phone number or email address only as a means to contact you about more information with this project. </p>
			<p><a href="/neighbors"><-- Go back to the project page.</a></p>
				<form id="NeighborForm" action="index.php" method="post">			
					<p><strong>*</strong> indicates required fields.</p>
					<fieldset>
						<legend><span>Contact Information</span></legend>
						<ul>
							<li <?php if (isset($errorMSGContactName)) echo 'class="error"' ?>>
								<?php if (isset($errorMSGContactName)) echo '<p class="errorMessage">' . $errorMSGContactName . '</p>'?>
								<label for="ContactName"><span>*</span> Name:</label>
								<input id="ContactName" name="ContactName" type="text" class="text" value="<?php if (isset($_POST['ContactName'])) echo $_POST['ContactName'] ?>"/>
							</li>
							<li <?php if (isset($errorMSGEmailAddy)) echo 'class="error"' ?>>
								<?php if (isset($errorMSGEmailAddy)) echo '<p class="errorMessage">'. $errorMSGEmailAddy . '</p>' ?>
								<label for="EmailAddy">Email:</label>
								<input id="EmailAddy" name="EmailAddy" type="text" class="text" value="<?php if (isset($_POST['EmailAddy'])) echo $_POST['EmailAddy'] ?>"/>
							</li>
							<li>
								<label for="PhoneNumber">Phone:</label>
								<input id="PhoneNumber" name="PhoneNumber" type="text" class="text" value="<?php if (isset($_POST['PhoneNumber'])) echo $_POST['PhoneNumber'] ?>"/>
							</li>
							<li>
								<label for="HomeTown">Location:</label>
								<input id="HomeTown" name="HomeTown" type="text" class="text" value="<?php if (isset($_POST['HomeTown'])) echo $_POST['HomeTown'] ?>"/>
							</li>							
						</ul>
					</fieldset>
					<fieldset class="submit">	
						<input name="gutcheck" type="hidden" value="1" />
						<input name="submit" class="button" id="submit" type="submit" value="Sign Up!" />
					</fieldset>
				</form>
				</div>
		        <div id="footer">
		          <p>
		            <a href="http://mtzioncary.org/">Mt. Zion Church</a> - Cary, NC
		          </p>		
		        </div>				
			</div>
		</div>
	</div>			
</body>
</html>