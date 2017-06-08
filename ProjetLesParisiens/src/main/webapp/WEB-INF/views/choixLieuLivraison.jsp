<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp" />
<body>
	<h1>Choisissez un lieu de livraison</h1>

	<div class="postalcode">
	<form:form action="#" method="post" modelAttribute="choixLieuLivraison">
		<label for="postalcode">code postal :</label>
		<form:input type="text" 
			id="postalcode" 
			path="postalcode"
			placeholder="code postal" />
		<label for="postalcode">n° de rue :</label>
		<form:input type="text" 
			id="channelnumber" 
			path="channelnumber"
			placeholder="n° de rue" />
		<label for="postalcode">rue :</label>
		<form:input type="text" 
			id="street" 
			path="street"
			placeholder="rue" />
	<button>Rechercher</button>
	</form:form>			
	</div>

</body>
</html>