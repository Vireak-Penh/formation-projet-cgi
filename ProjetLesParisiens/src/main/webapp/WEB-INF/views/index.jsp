<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My House !</title>
<link href="css/style.css" rel="stylesheet">
</head>

<body>

	<header class="header">
<<<<<<< HEAD
	
		<div class="home">
			<a href="file:///Users/vireakchriv/Documents/Formation/Projet/MyHouse.html">MyHouse</a>
		</div>

		<c:choose>
			<c:when test="${bool == 0 }">
				<nav class="right-header">
					<ul>
						<li><a href="/projetLesParisiens/inscriptionPR/">S'inscrire</a></li>
						<li><a href="/projetLesParisiens/spring_security_login">Se connecter</a></li>
					</ul>
				</nav>
			</c:when>
			<c:otherwise>
				<nav class="right-header">
					<ul>
						<li>
							<form action="/projetLesParisiens/j_spring_security_logout" method="post">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<button>Se déconnecter</button>
							</form>
						</li>
						<li><a class="page-scroll" href="/projetLesParisiens/User/">${ username}</a></li>
					</ul>
				</nav>
			</c:otherwise>
		</c:choose>
		
	</header>
=======
	<div class="home">
		<a
			href="file:///Users/vireakchriv/Documents/Formation/Projet/MyHouse.html">My
			House</a>
	</div>
	<nav class="right-header">
	<ul>
		<li><a href="/projetLesParisiens/inscriptionPR/">S'inscrire</a></li>
		<li><a
			href="/projetLesParisiens/inscriptionPR/modifyWhichAccount.html">Modifier
				son compte</a></li>
		<li><a href="">Se connecter</a></li>
	</ul>
	</nav> </header>
>>>>>>> 530b0d7992711aba9236069bde781d6f54a793ba


	<section class="body__1">
	<div class="image__top">
		<img
			src="http://marta-club.ru/sites/default/files/uploads/shutterstock_30894127.jpg">
	</div>
	</section>


	<div class="body__2">

		<div class="up">
			<h1 class="texte__titre">MyHouse, l'application qui vous permet
				de vous faire livrer où vous voulez... ou presque.</h1>
			<p class="texte__contenu">Avec l'application MyHouse, faites-vous
				livrer n'importe où, n'importe quand. Inscrivez-vous et vous
				recevrez les colis de vos voisins, de vos amis ou de votre famille.</p>
		</div>

		<div class="right">
<<<<<<< HEAD
			<h1 class="rechercher__titre1">Où est-ce que je veux me faire
				livrer ?</h1>
=======
>>>>>>> 530b0d7992711aba9236069bde781d6f54a793ba
			<div class="choisir">
				<a href="/projetLesParisiens/choixLieuLivraison/index.html">CHOISIR
					UN LIEU DE LIVRAISON</a>
			</div>
		</div>
	</div>

<<<<<<< HEAD

=======
>>>>>>> 530b0d7992711aba9236069bde781d6f54a793ba
	<div class="proposer">
		<a href="/projetLesParisiens/inscriptionPR/index.html">PROPOSER
			MON ADRESSE DE LIVRAISON</a>
	</div>

	<footer class="Footer" role="contentinfo">
	<div class="footer-inner">
		<nav class="footer-nav">
		<h3>A propos</h3>
		<ul>
			<li><a href="">Qui sommes-nous ?</a></li>
			<li><a href="">Nous rejoindre</a></li>
			<li><a href="">Contact</a></li>
		</ul>
		</nav>
	</div>
	<div class="footer_2">
		<nav class="footer-nav">
		<h3>Infos pratiques</h3>
		<ul>
			<li><a href="">Comment ça marche ?</a></li>
			<li><a href="">Les avis</a></li>
			<li><a href="">Foire aux questions</a></li>
		</ul>
		</nav>
	</div>
	<div class="auteur">
		<h3>Auteurs :</h3>
		<p>JVM</p>
	</div>
	<div class="footer-socials">
		<ul>
			<li><a href="www.facebok.fr" target="_blank" class="facebook">
					<img src="images/picto-facebook.png">
<<<<<<< HEAD
			</a></li>
			<li><a href="www.twitter.fr" target="_blank" class="twitter">
					<img src="images/picto-twitter.png">
			</a></li>
			<li><a href="www.instagram.fr" target="_blank" class="instagram">
					<img src="images/picto-instagram.png">
			</a></li>
			<li><a href="www.youtube.fr" target="_blank" class="youtube">
					<img src="images/picto-youtube.png">
			</a></li>
		</ul>
	</div>
	</footer>
=======
			</a></li> <<<<<<< HEAD
			<li><a href="" target="_blank" class="twitter"> <img
					src="Web-Design/images/picto-twitter.png"> =======
					<li><a href="www.twitter.fr" target="_blank" class="twitter">
							<img src="images/picto-twitter.png"> >>>>>>>
							7e3481567f8769f1411d3dc7e4367522260e1f5a
					</a></li>
					<li><a href="www.instagram.fr" target="_blank"
						class="instagram"> <img src="images/picto-instagram.png">
					</a></li>
					<li><a href="www.youtube.fr" target="_blank" class="youtube">
							<img src="images/picto-youtube.png">
					</a></li>
		</ul>
	</div>
	</footer>
	<!-- appels JavaScript si utilise des plugins jQuery -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="js/bootstrap.js"></script>
>>>>>>> 530b0d7992711aba9236069bde781d6f54a793ba
</body>
</html>