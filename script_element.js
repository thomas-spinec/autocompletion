// attente du chargement du DOM
document.addEventListener("DOMContentLoaded", function () {
  // autocomplétion
  function resultats(text, response, results) {
    let results_1 = [];
    let results_2 = [];
    console.log(text);
    console.log(response);
    // recherche des résultats pour la première liste
    for (let i = 0; i < response.length; i++) {
      if (
        response[i].nom.toLowerCase().startsWith(text) ||
        response[i].regime.toLowerCase().startsWith(text) ||
        response[i].continent.toLowerCase().startsWith(text) ||
        response[i].classe.toLowerCase().startsWith(text)
      ) {
        results_1.push(response[i]);
      }
    }

    // recherche des résultats pour la deuxième liste
    for (let i = 0; i < response.length; i++) {
      if (
        response[i].nom.toLowerCase().includes(text) ||
        response[i].regime.toLowerCase().includes(text) ||
        response[i].continent.toLowerCase().includes(text) ||
        response[i].classe.toLowerCase().includes(text)
      ) {
        results_2.push(response[i]);
      }
    }
    // affichage des résultats de la première liste
    if (results_1.length > 0) {
      console.log(results_1);
      const list1 = document.querySelector("#list");
      list1.innerHTML = "";
      results_1.forEach((result) => {
        const li = document.createElement("li");
        const lien = document.createElement("a");
        lien.setAttribute("href", "element.php?id=" + result.id);
        lien.innerHTML = result.nom;
        li.appendChild(lien);
        list1.appendChild(li);
      });
      results.style.display = "block";
    }
    // affichage des résultats de la deuxième liste
    if (results_2.length > 0) {
      console.log(results_2);
      const list2 = document.querySelector("#list2");
      list2.innerHTML = "";
      results_2.forEach((result) => {
        const li = document.createElement("li");
        const lien = document.createElement("a");
        lien.setAttribute("href", "element.php?id=" + result.id);
        lien.innerHTML = result.nom;
        li.appendChild(lien);
        list2.appendChild(li);
      });
      results.style.display = "block";
    }
  }

  // définition de la zone de recherche
  const search = document.querySelector("#search");
  let text = search.value;
  // définition de la div contenant les résultats
  const results = document.querySelector(".container_results");
  // dissimulation de la partie résultat
  results.style.display = "none";

  // écoute de la zone de recherche
  search.addEventListener("keyup", () => {
    text = search.value;
    text = text.toLowerCase();
    // récupération de la bdd si le text est suffisamment long
    if (text.length > 1) {
      fetch("bdd.php")
        .then((response) => response.json())
        .then((response) => {
          // console.log(response);
          // envoie des données à la fonction de recherche
          resultats(text, response, results);
        });
    } else {
      results.style.display = "none";
    }
  });

  // affichage des résultats seulement au focus
  search.addEventListener("focus", () => {
    results.style.display = "block";
  });
});
