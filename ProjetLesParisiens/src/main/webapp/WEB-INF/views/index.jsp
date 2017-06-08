<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>My House !</title>

    <!-- Bootstrap Core CSS -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">

    <!-- Plugin CSS -->
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="lib/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="lib/device-mockups/device-mockups.min.css">

    <!-- Theme CSS -->
    <link href="css/new-age.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top">

    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Menu</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <c:choose>
            <c:when test="${bool == 0 }">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="/projetLesParisiens/inscriptionPR/">S'incrire</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/projetLesParisiens/spring_security_login">Se connecter </a>
                    </li>
                </ul>
            </div>
            </c:when>
            <c:otherwise>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <form action="/projetLesParisiens/j_spring_security_logout" method="post">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<button>Se déconnecter</button>
						</form>
                    </li>
                    <li>
                        <a class="page-scroll" href="/projetLesParisiens/User/">${ username} </a>
                    </li>
                </ul>
            </div>
            
            </c:otherwise>
            </c:choose>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <header>
        <div class="container">
            <div class="row">
                <div class="col-sm-7">
                    <div class="header-content">
                        <div class="header-content-inner">
                            <h1>Avec l'application MyHouse, faites-vous livrer n'importe où, n'importe quand. Inscrivez-vous et vous recevrez les colis de vos voisins, de vos amis ou de votre famille.</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <section id="download" class="download bg-primary text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <h2 class="section-heading">Où est-ce que je veux me faire livrer</h2>
                   

			<p><label for="city">Code  :</label>
			<br><input type="text" id="ville" value="" placeholder="Ville">
			</p>
            
			<div class="submit">
				<p><input type="submit" value="Valider"></p>
			</div>
                </div>
            </div>
        </div>
    </section>

    <section id="features" class="features">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-heading">
                        <a href="/projetLesParisiens/inscriptionPR/index.html">PROPOSER MON ADRESSE DE LIVRAISON</a>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <footer>
        <div class="container">
            <div class="col-sm-3">
			<nav class="footer-nav">
				<h3>A propos</h3>
				<ul>
					<li><a href="">Qui sommes-nous ?</a></li>
					<li><a href="">Nous rejoindre</a></li>
					<li><a href="">Contact</a></li>
				</ul>
			</nav>
			</div>
			<div class="col-sm-3">
				<nav class="footer-nav">
					<h3>Infos pratiques</h3>
					<ul>
						<li><a href="">Comment ça marche ?</a></li>
						<li><a href="">Les avis</a></li>
						<li><a href="">Foire aux questions</a></li>
					</ul>
				</nav>
			</div>
			<div class="col-sm-3">
				<h3>Auteurs :</h3>
					<p>JVM</p>
			</div>
			<div class="col-sm-3">
					<ul>
						<li><a href="www.facebok.fr" target="_blank" class="facebook">
							<img src="images/picto-facebook.png">
						</a></li>

						<li><a href="www.twitter.fr" target="_blank" class="twitter">
							<img src="images/picto-twitter.png">

						<li><a href="" target="_blank" class="twitter">
							<img src="/Web-Design/images/picto-twitter.png">

						</a></li>
						<li><a href="www.instagram.fr" target="_blank" class="instagram">
							<img src="images/picto-instagram.png">
						</a></li>
						<li><a href="www.youtube.fr" target="_blank" class="youtube">
							<img src="images/picto-youtube.png">
						</a></li>
					</ul>
			</div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="lib/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/new-age.min.js"></script>

</body>

</html>
