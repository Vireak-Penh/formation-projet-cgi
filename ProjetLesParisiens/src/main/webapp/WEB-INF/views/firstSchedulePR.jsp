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
	<h1>Vos disponibilités </h1>
	<div class="schedule">
	<form:form action="#" method="post" modelAttribute="newSchedule">
		<div class="day">
		<label for="day">Jour :</label>
		<form:select path="day">
			<form:options items="${dayList}"/>
		</form:select>
		</div>	

		<div class="morning">
		<label for="morning">Vous êtes disponible le matin : </label>
		<form:checkbox path="morning" id="morning"/>
		</div>
		
		<div class="afternoon">
		<label for="afternoon">Vous êtes disponible l'après-midi :</label>
		<form:checkbox path="afternoon" id="afternoon"/>
		</div>
		
		<button>valider</button>
	</form:form>
	</div>


</body>
</html>