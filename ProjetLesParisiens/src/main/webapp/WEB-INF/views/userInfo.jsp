<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp" /> 
<body>
<jsp:include page="headerInBody.jsp" />
		<div class="container">
			<h1>Votre compte </h1>
			<p> Nom : ${user.surname} ${user.lastname}</p>
			<p> Point relai : ${user.pointofdelivery} </p>
			<p> Utilisateur du service : ${user.deliveryuser} </p>
			<p> Téléphone : ${user.phone} </p>
			<p> Mail : ${user.email}</p>
			<p> Adresse : ${adress.channelnumber} ${adress.street} ${adress.postalcode} ${adress.city}</p>
			
			<a href="/projetLesParisiens/Modification/">modifier</a>
			<a href="/projetLesParisiens/">choisir un point relai</a>
			
			
		</div>
</body>
</html>