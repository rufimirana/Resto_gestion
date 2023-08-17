<!DOCTYPE html>
<html>
    <head>
        <title>Bomba restoMada</title>
	<link rel="stylesheet" type="text/css" href="slide navbar style.css">
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="login.css">
    </head>
    <body>
	<div class="main">  	
            <input type="checkbox" id="chk" aria-hidden="true">
            <div class="signup">
                <form action="http://localhost:8080/Resto/TraietementLogin" method="get">
                    <label for="chk" aria-hidden="true">Se connecter</label>
                    <input type="text" name="nom" placeholder="Nom d'utilisateur" required="">
                    <input type="password" name="mdp" placeholder="Mot de passe" required="">
                    <button>Se connecter</button>
                </form>
            </div>
            
	</div>
    </body>
</html>