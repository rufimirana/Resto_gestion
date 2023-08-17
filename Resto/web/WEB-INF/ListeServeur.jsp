<%-- 
    Document   : ListeServeur
    Created on : 28 mars 2022, 14:35:05
    Author     : RAZAKAMBOLOLONA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
           <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
          <title>Bomba RestoMada</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">
              <img src="LogoResto.png" width="90" height="90" class="d-inline-block align-top" alt="">
            </a>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
              <div class="navbar-nav">
                <a class="nav-item nav-link active" href="http://localhost:8080/Resto/TraitementListePlat">Liste des plats <span class="sr-only"></span></a>
              </div>
            </div>
             <div class="navbar-nav">
           
                <div class="dropdown">
                    <form action="http://localhost:8080/Resto/TraitementListeServeur" method="get">
                        <input type="date" value="date1">
                         <input type="date" value="date2">
                          <input type="submit" value=valider">
                    </form>
                  </div>
              </div>
                         </nav>
         <table class="table">
            <thead>
                <tr>
                    <th>Nom du serveur</th>
                    <td>Pourboire</td>   
                </tr>
            </thead>
            <tbody>
              
                <tr class="table">
                    <td >
                      
                    </td>
                    <td>
                
                    </td>
                   
                    </tr>
            </tbody>
          </table>

    </body>
</html>
