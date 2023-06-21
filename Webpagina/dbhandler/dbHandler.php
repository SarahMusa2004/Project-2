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

    
    public function MaakLid(string $naam){
        $pdo = new PDO($this->dataSource, $this->userName, $this->password);
    
        // :naam en dergelijke zijn Parameters, door de bindParam worden deze vervangen met onze variabelen.
        // Let op dat je altijd evenvaak bindParam doe als de hoeveelheid parameters in je query anders krijg je errors
        // Bij bindParam dien je ook het juiste type op te geven van de parameter.

        //Met behulp van de "bindParam" -methode worden de placeholders in de query gekoppeld aan de waarden die zijn doorgegeven 
        //aan de "MaakAuto". -functie Het type van elke parameter wordt ook gespecificeerd (integer of string) om de veiligheid
        //en juiste verwerking van de waarden te waarborgen.
    
        $statement = $pdo->prepare("INSERT INTO leden(naam) VALUES(:naam)");
        $statement->bindParam("naam", $naam, PDO::PARAM_STR);
        $statement->execute();
    }
}
