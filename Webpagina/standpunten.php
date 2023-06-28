<!DOCTYPE html>
<html lang="nl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/style.css">
  <title>Standpunten</title>
</head>
<body>
  <?php 
  include "dbhandler/dbHandler.php";
  $db = new dbHandler();

  $Standpunten = $db->SelectStandpunten();
  
  ?> <header id="header-homepage">
  <h1 id="homepage-titel">Standpunten</h1>
  <img id="logo" src="images\D66-stop-stilstand-stem-vooruit-og2.png"></img>
  <div class="topnav">
  <a href="index.php">Home</a>
  <a href="leden.php">Leden</a>
  <a class="active" href="standpunten.php">Standpunten</a>
  <a href="nieuws.php">Nieuws</a>
  <a href="inschrijven.php">Inschrijven</a>
  </div>
</header>

  <article>
    <?php 
    foreach($Standpunten as $Standpunt){
        
        $Standpunt_thema = $Standpunt['Thema'];
        $Standpunt_standpunt = $Standpunt['Standpunt'];
        $Standpunt_uitleg = $Standpunt['Uitleg'];

        echo "<div class='standpunt-div'><h2 class='standpunt-thema'>$Standpunt_thema</h2><h3 class='standpunt-titel'>$Standpunt_standpunt</h3><p class='standpunt-uitleg'>$Standpunt_uitleg</p></div>";
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



