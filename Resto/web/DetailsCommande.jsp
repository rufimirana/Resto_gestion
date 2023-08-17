<%-- 
    Document   : DetailsCommande
    Created on : 29 mars 2022, 16:43:33
    Author     : Rado
--%>
<%@page import="classe.Alls"%>
<%@page import="classe.Serveur"%>
<%@page import="classe.Produit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Produit[] listeProduit = (Produit[]) request.getAttribute("listeProduit");
    Serveur[] listeServeur = (Serveur[]) request.getAttribute("listeServeur");
    Alls[] listeAlls = (Alls[]) request.getAttribute("listeAll");
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
              </div>
                    </div>
                    </nav>
                    <div>
                        <h1>Enregistrer votre commande : </h1>
                        <div class="row">
                        <div class = "col-md-3"></div>
                        <div class = "col-md-6">
                        <form action = "http://localhost:8080/Resto/TraitementInsertDetailsCommande" method="get">
                            <div class="form-group">
                              <label for="exampleInputEmail1">Serveur</label>
                              <select class="custom-select" id="inputGroupSelect01" name="serveur">
                                      <% for(int i = 0; i <listeServeur.length ; i++) { %>
                                            <option value = "<% out.println(listeServeur[i].getId_serveur()); %>"><%  out.println(listeServeur[i].getNom()); %>
                                      <% } %> 
                              </select>
                            </div>
                            <div class="form-group">
                              <label for="exampleInputEmail1">Menu</label>
                              <select class="custom-select" id="inputGroupSelect01" name="produit">
                                      <% for(int i = 0; i <listeProduit.length ; i++) { %>
                                            <option value = "<% out.println(listeProduit[i].getId_produit()); %>"><%  out.println(listeProduit[i].getNom_produit()); %>
                                      <% } %> 
                              </select>
                            </div>
                            <div class="form-group">
                              <label for="exampleInputEmail1">Quantite</label>
                              <input class="form-control form-control-lg" type="Number" name="qtt">
                            </div>
                            <button type="submit" class="btn btn-primary">Commander</button>
                        </form>
                        </div>
                        <div>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Nom du plat</th>
                                        <td>Quantité</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% for (int i = 0; i < listeAlls.length; i++) { %>
                                    <tr class="table">
                                        <td >
                                            <% out.println(listeAlls[i].getNom_produit()); %>
                                        </td>
                                        <td>
                                          <% out.println(listeAlls[i].getQuantite()); %>
                                        </td>
                                        </tr>
                                    <% }%>
                                </tbody>
                            </table>
                        </div>
                        <div>
                            <form action = "http://localhost:8080/Resto/TraitementValider" method="get">
                                <button type="submit" class="btn btn-primary">Valider</button>
                            </form>
                        </div>
                        <div class = "col-md-3"></div>
                        </div>
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
                        <h1>Enregistrer votre commande : </h1>
                        <div class="row">
                        <div class = "col-md-3"></div>
                        <div class = "col-md-6">
                        <form action = "http://localhost:8080/Resto/TraitementInsertDetailsCommande" method="get">
                            <div class="form-group">
                              <label for="exampleInputEmail1">Serveur</label>
                              <select class="custom-select" id="inputGroupSelect01" name="serveur">
                                      <% for(int i = 0; i <listeServeur.length ; i++) { %>
                                            <option value = "<% out.println(listeServeur[i].getId_serveur()); %>"><%  out.println(listeServeur[i].getNom()); %>
                                      <% } %> 
                              </select>
                            </div>
                            <div class="form-group">
                              <label for="exampleInputEmail1">Menu</label>
                              <select class="custom-select" id="inputGroupSelect01" name="produit">
                                      <% for(int i = 0; i <listeProduit.length ; i++) { %>
                                            <option value = "<% out.println(listeProduit[i].getId_produit()); %>"><%  out.println(listeProduit[i].getNom_produit()); %>
                                      <% } %> 
                              </select>
                            </div>
                            <div class="form-group">
                              <label for="exampleInputEmail1">Quantite</label>
                              <input class="form-control form-control-lg" type="Number" name="qtt">
                            </div>
                            <button type="submit" class="btn btn-primary">Commander</button>
                        </form>
                        </div>
                        <div>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Nom du plat</th>
                                        <td>Quantité</td>
                                        <td>Action</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% for (int i = 0; i < listeAlls.length; i++) { %>
                                    <tr class="table">
                                        <td >
                                            <% out.println(listeAlls[i].getNom_produit()); %>
                                        </td>
                                        <td>
                                          <% out.println(listeAlls[i].getQuantite()); %>
                                        </td>
                                        <td>
                                            <a href="http://localhost:8080/Resto/TraitementAnnuler?id=<% out.println(listeAlls[i].getId_detailsCommande()); %>">Annuler</a>
                                        </td>
                                        </tr>
                                    <% }%>
                                </tbody>
                            </table>
                        </div>
                        <div>
                            <form action = "http://localhost:8080/Resto/TraitementValider" method="get">
                                <button type="submit" class="btn btn-primary">Valider</button>
                            </form>
                        </div>
                        <div class = "col-md-3"></div>
                        </div>
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
