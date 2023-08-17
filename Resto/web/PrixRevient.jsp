<%-- 
    Document   : PrixRevient
    Created on : 24 mars 2022, 14:34:03
    Author     : RAZAKAMBOLOLONA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="classe.Categorie"%>
<%@page import="classe.Produit"%>

<% 
    Produit[] listeProduit = (Produit[]) request.getAttribute("listeProduit");
    Categorie[] listeCategorie = (Categorie[]) request.getAttribute("listeCategorie");
    double[] prixRevient = (double[]) request.getAttribute("prixRevient");
    int grade = (Integer) request.getAttribute("grade");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bomba Resto Mada</title>
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">
              <img src="LogoResto.png" width="90" height="90" class="d-inline-block align-top" alt="">
            </a>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
              <div class="navbar-nav">
                <% if(grade == 1) { %>
                    <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementListePlat">Liste des plats <span class="sr-only"></span></a>
                    <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementListeServeur">Liste des serveurs <span class="sr-only"></span></a>
                    <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementCommande">Commande<span class="sr-only"></span></a>
                    
                  <% } else if(grade == 2) { %>
                        <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementStock">Reste en stock <span class="sr-only"></span></a>
                        
                    <% } else if(grade == 3) { %>
                        <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementCaisse">Liste des plats non payer <span class="sr-only"></span></a>
                    <% } else if(grade == 4) { %>
                        <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementListePlat">Liste des plats <span class="sr-only"></span></a>
                        <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementListeServeur">Liste des serveurs <span class="sr-only"></span></a>
                        <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementCommande">Commande<span class="sr-only"></span></a>
                    <% } else if(grade == 5) { %>
                        <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementPrixRevient"> Prix de revient <span class="sr-only"></span> </a>
                        <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementListePayer">Liste des plats payer <span class="sr-only"></span></a>
                        <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementIngredientConsommer">Liste des ingredients consommer <span class="sr-only"></span></a>
                        <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementStock">Reste en stock <span class="sr-only"></span></a>
                        <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementMontant">Montant en caisse <span class="sr-only"></span></a>
                        </div>
                        </div>
                      </nav>
                     <table class="table">
                        <thead>
                            <tr>
                                <th>Nom du plat</th>
                                <td>Prix</td>
                                <td>Image</td>
                                <td>Prix de revient </td>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (int i = 0; i < listeProduit.length; i++) { %>
                                <tr class="table">
                                    <td >
                                        <% out.println(listeProduit[i].getNom_produit()); %>
                                    </td>
                                    <td>
                                      <% out.println(listeProduit[i].getPrix_produit()); %>
                                    </td>
                                    <td>
                                        <img src="<% out.println(listeProduit[i].getImages()+".jpg");%>" width="90" height="90" class="d-inline-block align-top" alt="">
                                    </td>
                                    <td>
                                        <% out.println(prixRevient[i]); %>
                                      </td>
                                </tr>
                            <% }%>
                        </tbody>
                      </table>
                <% } %>
              <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementDeconnexion">Deconnexion <span class="sr-only"></span></a>
    </body>
</html>
