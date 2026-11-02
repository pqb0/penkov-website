

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
<a href="./seminar8.html">Eighth meeting</a>
</li>

<li>
<a href="./seminar7.html">Seventh meeting</a>
</li>

<li>
<a href="./seminar_groups_2010.html">Sixth meeting</a>
</li>

<li>
<a href="./fifth_transf_groups.html">Fifth meeting</a>
</li>

<li>
<a href="./GroupsAndPhysics.html">Fourth meeting</a>
</li>

<li>
<a href="./third_meeting_transf_groups.html">Third meeting</a>
</li>
</ul>

</font>


<small class="footer">
<br>
<br>
<?php
	include($ptr."include/latin-footer.inc");
	?>
