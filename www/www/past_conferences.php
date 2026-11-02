
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
	
	<table border=0 cellpadding=0 cellspacing=0 width="100%"><tr><td valign=middle>


<font size=2 face="Arial" color="#000000" style="font-size:16pt">
<P>
<ul>

			<li>
				<a href="http://math.jacobs-university.de/slrt/SummerSchool2009/SummerSchool.html">Summer School 2009 "Structures in Lie Representation Theory" </a>
			</li>
			<li>
				<a href="./manin75.html">Colloque en l'honneur de Yuri Manin (2012)</a>
			</li>
			<li> 
				<a href="./symply_geom.html">Workshop on Symplectic Geometry (2012)</a>
			</li>
            <li>                                          
                <a href="./tsanov_conference.html">Vasil Tsanov Conference (2013)</a>
            </li>    
            <li>
            	<a href="http://mathpenkov.user.jacobs-university.de">Annual meeting of the DFG priority program "Representation Theory"</a>
            </li>
	    <li>
		<a href="./conf_bremen_140616_19.html">Hodge theory and unitary representations of reductive Lie groups</a>
	    </li>
	    <li>
		<a href="http://www.math.bas.bg/algebra/GRiTA2015/" target="_blank">GRiTA 2015</a>
	    </li>
</ul>

</font>


<small class="footer">
<br>
<br>
<?php
	include($ptr."include/latin-footer.inc");
	?>

