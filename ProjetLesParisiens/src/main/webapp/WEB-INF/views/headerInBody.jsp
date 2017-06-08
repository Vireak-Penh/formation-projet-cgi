<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp" />
<body>
	<header class="nav-bar-default nav-bar-fixed-top">
		<h1>Application point relai !</h1>
		<div class="home">
			<a href="/projetLesParisiens/">My House</a>
		</div>
		    <c:choose>
            <c:when test="${bool == 0 }">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="/projetLesParisiens/inscriptionPR/">S'incrire</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/projetLesParisiens/spring_security_login">Se connecter </a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/projetLesParisiens/Modification/">Modifier son compte</a>
                    </li>
                </ul>
            </div>
            </c:when>
            <c:otherwise>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <form action="/projetLesParisiens/j_spring_security_logout" method="post">
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							<button>Se déconnecter</button>
						</form>
                    </li>
                    <li>
                        <a class="page-scroll" href="/projetLesParisiens/User/">${username} </a>
                    </li>
                </ul>
            </div>
            
            </c:otherwise>
            </c:choose>
	</header>
</body>
</html>