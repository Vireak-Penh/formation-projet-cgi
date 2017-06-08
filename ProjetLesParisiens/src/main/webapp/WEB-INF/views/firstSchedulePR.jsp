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
	<div class="Titre"><h3>Entrez Vos disponibilités </h3></div>
	<div class="formulaire">
	<form:form action="#" method="post" modelAttribute="newSchedule">
		<div class="day">
		<label for="day">Jour :</label><br>
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