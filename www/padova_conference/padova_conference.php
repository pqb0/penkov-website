

<?php

# IMPORTANT VARIABLES, DIFFERENT FOR EACH PAGE
	$ptr		= "./"; 		# pointer to the root directory
	$pagetitle 	= "Welcome to <page name here>"; # title displayed below the banner
	$menu_level	= "home";		# name of the menu position to be marked
	$submenu_level	= "";			# name of submenu to be marked, "" (empty string) for item from main menu

# include html formatting, banner and left menu



?>

<style>
#menu1 {
  list-style-type: none;
  margin: 0;
  padding: 5px;
  overflow: hidden;
  background-color: #333333;
}

#menu {
  float: left;
}

#menu a {
  display: block;
  color: white;
  text-align: center;
  padding: 16px;
  text-decoration: none;
  outline-style: solid;
  outline-color: #ffffff;
}

#menu a:hover {
  background-color: #111111;
}
</style>

 <font size=2 face="Arial" color="#000000" style="font-size:16pt">
<P>
<td valign="top" align="right">
		<div>
		<ul id="menu1">	
			<li id="menu">
				<a href="../index.php">Home</a>
			</li>
			<li id="menu">
				<a href="./padova_conference.php">Overview</a>
			</li>
			<li id="menu">
				<a href="./schedule_padova.php">Schedule</a>
			</li>
			<li id="menu">
				<a href="./abstracts_padova.php">Abstracts</a>
			</li>
		</ul>
		</div>
	</td>

</font>

<DIV>
<font size=7 face="Arial"><b> Infinite dimensional Lie Algebras</b></font>
</DIV>

<DIV>
<font size=5 face="Arial"><b> A workshop in honour of Ivan Penkov</b></font>
</DIV>

<font size=4>
<p> May 22 (afternoon) -May 23 (morning)  2023</p> 

<p> Dipartimento di Matematica ''Tullio Levi-Civita'',  Room 1BC45</p> 

<p> University of Padua </p>
</font>

<P>
<img src="Ivan-Penkov-2.jpg" alt="Picture 1" style="width:300px;height:300px;">

<img src="20230523_121022.jpg" alt="Picture 2" style="width:1000px;height:300px;">
<br>
<P>
<img src="Dipartimento Matematica Orizzontale Esteso.png" alt="Picture 3" style="width:300px;height:70px;">
<br>
<hr>

<h1>Speakers:</h1>
<P>
<font size=4>
<ul>
<li>
Corrado De Concini (Sapienza Università di Roma)
</li>

<li>
Alberto De Sole (Sapienza Università di Roma)
</li>

<li>
Dimitar Grantcharov (University of Texas at Arlington)
</li>

<li>
Michela Varagnolo (Université de Cergy-Pontoise)
</li>
</ul>
</font>
<hr>

<h1>Venue:</h1>
<P>
<font size=5><p>Department of Mathematics "Tullio Levi Civita"</p></font>
<font size=4><p>Department of Mathematics "Tullio Levi Civita"</p></font>
<font size=4>
<ul>
<li>
Address: Via Trieste, 63 – 35121 Padova (Italy)
</li>

<li>
Tel: +39 049 827 1200
</li>

<li>
E-mail: dipmath@math.unipd.it
</li>

<li>
Website: <a href ="https://www.math.unipd.it/">https://www.math.unipd.it</a>
</li>

<li>
Maps: <a href ="https://goo.gl/maps/8ssjUaG39hUhep599">https://goo.gl/maps/8ssjUaG39hUhep599</a>
</li>
</ul>
</font>

<small class="footer">
<br>

<?php
	include($ptr."include/latin-footer.inc");
	?>
