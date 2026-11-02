

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
	
	<p><strong><h3>Host Institutions:</h3></strong></p>

	 <ul>
		 <LI><a href="http://www.ruhr-uni-bochum.de/">Ruhr-Universität Bochum</a></LI>
		 <li><a href="http://www.uni-koeln.de/">Universität zu Köln</a></li>
		 <li><a href="http://www.tu-darmstadt.de/">TU Darmstadt</a></li>
		 <li><a href="http://www.iu-bremen.de/">IUBremen</a></li>
		 <li><a href="http://www.uni-hamburg.de/">Universität Hamburg</a></li>
	</ul>

	</td>
	</tr>	
	
	
	
	
	<?php
	include($ptr."include/latin-footer.inc");
	?>