<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>

		<div class="container">
			<h1>Votre compte </h1>
			<p> Nom : ${user.surname} ${user.lastname}</p>
			<p> Point relai : <c:choose> <c:when test="${user.pointofdelivery == true}"> oui</c:when> 
			<c:otherwise>non</c:otherwise> </c:choose></p>
			<p> Utilisateur du service :<c:choose> <c:when test="${user.deliveryuser == true}"> oui</c:when> 
			<c:otherwise>non</c:otherwise> </c:choose></p>
			<p> Téléphone : ${user.phone} </p>
			<p> Mail : ${user.email}</p>
			<p> Adresse : ${adress.channelnumber} ${adress.street} ${adress.postalcode} ${adress.city}</p>
			
			<c:forEach items="${schedule}" var="schedule">
				<p> Jour :  ${schedule.day}</p>
				<p> Matin : <c:choose> <c:when test="${schedule.morning == true}"> disponible</c:when> 
			<c:otherwise>indisponible</c:otherwise> </c:choose></p>
			<p> Après-midi :<c:choose> <c:when test="${schedule.afternoon == true}"> disponible</c:when> 
			<c:otherwise>indisponible</c:otherwise> </c:choose></p>
			</c:forEach>
			
			<a href="/projetLesParisiens/Modification/">modifier Informations</a>
			<a href="/projetLesParisiens/inscriptionPR/addSchedule.html"> Ajouter une disponibilité</a>
			<a href="/projetLesParisiens/">choisir un point relai</a>
			
			
		</div>
</body>
</html>