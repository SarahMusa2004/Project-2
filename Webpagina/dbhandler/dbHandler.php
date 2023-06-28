<?php

class DbHandler

{
    // De verbinding naar de juiste database en host
    private $dataSource = "mysql:dbname=politieke_partij_d66;host=localhost;";

    // De login gegevens voor je database
    private $userName = "root";
    private $password = "";

    public function SelecteerLeden()
    {
        // PDO is het object waarmee we een verbinding naar de database hebben
        $pdo = new PDO($this->dataSource, $this->userName, $this->password);

        // Prepare maakt een query waar we eventueel parameters aan toe kunnen voegen.
        $statement = $pdo->prepare("SELECT naam FROM `leden`");

        // Execute voert de query uit
        $statement->execute();

        // Fetch haalt de informatie op uit het resultaat van de query, in dit geval is dat een associatieve array
        // Vandaar Fetch_Assoc
        return $statement->fetchAll(PDO::FETCH_ASSOC);
    }

    public function SelectStandpunten()
    {
        $pdo = new PDO($this->dataSource, $this->userName, $this->password);

        $statement = $pdo->prepare("SELECT Thema, Standpunt, Uitleg FROM standpunten");

        $statement->execute();

        return $statement->fetchAll(PDO::FETCH_ASSOC);
    }

    
    public function MaakLid(string $naam, string $email){
        $pdo = new PDO($this->dataSource, $this->userName, $this->password);

        $statement = $pdo->prepare("INSERT INTO leden(naam,email) VALUES(:naam, :email)");
        $statement->bindParam("naam", $naam, PDO::PARAM_STR);
        $statement->bindParam("email", $email, PDO::PARAM_STR);
        $statement->execute();
    }
}
