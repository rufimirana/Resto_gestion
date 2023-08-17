<%-- 
    Document   : addition
    Created on : 31 mars 2022, 14:46:02
    Author     : RAZAKAMBOLOLONA
--%>
<%@page import="classe.Produit"%>
<%@page import="classe.Categorie"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    Produit[] listeProduit = (Produit[]) request.getAttribute("listeProduit");
    Categorie[] listeCategorie = (Categorie[]) request.getAttribute("listeCategorie");
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
            <a class="navbar-brand" href="#">
              <img src="LogoResto.png" width="90" height="90" class="d-inline-block align-top" alt="">
            </a>
          </nav>
        <table class="table">
            <thead>
                <tr>
                    <th>Nom du plat</th>
                    <td>Prix</td>
                    <td>Image</td>
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
                    </tr>
                <% }%>
                <tr>
                    Somme de votre addition:
                </tr>
            </tbody>
          </table>
    </body>
</html>
