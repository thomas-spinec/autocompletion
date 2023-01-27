<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recherche</title>
    <link rel="icon" type="images/png" sizes="64x64" href="img/Logo_onglet.png" />
    <script src="script_search.js"></script>
</head>

<body>
    <header>
        <form action="recherche.php" method="get">
            <label for="search">Rechercher</label>
            <input type="text" name="search" id="search" value="<?= $_GET["search"] ?>">
            <input type="submit" value="Rechercher">
        </form>
        <div class="container_results">
            <ul class="results_one" id="list">

            </ul>
            <hr>
            <ul class="results_two" id="list2">

            </ul>
        </div>
    </header>

    <main>
        <h1>Résultats de la recherche</h1>
        <div class="recherches">
            <ul class="results_one" id="recherches1">

            </ul>
            <hr>
            <p>Vous cherchez peut-être :</p>
            <ul class="results_two" id="recherches2">

            </ul>
        </div>
    </main>
</body>

</html>