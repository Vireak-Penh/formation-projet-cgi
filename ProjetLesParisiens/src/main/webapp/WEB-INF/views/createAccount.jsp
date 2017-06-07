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
	<h1>Creation de votre compte </h1>
	<div class="account">
		<form action="#" method="post">
		<div class="username">
		<label for="username">Nom :</label>
		<input type="text" id="unsername" name ="username"  placeholder="username">
		</div>
		
		<div class="password">
		<label for="password">Password :</label>
		<input type="password" id="password" name ="password"  placeholder="password">
		</div>	
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">	
		<button>valider</button>
		</form>
	</div>
	
	<jsp:include page="footer.jsp" />


</body>
</html>