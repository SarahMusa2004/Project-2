<!DOCTYPE html>
<html lang="nl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/style.css">
  <title>Nieuws</title>
</head>
<body>
<?php 
  include "includes/dbHandler.php";
  $db = new dbHandler();

  $Nieuws = $db->SelectNieuwsArtikel();
?>
  <header id="header-homepage">
      <h1 id="homepage-titel">Nieuws</h1>
      <img id="logo" src="images\D66-stop-stilstand-stem-vooruit-og2.png"></img>
      <div class="topnav">
      <a href="index.php">Home</a>
      <a href="leden.php">Leden</a>
      <a href="standpunten.php">Standpunten</a>
      <a class="active" href="nieuws.php">Nieuws</a>
      <a href="inschrijven.php">Inschrijven</a>
      </div>
  </header>

  <article>
    <?php 
    foreach($Nieuws as $Artikel){
        
        $Artikel_titel = $Artikel['Titel'];
        $Artikel_tekstK = $Artikel['Tekst(kort)'];
        $Artikel_tekst = $Artikel['Tekst'];

        echo "<div class='Artikel-div'><h1 class='Artikel-titel'>$Artikel_titel</h1><h3 class='Artikel-tekst-kort'>$Artikel_tekstK</h3><p class='Artikel-hoofdtekst'>$Artikel_tekst</p></div>";
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