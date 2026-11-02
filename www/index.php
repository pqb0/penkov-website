

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


	<td valign="top" style="padding: 5px; padding-top: 0px;padding-left: 300px;">
 

	
	
	<br>
	
	

	</td>
	</tr>	
	
	
	
	
	<?php
	include($ptr."include/latin-footer.inc");
	?>
