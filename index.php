<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Autocompletion</title>
    <link rel="icon" type="images/png" sizes="64x64" href="img/Logo_onglet.png" />
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
</head>

<body>
    <header>
        <section class="centrage">
            <h1>L'encyclopédie du vivant</h1>
        </section>
    </header>

    <main>
        <section class="centrage">
            <form action="recherche.php" method="get">
                <input type="text" name="search" id="search" autocomplete="off">
                <input type="submit" value="Rechercher">
            </form>
            <div class="container_results">
                <ul class="results_one" id="list">

                </ul>
                <hr>
                <ul class="results_two" id="list2">

                </ul>
            </div>
        </section>
    </main>

    <footer>
    </footer>
</body>

</html>