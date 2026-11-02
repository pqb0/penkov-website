
<?php

# IMPORTANT VARIABLES, DIFFERENT FOR EACH PAGE
	$ptr		= "./"; 		# pointer to the root directory
	$pagetitle 	= "Welcome to <page name here>"; # title displayed below the banner
	$menu_level	= "home";		# name of the menu position to be marked
	$submenu_level	= "";			# name of submenu to be marked, "" (empty string) for item from main menu

# include html formatting, banner and left menu
	include($ptr."include/latin-header.inc");
     include($ptr."include/latin-menu.inc");

?>


	<td valign="top" style="padding: 5px; padding-top: 13px;padding-left: 14px;">
 
<b>Part I</b> <br>
	
<video width="640" height="390" controls>
    <source src="/archive/penkov-storage/20170513-BDConference/Videos/BIP_4889.mp4"
            type="video/mp4">
    Your browser does not support the video tag.
</video>
 <br>

<b>Part II </b> <br>

<video width="640" height="390" controls>
    <source src="/archive/penkov-storage/20170513-BDConference/Videos/BIP_4890.MOV"
            type="video/mp4">
    Your browser does not support the video tag.
</video>
<br>
<b>Part III </b> <br>
	<!-- Part III – same as Part II -->
<video width="640" height="390" controls>
    <source src="/archive/penkov-storage/20170513-BDConference/Videos/BIP_4891.MOV"
            type="video/mp4">
</video> <br>

</font>
<small class="footer">
<br>
<br>
<?php
	include($ptr."include/latin-footer.inc");
	?>

