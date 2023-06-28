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
      <h1 id="homepage-titel">Homepagina</h1>
      <img id="logo" src="images\D66-stop-stilstand-stem-vooruit-og2.png"></img>
      <div class="topnav">
      <a class="active" href="#home">Home</a>
      <a href="leden.php">Leden</a>
      <a href="standpunten.php">Standpunten</a>
      <a href="nieuws.php">Nieuws</a>
      <a href="">Inschrijven</a>
      </div>
  </header>
   <form method="POST" action="inschrijven.php">
    <input name="naam" placeholder="naam" type="text"/>
    <input name="email" placeholder="email" type="text"/>
    <!-- de name/value van create geven we mee zodat we kunnen controleren of de formdata afkomstig is van deze pagina -->
    <button type="submit" name="create" value="create">Create</button>
   </form>

</body>
</html>