<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp" />
<body>
	<header class="nav-bar-default nav-bar-fixed-top">
		<h1>Application point relai !</h1>
		<div style="float: right;padding:10px;">
			<form action="/projetLesParisiens/j_spring_security_logout" method="post">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
				<button>Se déconnecter</button>
			</form>
		</div>
		<div class="home">
			<a href="/projetLesParisiens/">My House</a>
		</div>
		<nav class="right-header">
			<ul>
				<li><a href="/projetLesParisiens/inscriptionPR/">S'inscrire</a></li>
				<li><a href="/projetLesParisiens/inscriptionPR/modifyWhichAccount.html">Modifier son compte</a></li>
				<li><a href="">Se connecter</a></li>
			</ul>
		</nav>
	</header>
</body>
</html>