<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp" /> 
<body>

	<h1>Votre adresse </h1>
	<div class="adresse">
	<form:form action="#" method="post" modelAttribute="newAdresse">
		<div class="channelnumber">
		<label for="channelnumber">N° de rue :</label>
		<form:input type="text" id="channelnumber" path="channelnumber" placeholder="num de rue"/>
		</div>
		
		<div class="street">
		<label for="street">rue :</label>
		<form:input type="text" id="street" path="street" placeholder="rue"/>
		</div>
		
		
		<div class="postalcode">
		<label for="postalcode">Code postal :</label>
		<form:input type="text" id="postalcode" path="postalcode" placeholder="code postal"/>
		</div>
		
		<div class="city">
		<label for="city">Ville :</label>
		<form:input type="text" id="city" path="city" placeholder="Ville"/>
		</div>
		
		<button>valider</button>
	</form:form>
	</div>
	
	<jsp:include page="footer.jsp" />

</body>
</html>