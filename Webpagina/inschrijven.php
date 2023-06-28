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
      <h1 id="homepage-titel">Inschrijven</h1>
      <img id="logo" src="images\D66-stop-stilstand-stem-vooruit-og2.png"></img>
      <div class="topnav">
      <a href="index.php">Home</a>
      <a href="leden.php">Leden</a>
      <a href="standpunten.php">Standpunten</a>
      <a href="nieuws.php">Nieuws</a>
      <a class="active" href="inschrijven.php">Inschrijven</a>
      </div>
  </header>

  <article class="article-create">
      <br/>
      <div class="createtext">
      <h2>Schrijf je in en wordt lid van D66!</h2>
      <p>Ontvang mailtjes over updates, nieuws, acties en campagnes!</p>
      </div>
      <div class="createform">
      <form method="POST" action="leden.php">
      <input name="naam" placeholder="naam" type="text" required/>
      <input name="email" placeholder="email" type="email" required />
      <!-- de name/value van create geven we mee zodat we kunnen controleren of de formdata afkomstig is van deze pagina -->
      <button type="submit" name="create" value="create">Create</button>
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