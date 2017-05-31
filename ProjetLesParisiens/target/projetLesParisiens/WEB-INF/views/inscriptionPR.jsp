<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Application point relai</title>
</head>
<body>
	<div class="coordonnees">
		<div class="lastname">
		<label for="lastname">Nom :</label>
		<input type="text" id="lastname" value="lastname" placeholder="Nom">
		</div>
		
		<div class="Surname">
		<label for="surname">Prénom :</label>
		<input type="text" id="surname" value="surname" placeholder="Prénom">
		</div>
		
			
		<!-- <label for="Birthdate">Date deNaissance :</label>
		<input type="" id="Surname" value="Surname" placeholder="Date de Naissance"> -->
		
		<div class="PR">
		<label for="PR">faites-vous point relai ?</label>
		<form:checkbox path="PR" id="PR"/>
		</div>
		
		<div class="DeliveryUser">
		<label for="DeliveryUser">utilisez-vous le service de point relai ?</label>
		<form:checkbox path="DeliveryUser" id="DeliveryUser"/>
		</div>
		
		<div class="Phone">
		<label for="Phone">Numéro de portable :</label>
		<input type="text" id="Phone" value="Phone" placeholder="Phone">
		</div>
		
		<div class="Mail">
		<label for="Mail">Adresse Mail :</label>
		<input type="text" id="Mail" value="Mail" placeholder="Mail">
		</div>
	</div>


</body>
</html>