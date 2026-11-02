
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
 
<b>Thursday , December 5 </b> <p width_text = 10>



	<a href="https://youtu.be/h7CcV0JLwJo">11:00-11:50  Ivan Penkov (Jacobs University)  Some recent results on ind-varieties of generalized flags </a><br>
<br>
<a href="https://youtu.be/23xxWGEyIwI">12:00-12:50  Peter Heinzner ( Ruhr-Universität Bochum)  Kählerian potentials for Hamiltonian actions </a><br>
<br>
<a href="https://youtu.be/X3g9mvo2QY0">14:20-15:10 Ana-Maria Brecan (Universität Bayreuth)  Unobstructedness of Hyperkähler Twistor Spaces</a><br>
<br> <a href="https://youtu.be/u5XKP8IWYM0">15:45-16:35 Keivan Mallahi-Karai (Jacobs University)  Kirillov's orbit method and the faithful dimension of finite p-groups
</a><br>
<br> <a href="https://youtu.be/Hs-eWCOiPvU">16:50-17:40  Martin Zirnbauer (Universität zu Köln)  Symmetry classes of disordered fermions: role of particle-hole symmetries</a><br>
</p>
</font>
<small class="footer">
<br>
<br>
<?php
	include($ptr."include/latin-footer.inc");
	?>

