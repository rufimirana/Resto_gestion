<%-- 
    Document   : IngredientConsommer
    Created on : 5 avr. 2022, 09:55:32
    Author     : jayks
--%>

<%@page import="classe.ProduitRecette"%>
<%@page import="classe.Alls"%>
<%@page import="java.util.Vector"%>
<%@page import="classe.NTable"%>
<%@page import="classe.Produit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Produit[] listeProduit = (Produit[]) request.getAttribute("listeProduit");
    NTable[] listeNTable = (NTable[]) request.getAttribute("listeNTable");
    ProduitRecette[] listeProduitRecette = (ProduitRecette[]) request.getAttribute("listeProduitRecette");
    double somme = (Double) request.getAttribute("somme");
    int grade = (Integer) request.getAttribute("grade");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Bomba restoMada</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="index.jsp">
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
                        <div class="navbar-nav">
                            <div class="dropdown">
                                <form action="http://localhost:8080/Resto/TraitementIngredientConsommer" method="get">
                                    <p>Date 1 : <input type="date" name="date1"></p>
                                    <p>date 2 : <input type="date" name="date2"></p>
                                    <input type="submit" value="valider">
                                </form>
                           </div>
                         </div>
                      </nav>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Nom Ingredient</th>
                                <td>Quantite</td>
                                <td>Prix</td>
                                <td>Date</td>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (int i = 0; i < listeProduitRecette.length; i++) { %>
                            <tr class="table">
                                <td>
                                  <% out.println(listeProduitRecette[i].getNom_ingredient()); %>
                                </td>
                                <td>
                                    <% out.println(listeProduitRecette[i].getQuantite() + "g"); %>
                                </td>
                                <td>
                                    <% out.println(listeProduitRecette[i].getPrix()); %>
                                </td>
                                <td>
                                    <% out.println(listeProduitRecette[i].getDaty()); %>
                                </td>
                                </tr>
                            <% }%>
                        </tbody>
                      </table>
                    <h1>Somme : <% out.println(somme+" Ar"); %></h1>
                <% } %>
              <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementDeconnexion">Deconnexion <span class="sr-only"></span></a>
    </body>
</html>
