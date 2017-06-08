<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My House !</title>
<link href="../css/styleFormulaire.css" rel="stylesheet">
</head>


<body>
	<div class="barreMenu"><h2>Barre Menu </h2></div>
	<div class="Titre"><h3>Entrez votre adresse </h3></div>
	<div class="formulaire">
	<form:form action="#" method="post" modelAttribute="newAdresse">
		<p>
		<label for="channelnumber">N° de rue </label><br>
		<form:input type="text" id="channelnumber" path="channelnumber" placeholder="num de rue"/>
		</p>
		
		<p>
		<label for="street">Rue </label><br>
		<form:input type="text" id="street" path="street" placeholder="rue"/>
		</p>
		
		
		<p>
		<label for="postalcode">Code postal </label><br>
		<form:input type="text" id="postalcode" path="postalcode" placeholder="code postal"/>
		</p>
		
		<p>
		<label for="city">Ville </label><br>
		<form:input type="text" id="city" path="city" placeholder="Ville"/>
		</p>
		
		<button>valider</button>
	</form:form>
	</div>
	


</body>
</html>