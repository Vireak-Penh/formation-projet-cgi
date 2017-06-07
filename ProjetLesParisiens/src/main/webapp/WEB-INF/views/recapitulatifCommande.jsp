<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp" />
<body>
	<h1>Récapitulatif de votre commande :</h1>
	<h2>Vous avez choisi comme adresse de livraison : </h2>
	<p>N° de rue : ${recapitulatifAdresse.channelnumber}</br>
	rue : ${recapitulatifAdresse.street}</br>
	Code postal : ${recapitulatifAdresse.postalcode}</p>
	
	<div style="position: fixed; width: 100%; height: 80px;">
		<a href="<c:url value="/choixLieuLivraison/listeLieux.html" />">Page précédente</a>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>