
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
	
	<h3><u>Third Meeting</u></h3>
	<p>Weekend of November 19 and November 20, 2005 at the Mathematical Institute, Universität zu Köln</p>
	<p align="justify"><strong>Organizers</strong>: Alan Huckleberry, Peter Littelmann, Karl-Hermann Neeb,
	Ivan Penkov, Christoph Schweigert</p>
	<h3><a name = "program"><u>Plan</u></a></h3>
	November 19
		<ul><li>12:00 - 13:30 - Lunch</li></ul>
		<ul><li>14:00 - 15:00 - Arun Ram (Madison/Rome)</li></ul>
		<ul><li>15:20 - 16:20 - Paul Martin (London)</li></ul>
		<ul><li>16:20 - 17:00 - Coffee Break</li></ul>
		<ul><li>17:00 - 18:00 - Eric Opdam (Amsterdam)
			<p>"Periodic quantum integrable systems with delta function potential"</p></li></ul>
		<ul><li>19:00 - Dinner</li></ul>
	
	November 20
		<ul><li>09:00 - 10:00 - Claus Mokler(Wuppertal)</li></ul>
		<ul><li>10:30 - 11:30 - Roland Friederich(MPI Bonn)
		<p>"Mathematical and Physical Aspects of Stochastic Loewner Evolutions"</p></li></ul>
		<ul><li>11:45 - 12:45 - Paul Zinn-Justin(Paris)</li></ul>
		<br>
	<h3><u>Contact:</u></h3>
	<p><a href="mailto:littelma@math.uni-koeln.de">Peter Littelmann</a></p>
	<p>Phone: 0221-470 2893</p>
	<br><br>
	</td>
	</tr>	
	
	
	
	
	<?php
	include($ptr."include/latin-footer.inc");
	?>