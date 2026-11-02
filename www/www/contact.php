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
<tr>

	<td width="80%" valign="top" style="padding-top: 0px;padding-left: 200px;padding-right: 200px;">
<br>
<table border=0 cellpadding=0 cellspacing=0 width="100%"><tr><td valign=middle>
<h3>
Prof. Dr. Ivan Penkov
</h3>
</td>
<td align="right" width="150"><table border=0 cellpadding=0 cellspacing=0 width=115><tr><td width=15>
</tr></table></td>
</tr></table>

<table width=100% border=0 cellpadding=0 cellspacing=0 >

<tr>
<td valign=top>
<font size=2 style="font-size:11pt">
<b>Professor of Mathematics</b>
</font>
<br>

<font size=2 style="font-size:11pt">
<br><a href="http://www.jacobs-university.de/"> Jacobs University Bremen</a>
</font>

<br><br>

<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0">
<TR>
       <TD VALIGN="top">
		<font size=2 style="font-size:11pt">
		<B>Street Address:</B><BR>
		Campus Ring 1<br>28759 Bremen<br>Germany
		</font>
       </TD>
       <TD WIDTH="50"></TD>
       <TD VALIGN="top">
		<font size=2 style="font-size:11pt">		
		<B>Mailing Address:</B><BR>
		P.O. Box 750 561<br>28725 Bremen<br>Germany
		</font>
       </TD>
</TR>
</TABLE>

<br>

<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0">
                                        <TR>
                                                <TD><B><font size=2 style="font-size:11pt"> Fax: </font></B></TD>
                                                <TD>&nbsp;&nbsp;</TD>
                                                <TD>
                                                <font size=2 style="font-size:11pt"> +49 421 200-3103 </font>
                                                </TD>
                                        </TR>
                                        <TR>
                                                <TD><B><font size=2 style="font-size:11pt"> E-Mail: </font></B></TD>

                                                <TD>&nbsp;&nbsp;</TD>
                                                <TD>
                                                <font size=2 style="font-size:11pt"> <a href=mailto:i.penkov@jacobs-university.de>i.penkov@jacobs-university.de</a> </font>
                                                </TD>
                                        </TR>
                                        <TR>
                                                <TD><B><font size=2 style="font-size:11pt"> Office: </font></B></TD>
                                                <TD>&nbsp;&nbsp;</TD>

                                                <TD>
                                                <font size=2 style="font-size:11pt"> Research I, Room 111 </font>
                                                </TD>
                                        </TR>
                                </TABLE>
</td>	 
	</td>
	</tr>
</tr>
</table>
<?php
include($ptr."include/latin-footer.inc");
?>
