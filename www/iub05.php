

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
	<br>
	
	<h3><u>Second Meeting</u></h3>
	<p>Weekend of May 28, 2005 at the <a href="www.iu-bremen.de">International University Bremen</a></p>
	<p align="justify"><strong>Organizers</strong>: Alan Huckleberry, Peter Littelmann, Karl-Hermann Neeb,
	Ivan Penkov, Christoph Schweigert</p>
	<h3><a name = "program"><u>Plan</u></a></h3>
	May 28
		<ul><li>11:00 - Joseph A. Wolf(Berkeley)</li></ul>
		<ul><li>12:15 - Lunch and discussion/coffee break</li></ul>
		<ul><li>15:45 - Jens Carsten Jantzen(Aarhus)</li></ul>
		<ul><li>17:00 - Gregg J. Zuckerman(Yale)</li></ul>
	
	May 29
		<ul><li>09:00 - Peter Schupp(IUBremen)</li></ul>
		<ul><li>10:15 - Coffee break</li></ul>
		<ul><li>10:45 - Vasil Tsanov(Sofia)</li></ul>
		<ul><LI>12:00 - Vera Serganova(Berkeley)</LI></ul>
		<br>
	<h3><u>Contact:</u></h3>
	<p><a href="mailto:i.penkov@iu-bremen.de">Ivan Penkov</a></p>
	<p>Phone: 0421-223 4963</p>
	<br><br>
	
	
	
	
	<?php
	include($ptr."include/latin-footer.inc");
	?>