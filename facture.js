function remplir()
{
    const tab0sec = new Array("Portable","Bureau","RAM 8go","Cle USB 16go","Souris","Ecran 17 pouces");
    Math.floor(10*Math.random()+1);
    var listePrix = document.getElementsByClassName("prix");
    var listePrix = document.getElementsByClassName("qte");
    var listePrix = document.getElementsByClassName("desc");

    for (var i = 0; i< listeDesc.length;i++)
    {
        var idesc = Math.floor(tab0sec.length *math.random());
        listeDesc[i].value = tab0sec[idesc];

        var qte = Math.floor(10 *math.random() + 1);
        var prix = Math.floor(100 *math.random() + 1);
        listeQte[i].value = qte;
        listePrix[i].value = prix;
    }
}

function ajouterLigne()
{
    var newli = document.getElementById("modeleLigne").cloneNode(true);
    var lastLi = document.getElementById("lastLigne");
    var pere = document.getElementById("table_inv").firstChild.nextSibling;
}

function Calculer()
{
    var total = 0;

    var listePrix = document.getElementsByClassName("prix");
    var listeQte = document.getElementsByClassName("qte");
    var listeTtl = document.getElementsByClassName("totalLigne");

    for (var i=0; i< listePrix.length;i++)
    {
        listeTtl[i].value = parseInt(listeQte[i].value)*parseInt(listePrix[i].value);
        total = total + parseInt(listeTtl[i].value);
    }
}