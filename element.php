<?php
// connexion à la bdd via PDO en local
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "autocompletion";

// connexion à la bdd via PDO en ligne
// $servername = "localhost";
// $username = "adminbdd"
// password = "basededonnees"
// $dbname = "thomas-spinec_autocompletion"

try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

$id = htmlspecialchars($_GET["id"]);
// requête
$sql = "SELECT * FROM animaux WHERE id = :id";

// préparation de la requête
$select = $conn->prepare($sql);

// exécution de la requête
$select->execute([
    ":id" => $id
]);

// récupération des résultats
$result = $select->fetch(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Element</title>
    <link rel="icon" type="images/png" sizes="64x64" href="img/Logo_onglet.png" />
    <link rel="stylesheet" href="style.css">
    <script src="script_element.js"></script>
</head>

<body>
    <header>
        <section class="centrage">
            <div id="flex">
                <div>
                    <h1><a href="index.php" id="titre">L'encyclopédie du vivant</a></h1>
                </div>
                <div>
                    <form action="recherche.php" method="get">
                        <input type="text" name="search" id="search" autocomplete="off">
                        <input type="submit" value="Rechercher">
                    </form>
                    <div class="container_results" id="results_header">
                        <ul class="results_one" id="list">

                        </ul>
                        <hr>
                        <ul class="results_two" id="list2">

                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </header>

    <main>
        <section class="centrage">
            <h1>Espèce: <?= $result["nom"] ?></h1>
            <div class="element">
                <table>
                    <thead>
                        <tr>
                            <th>Régime alimentaire</th>
                            <th>Classe</th>
                            <th>Continent</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><?= $result["regime"] ?></td>
                            <td><?= $result["classe"] ?></td>
                            <td><?= $result["continent"] ?></td>
                        </tr>
                    </tbody>
                </table>
                <p><?= $result["description"] ?></p>
            </div>
        </section>
    </main>
</body>

</html>