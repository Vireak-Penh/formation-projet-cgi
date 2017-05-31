<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Application point relai</title>
</head>
<body>
	
	<header class="header">
		<div class="home">
			<a href="file:///Users/vireakchriv/Documents/Formation/Projet/MyHouse.html">My House</a>
		</div>
		<nav class="right-header">
			<ul>
				<li><a href="">S'inscrire</a></li>
				<li><a href="">Se connecter</a></li>
			</ul>
		</nav>
	</header>

	<section class="body__1">
		<div class="image__top">
			<img src="http://marta-club.ru/sites/default/files/uploads/shutterstock_30894127.jpg">
		</div>
	</section>

	<div class="body__2">
		<div class="up">
			<h1 class="texte__titre">MyHouse, l'application qui vous permet de vous faire livrer où vous voulez... ou presque.</h1>
			<p class="texte__contenu">Avec l'application MyHouse, faites-vous livrer n'importe où, n'importe quand. Inscrivez-vous et vous recevrez les colis de vos voisins, de vos amis ou de votre famille.</p>
		</div>

		<div class="right">
			<h1 class="rechercher__titre1">Où est-ce que je veux me faire livrer ?</h1>

			<p><label for="region">Région :</label>
			<br>
			<select name="name_region" size="1">
				<option>Auvergne-Rhônes-Alpes
				<option>Bourgogne-Franche-Comté
				<option>Bretagne
				<option>Centre-Val de Loire
				<option>Corse
				<option>Grand Est
				<option>Hauts de France
				<option>Ile de France
				<option>Normandie
				<option>Nouvelle-Aquitaine
				<option>Occitanie
				<option>Pays de la Loire
				<option>Provence-Alpes-Côte d'Azur
			</select>
			</p>

			<p><label for="department">Département :</label>
			<br>
			<select name="name_departement" size="1">
				<option>Paris
				<option>Seine-et-Marne
				<option>Seine-Saint-Denis
				<option>Ain
				<option>Aisne
			</select>
			</p>

			<p><label for="city">Ville :</label>
			<br><input type="text" id="ville" value="" placeholder="Ville">
			</p>
		
			<div class="clear"></div>
	
			<div class="submit">
				<p><input type="submit" value="Valider"></p>
			</div>
		</div>
	</div>
	
	<div class="proposer">
			<a href="/projetLesParisiens/inscriptionPR/index.html">PROPOSER MON ADRESSE DE LIVRAISON</a>
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
					<li><a href="" target="_blank" class="facebook">
						<img src="images/picto-facebook.png">
					</a></li>
					<li><a href="" target="_blank" class="twitter">
						<img src="images/picto-twitter.png">
					</a></li>
					<li><a href="" target="_blank" class="instagram">
						<img src="images/picto-instagram.png">
					</a></li>
					<li><a href="" target="_blank" class="youtube">
						<img src="images/picto-youtube.png">
					</a></li>
				</ul>
		</div>
	</footer>
</body>
</html>