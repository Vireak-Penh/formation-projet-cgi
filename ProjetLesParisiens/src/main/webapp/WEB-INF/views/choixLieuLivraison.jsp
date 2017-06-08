<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Application Web MyHouse</title>
<link href="../css/style-choix-lieu-livraison.css" rel="stylesheet">
</head>
<body>
	<header class="header">
	
			<div class="home">
				<a href="file:///Users/vireakchriv/Documents/Formation/Projet/MyHouse.html">MyHouse</a>
			</div>
	</header>
	<h1>Choisissez un lieu de livraison</h1>

	<div class="postalcode">
	<form action="#" method="post">
		<label for="postalcode">code postal :</label>
		<input type="text" 
			id="postalcode" 
			name="postalcode"
			placeholder="code postal" />
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">	
	
	<button>Rechercher</button>
	</form>			
	</div>

</body>
</html>