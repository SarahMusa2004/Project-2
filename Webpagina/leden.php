<?php 
include "dbhandler/dbHandler.php";
$db = new DbHandler();

 $ledenData = $db->SelecteerLeden();


 //ik check hier of er een postverzoek met daarin de variable "create" is doorgestuurd naar de server om te kijken of de create variable bestaat
 //Bestaat deze variable? dan haal ik de functie maaklid op van dbhandeler om naam en email met postverzoek kan sturen naar de server. 
 if(isset($_POST["create"])){
  $db->MaakLid($_POST["naam"], $_POST["email"]); 
  }

?>
<!DOCTYPE html>
<html lang="nl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/style.css">
  <title>D66</title>
</head>
<body>

  <header id="header-homepage">
      <h1 id="homepage-titel">Leden</h1>
      <img id="logo" src="images\D66-stop-stilstand-stem-vooruit-og2.png"></img>
      <div class="topnav">
      <a href="index.php">Home</a>
      <a class="active" href="leden.php">Leden</a>
      <a href="standpunten.php">Standpunten</a>
      <a href="nieuws.php">Nieuws</a>
      <a href="contact.php">Contact</a>
      <a href="inschrijven.php">Inschrijven</a>
      </div>
  </header>

  <br/>

<article class="article-leden">  
  <?php

$leden = $db->SelecteerLeden();

foreach ($leden as $lid) {
    $naam = $lid['naam'];
    $imagePath = "images/{$lid['naam']}.PNG";
    ?>
    <div id="leden">
        <img id="images" src="<?php echo $imagePath; ?>" alt="image" />
        <p><?php echo $naam; ?></p>
    </div>
    <?php
}

?>
</article>

<footer id="footer">
    <div id="contact">
      <h2>Contact</h2>
      <h3>Landelijke Bureau D66</h3>
      <p>
         Lange Houtstraat 11 <br/>
         2511 CV Den Haag <br/>
      </p>
      <h3>Telefoonnummer</h3>
      <p>070-3566066</p>
    </div>
  </footer>
</body>
</html>







