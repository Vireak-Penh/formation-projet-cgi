<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp" /> 
<body>
<h1>Liste des adresses possibles</h1>
	<table id="adresseLivraisonTable">
		<thead>
			<!-- thead pour UNE en-tête -->
			<tr>
				<th>ChannelNumber</th>
				<th>Street</th>
				<th>PostalCode</th>
				<th>City</th>
			</tr>
		</thead>
		<body>
			<!-- body peut en avoir plusieurs -->
			<c:forEach items="${adresseLivraisonList}" var="adresseLivraison">
				<tr>
					<td>${adresseLivraison.channelnumber}</td>
					<!-- Lorsque .id ça fait appel au getter -> get(id) -->
					<td>${adresseLivraison.street}</td>
					<td>${adresseLivraison.postalcode}</td>
					<td>${adresseLivraison.city}</td>
				</tr>
			</c:forEach>
		</body>
	</table>
	<jsp:include page="footer.jsp" />
	<script type="text/javascript">
		$("#adresseLivraisonTable").DataTable();
	</script>

</body>
</html>