<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp" />
<body>
	<h1>Liste des lieux disponibles</h1>
	<!-- <form:form action="#" method="post" modelAttribute="choixLieuLivraison"> -->
	<table id="lieuLivraisonTable">
		<thead>
			<!-- thead pour UNE en-tête -->
			<tr>
				<th>Code postal</th>
				<th>N° de rue</th>
				<th>Rue</th>
				<th>Lieu(x) proposé(s)</th>
			</tr>
		</thead>


		<body>

			<c:url value="recapitulatifCommande" var="validUrlPrefix" />
			<c:url value="/choixLieuLivraison" var="choixLieuLivraisonUrl" />

			<c:forEach items="${lieuLivraisonList}" var="lieuLivraison">
				<tr id="lieuLivraison_${lieuLivraisonList}">
					<td>${lieuLivraison.postalcode}</td>
					<td>${lieuLivraison.channelnumber}</td>
					<td>${lieuLivraison.street}</td>
					<td class="choice"><a
						href="${choixLieuLivraisonUrl}/${validUrlPrefix}.html?lieuLivraisonId=${lieuLivraison.adressid}
						${recapitulatifAdresse.postalcode}
						${recapitulatifAdresse.channelnumber}${recapitulatifAdresse.street}">Choisir
							cette adresse</a></td>
				</tr>
			</c:forEach>
		</body>
	</table>
	<!-- </form:form> -->
	<div style="position: fixed; width: 100%; height: 80px;">
		<a href="<c:url value="/choixLieuLivraison/index.html" />">Page
			précédente</a>
	</div>
	<jsp:include page="footer.jsp" />
	<script type="text/javascript">
		$("#lieuLivraisonTable").DataTable();
	</script>

</body>
</html>