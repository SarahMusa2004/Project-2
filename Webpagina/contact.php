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
      <h1 id="homepage-titel">Contact</h1>
      <img id="logo" src="images\D66-stop-stilstand-stem-vooruit-og2.png"></img>
      <div class="topnav">
      <a href="index.php">Home</a>
      <a href="leden.php">Leden</a>
      <a href="standpunten.php">Standpunten</a>
      <a href="nieuws.php">Nieuws</a>
      <a class="active" href="contact.php">Contact</a>
      <a href="inschrijven.php">Inschrijven</a>
      </div>
  </header>

   
   <article class="article-contact">
   <div class="contacttext">
      <h2>Hebt u vragen? Neem contact op met ons via dit formulier.</h2>
      <form class="contactform">
         <label>Naam:</label><br/>
         <input placeholder="Voer hier uw naam in" type="text" required><br/>
         <label>E-mail:</label><br/>
         <input placeholder="Voer hier uw emailadres in" type="email"><br/>
         <label>Telefoonnummer:</label><br/>
         <input placeholder="Voer hier uw telefoonnummer in" type="number" required><br/>
         <label>Uw vraag:</label><br/>
         <textarea id="textarea" placeholder="Voer hier uw vraag in" required></textarea><br/>
         <label>Donatie voor de partij(Optioneel):</label><br/>
         <input placeholder="Voer hier een bedrag in €" type="number">
         <input type="submit" value="Verzenden">
      </form>
   </div>
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