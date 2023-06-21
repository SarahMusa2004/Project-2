<?php

final class dbHandler
{
  private $dataSource = "mysql:dbname=politieke_partij_d66;host=localhost;";
  private $userName = "root";
  private $password = "";

  public function SelectStandpunten()
  {
    $pdo = new PDO($this->dataSource, $this->userName, $this->password);

    $statement = $pdo->prepare("SELECT Thema, Standpunt, Uitleg FROM standpunten");

    $statement->execute();

    return $statement->fetchAll(PDO::FETCH_ASSOC);
  }


}