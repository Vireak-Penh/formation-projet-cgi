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
	<h1>Modification des informations de votre compte </h1>
	<div class="coordonnees">
		<form action="#" method="post">
		<div class="lastname">
		<label for="lastname">Nom :</label>
		<input type="text" id="lastname" name ="lastname" value="${UserModif.lastname}" placeholder="lastname">
		</div>
		
		<div class="surname">
		<label for="surname">Prénom :</label>
		<input type="text" id="surname" name ="surname"  value="${UserModif.surname}" placeholder="surname">
		</div>
		
			
		<!-- <label for="Birthdate">Date deNaissance :</label>
		<input type="" id="Surname" value="Surname" placeholder="Date de Naissance"> -->
		
		<div class="pointofdelivery">
		<label for="pointofdelivery">faites-vous point relai ?</label>
		<c:choose>
		    <c:when test="${UserModif.pointofdelivery == '1' }">
		        <input type="checkbox" id="pointofdelivery" name ="pointofdelivery" value="true" checked>  
		    </c:when>    
		    <c:otherwise>
		        <input type="checkbox" id="pointofdelivery" name ="pointofdelivery" value="true" >  
		    </c:otherwise>
		</c:choose>
		</div>
		
		<div class="deliveryuser">
		<label for="deliveryuser">utilisez-vous le service de point relai ?</label>
		<c:choose>
		    <c:when test="${UserModif.deliveryuser == '1'}">
		        <input type="checkbox" id="deliveryuser" name ="deliveryuser"  value="true" checked>  
		    </c:when>    
		    <c:otherwise>
		        <input type="checkbox" id="deliveryuser" name ="deliveryuser"  value="true" >  
		    </c:otherwise>
		</c:choose>
		</div>
		
		
		<div class="phone">
		<label for="phone">Numéro de portable :</label>
		<input type="text" id="phone" name ="phone" value="${UserModif.phone}" placeholder="phone">
		</div>
		
		<div class="email">
		<label for="email">Adresse Mail :</label>
		<input type="text" id="email" name ="email" value="${UserModif.email}" placeholder="email">
		</div>
		
		<div class="channelnumber">
		<label for="channelnumber">N° de rue :</label>
		<input type="text" id="channelnumber" name ="channelnumber" value="${AdressModif.channelnumber}" placeholder="channelnumber">
		</div>
		
		<div class="street">
		<label for="street">Rue :</label>
		<input type="text" id="street" name ="street" value="${AdressModif.street}" placeholder="street">
		</div>
		
		<div class="postalcode">
		<label for="postalcode">Code postal :</label>
		<input type="text" id="postalcode" name ="postalcode" value="${AdressModif.postalcode}" placeholder="postalcode">
		</div>
		
		<div class="city">
		<label for="city">Ville :</label>
		<input type="text" id="city" name ="city" value="${AdressModif.city}" placeholder="city">
		</div>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		<button>valider</button>
		</form>
	</div>
	
	<jsp:include page="footer.jsp" />


</body>
</html>