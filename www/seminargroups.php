

<?php

# IMPORTANT VARIABLES, DIFFERENT FOR EACH PAGE
	$ptr		= "./"; 		# pointer to the root directory
	$pagetitle 	= "Welcome to <page name here>"; # title displayed below the banner
	$menu_level	= "home";		# name of the menu position to be marked
	$submenu_level	= "";			# name of submenu to be marked, "" (empty string) for item from main menu

# include html formatting, banner and left menu



?>



<font size=2 face="Arial" color="#000000" style="font-size:16pt">
<P>
<ul>
<li>
<a href="./pastmeetings.php">Past meetings</a>
</li>

<li>
<a href="./seminar9.html"><font color="red"><b>Current meeting</b></font></a>
</li>
</ul>

</font>


<small class="footer">
<br>

<?php
	include($ptr."include/latin-footer.inc");
	?>
