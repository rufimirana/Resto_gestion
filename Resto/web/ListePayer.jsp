<%-- 
    Document   : ListePayer
    Created on : 5 avr. 2022, 09:01:26
    Author     : jayks
--%>

<%@page import="classe.Alls"%>
<%@page import="java.util.Vector"%>
<%@page import="classe.NTable"%>
<%@page import="classe.Produit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Produit[] listeProduit = (Produit[]) request.getAttribute("listeProduit");
    NTable[] listeNTable = (NTable[]) request.getAttribute("listeNTable");
    Vector<Alls> listeAll = (Vector<Alls>) request.getAttribute("listeAll");
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
                        <div class="dropdown">
                            <form action="http://localhost:8080/Resto/TraitementNTable" method="get">
                                <select name="nTable">
                                    <option value = "#">Numéro de table
                                    <% for(int i = 0; i <listeNTable.length ; i++) { %>
                                        <option value = "<% out.println(listeNTable[i].getId_table()); %>"><%  out.println("Table n° "+listeNTable[i].getId_table()); %>
                                    <% } %> 
                                </select>
                                <input type="submit" value="recherche">
                            </form>
                        </div>
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
                    </div>
                  </nav>
                <h1>Plats payer</h1>
                <div class="row">
                    <div class = "col-md-3"></div>
                      <div>
                          <table class="table">
                    <thead>
                        <tr>
                            <th>Nom du plat</th>
                            <td>N°Table</td>
                            <td>Quantité</td>
                            <td>Prix</td>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (int i = 0; i < listeAll.size(); i++) { %>
                            <tr class="table">
                                <td >
                                    <a href="<% out.println("http://localhost:8080/Resto/TraitementRecettePayer?id_produit="+listeAll.get(i).getId_produit()+"&&id_detailsCommande="+listeAll.get(i).getId_detailsCommande()); %>"><% out.println(listeAll.get(i).getNom_produit()); %></a>
                                </td>
                                <td>
                                    <% out.println(listeAll.get(i).getId_table()); %>
                                </td>
                                <td>
                                    <% out.println(listeAll.get(i).getQuantite()); %>
                                </td>
                                <td>
                                    <% out.println(listeAll.get(i).getPrix_produit()); %>
                                </td>
                            </tr>
                        <% }%>
                    </tbody>
                    </table>
                  </div>
                <% } %>
              <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementDeconnexion">Deconnexion <span class="sr-only"></span></a>
                
    </body>
</html>
