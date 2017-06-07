<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp" /> 
<body>
	<h1>Création de votre compte </h1>
	<div class="coordonnees">
	<form:form action="#" method="post" modelAttribute="newUtilisateur">
		<div class="lastname">
		<label for="lastname">Nom :</label>
		<form:input type="text" id="lastname" path="lastname" placeholder="Nom"/>
		</div>
		
		<div class="surname">
		<label for="surname">Prénom :</label>
		<form:input type="text" id="surname" path="surname" placeholder="Prénom"/>
		</div>
		
			
		<!-- <label for="Birthdate">Date deNaissance :</label>
		<input type="" id="Surname" value="Surname" placeholder="Date de Naissance"> -->
		
		<div class="pointofdelivery">
		<label for="pointofdelivery">faites-vous point relai ?</label>
		<form:checkbox path="pointofdelivery" id="pointofdelivery"/>
		</div>
		
		<div class="deliveryuser">
		<label for="deliveryuser">utilisez-vous le service de point relai ?</label>
		<form:checkbox path="deliveryuser" id="deliveryuser"/>
		</div>
		
		<div class="phone">
		<label for="phone">Numéro de portable :</label>
		<form:input type="text" id="phone" path="phone" placeholder="phone"/>
		</div>
		
		<div class="email">
		<label for="email">Adresse Mail :</label>
		<form:input type="text" id="email" path="email" placeholder="email"/>
		</div>
		
		<button>valider</button>
	</form:form>
	</div>

	<jsp:include page="footer.jsp" />

</body>
</html>