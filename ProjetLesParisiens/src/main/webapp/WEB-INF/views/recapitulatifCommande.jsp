<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp" />
<body>
	<c:url value="/choixLieuLivraison" var="choixLieuLivraisonUrl" />
	<c:url value="recapitulatifCommande" var="validUrlPrefix" />
	<c:url value="validationCommande" var="validationCommandeUrl" />

	<h1>Récapitulatif de votre commande</h1>
	<h2>Vous avez choisi comme adresse de livraison :</h2>
	<form:form action="#" method="post" modelAttribute="newCmdHist">
		<div class="userid">
		<label for="userid" id="userid" path="userid">userid</label>
		</div>
		<div class="channelnumber">
		<label for="channelnumber" id="channelnumber"> N° de rue :
			${recapitulatifAdresse.channelnumber}</label>
		</div>
		<div class="street">
		<label for="street" id="street"> rue :
			${recapitulatifAdresse.street}</label>
		</div>
		<div class="postalcode">
		<label for="postalcode" id="postalcode"> Code postal :
			${recapitulatifAdresse.postalcode} </label>
		</div>
		<a
			href="${choixLieuLivraisonUrl}/${validationCommandeUrl}.html?commandeValideId=">Valider</a>
	</form:form>
	<div style="position: fixed; width: 100%; height: 80px;">
		<a href="<c:url value="/choixLieuLivraison/listeLieux.html" />">Page
			précédente</a>
	</div>
</body>
</html>