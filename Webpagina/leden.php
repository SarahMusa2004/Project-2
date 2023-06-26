<?php 
include "dbhandler/dbHandler.php";
$db = new DbHandler();

 $ledenData = $db->SelecteerLeden();
?>
<!DOCTYPE html>
<html lang="nl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/style.css">
  <title>D66</title>
</head>
<body >
  <header id="header-homepage">
      <h1>Leden</h1>
      <img id="logo" src="images\D66-stop-stilstand-stem-vooruit-og2.png"></img>
      <div class="topnav">
      <a href="index.php">Home</a>
      <a class="active" href="leden.php">Leden</a>
      <a href="standpunten.php">Standpunten</a>
      <a href="nieuws.php">Nieuws</a>
      <a href="inschrijven.php">Inschrijven</a>
      </div>
  </header>

  <br/>

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







