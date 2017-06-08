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
<link href="../css/styleFormulaire.css" rel="stylesheet">
</head>
<body>
	<div class="barreMenu"><h2>Barre Menu </h2></div>
	<div class="Titre"><h3>Modification des informations de votre compte </h3></div>

	<div class="formulaire">
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
		
		<% int i = 0; %>
		<c:forEach items="${schedule}" var="schedule">
		<label for="day">Jour :</label>
		<select id="day" name="<%="day".concat(Integer.toString(i))%>">
			<c:choose>
		    <c:when test="${schedule.day == 'lundi'}">
		        <option value="lundi" selected>lundi</option> 
		    </c:when>    
		    <c:otherwise>
		        <option value="lundi">lundi</option>
		    </c:otherwise>
			</c:choose>
			
			<c:choose>
		    <c:when test="${schedule.day == 'mardi'}">
		        <option value="mardi" selected>mardi</option> 
		    </c:when>    
		    <c:otherwise>
		        <option value="mardi">mardi</option>
		    </c:otherwise>
			</c:choose>
			
			<c:choose>
		    <c:when test="${schedule.day == 'mercredi'}">
		        <option value="mercredi" selected>mercredi</option> 
		    </c:when>    
		    <c:otherwise>
		        <option value="mercredi">mercredi</option>
		    </c:otherwise>
			</c:choose>
			
			<c:choose>
		    <c:when test="${schedule.day == 'jeudi'}">
		        <option value="jeudi" selected>jeudi</option> 
		    </c:when>    
		    <c:otherwise>
		        <option value="jeudi">jeudi</option>
		    </c:otherwise>
			</c:choose>
			
			<c:choose>
		    <c:when test="${schedule.day == 'vendredi'}">
		        <option value="vendredi" selected>vendredi</option> 
		    </c:when>    
		    <c:otherwise>
		        <option value="vendredi">vendredi</option>
		    </c:otherwise>
			</c:choose>
			
			<c:choose>
		    <c:when test="${schedule.day == 'samedi'}">
		        <option value="samedi" selected>samedi</option> 
		    </c:when>    
		    <c:otherwise>
		        <option value="samedi">samedi</option>
		    </c:otherwise>
			</c:choose>

		</select>
<%-- 		<input type="text" id="day" name ="<%="day".concat(Integer.toString(i))%>" value="${schedule.day}" placeholder="day"> --%>
		
		<label for="morning">Matin : </label>
		<c:choose>
		    <c:when test="${schedule.morning == '1'}">
		        <input type="checkbox" id="morning" name ="<%="morning".concat(Integer.toString(i))%>"  value="true" >  
		    </c:when>    
		    <c:otherwise>
		        <input type="checkbox" id="morning" name ="<%="morning".concat(Integer.toString(i))%>"  value="true" checked>  
		    </c:otherwise>
		</c:choose>
		
		<label for="afternoon">Après-midi : </label>
		<c:choose>
		    <c:when test="${schedule.afternoon == '1'}">
		        <input type="checkbox" id="afternoon" name ="<%="afternoon".concat(Integer.toString(i))%>"  value="true" >  
		    </c:when>    
		    <c:otherwise>
		        <input type="checkbox" id="afternoon" name ="<%="afternoon".concat(Integer.toString(i))%>"  value="true" checked>  
		    </c:otherwise>
		</c:choose>
		<input type="hidden" name="<%= i %>" value="${schedule.scheduleid}"><br>
		<%  i++ ; %>
		</c:forEach>
		<input type="hidden" name="sizeSchedule" value="${sizeSchedule}">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		<button>valider</button>
		</form>
	</div>
	



</body>
</html>