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
<link href="css/styleFormulaire.css" rel="stylesheet">
</head>
<body>

	<c:if test="${ error == 1}">
		<h1 style="color : red; "> Erreur, un compte avec ce username existe déjà  </h1>
	</c:if>
	<h1>Création de votre compte </h1>
	<div class="formulaire">
		<form action="#" method="post">
		<div class="username">
		<label for="username">Username </label>
		<input type="text" id="unsername" name ="username"  placeholder="username">
		</div>
		
		<div class="password">
		<label for="password">Password </label>
		<input type="password" id="password" name ="password"  placeholder="password">
		</div>	
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">	
		<button>valider</button>
		</form>
	</div>
	



</body>
</html>