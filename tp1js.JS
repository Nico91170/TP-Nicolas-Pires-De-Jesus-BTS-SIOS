function calcul_moyenne()
{
    var note1= prompt("Donner la première note: ");
    var coef1= prompt("Donner le premier coefficient: ");
    var note2= prompt("Donner la deuxième note: ");
    var coef2= prompt("Donner le deuxième coefficient: ");
    var note3= prompt("Donner la troisième note: ");
    var coef3= prompt("Donner le troisième coefficient: ");

    var somme =Number(note1)*Number(coef1)+Number(note2)*Number(coef2)+Number(note3)*Number(coef3);
    document.write ("Voici la somme des notes: " + somme +"<br>");
    var sommecoef = Number(coef1)+Number(coef2)+Number(coef3);
    document.write ("Voici la somme des coefficients: " + sommecoef + "<br>");
    var moyenne= somme/sommecoef;

    document .write(" Voici la moyenne: " + moyenne + "<br>");

    if (moyenne<10)
    document.write(" Vous êtes redoublant");
    else
    document.write("Vous êtes admis !");
}


function test_age()
{
    var age= prompt("Donnez votre âge: ");
    if (age <18)
    {
    document.write("Vous êtes mineur ");
    document.bgColor="red";
    }
    
    else
    {
    document.write(" Vous êtes majeur ");
    document.bgColor="green";
    }
}


function simple_affichage()
{
    var nom = prompt("Donnez votre nom");
    var prenom = prompt("Donnez votre prénom");

    document.write("<div style= 'margin: auto ; width: 300px ; border: 2px solid black; color: red;'>");
    document.write("Bonjour " + prenom + " " + nom);
    document.write("</div>")
}


function test_couleur()
{
    var c = prompt("Entrez une couleur");
    if ( c == "rouge" ||c == "ROUGE")
    document.body.style.background = "red";
    else if (c =="bleu" ||c == "BLEUE")
    document.body.style.background = "blue";
    else if (c =="vert" ||c == "VERT")
    document.body.style.background ="green";
    else
    document.write("Couleur non comprise");

}