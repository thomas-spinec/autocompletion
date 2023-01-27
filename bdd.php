<?php
// connexion à la bdd via PDO
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "autocompletion";

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

// requête
$sql = "SELECT * FROM animaux";

// préparation de la requête
$select = $conn->prepare($sql);

// exécution de la requête
$select->execute();

// récupération des résultats
$result = $select->fetchAll(PDO::FETCH_ASSOC);

// affichage des résultats
echo json_encode($result, JSON_PRETTY_PRINT);

//fermeture connexion
$conn = null;
