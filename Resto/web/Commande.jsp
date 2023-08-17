<%-- 
    Document   : Commande
    Created on : 28 mars 2022, 15:06:01
    Author     : RAZAKAMBOLOLONA
--%>
<%@page import="classe.NTable"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    NTable[] listeTables = (NTable[]) request.getAttribute("listeTables");
    int grade = (Integer) request.getAttribute("grade");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
                </div>
                    </div>
                </nav>
                    <div>
                        <h1>Choisir une tables : </h1>
                        <form action="http://localhost:8080/Resto/TraitInsertCommande" method="get">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                  <label class="input-group-text" for="inputGroupSelect01">Tables</label>
                                </div>
                                <select class="custom-select" id="inputGroupSelect01" name="table">
                                  <% for(int i = 0; i <listeTables.length ; i++) { %>
                                        <option value = "<% out.println(listeTables[i].getId_table()); %>"><%  out.println(listeTables[i].getId_table()); %>
                                  <% } %> 
                                </select>
                            </div>
                            <input type="submit" value="commander">
                        </form>
                    </div>
                  <% } else if(grade == 2) { %>
                        <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementStock">Reste en stock <span class="sr-only"></span></a>
                        
                    <% } else if(grade == 3) { %>
                        <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementCaisse">Liste des plats non payer <span class="sr-only"></span></a>
                    <% } else if(grade == 4) { %>
                        <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementListePlat">Liste des plats <span class="sr-only"></span></a>
                    <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementListeServeur">Liste des serveurs <span class="sr-only"></span></a>
                    </div>
                    </div>
                </nav>
                    <div>
                        <h1>Choisir une tables : </h1>
                        <form action="http://localhost:8080/Resto/TraitInsertCommande" method="get">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                  <label class="input-group-text" for="inputGroupSelect01">Tables</label>
                                </div>
                                <select class="custom-select" id="inputGroupSelect01" name="table">
                                  <% for(int i = 0; i <listeTables.length ; i++) { %>
                                        <option value = "<% out.println(listeTables[i].getId_table()); %>"><%  out.println(listeTables[i].getId_table()); %>
                                  <% } %> 
                                </select>
                            </div>
                            <input type="submit" value="commander">
                        </form>
                    </div>
                    <% } else if(grade == 5) { %>
                        <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementPrixRevient"> Prix de revient <span class="sr-only"></span> </a>
                        <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementListePayer">Liste des plats payer <span class="sr-only"></span></a>
                        <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementIngredientConsommer">Liste des ingredients consommer <span class="sr-only"></span></a>
                        <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementStock">Reste en stock <span class="sr-only"></span></a>
                        <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementMontant">Montant en caisse <span class="sr-only"></span></a>
                    <% } %>
                    <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementDeconnexion">Deconnexion <span class="sr-only"></span></a>
              </div>
              </div>
          </nav>
    </body>
</html>
