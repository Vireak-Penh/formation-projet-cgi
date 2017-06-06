<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp" /> 
<body>
<h1>Liste des lieux disponibles</h1>
	<table id="lieuLivraisonTable">
		<thead>
			<!-- thead pour UNE en-tête -->
			<tr>
				<th>postalcode</th>
			</tr>
		</thead>
		<body>
			<!-- body peut en avoir plusieurs -->
			<c:forEach items="${lieuLivraisonList}" var="lieuLivraison">
				<tr>
					<td>${lieuLivraison.postalcode}</td>
				</tr>
			</c:forEach>
		</body>
	</table>
	<jsp:include page="footer.jsp" />
	<script type="text/javascript">
		$("#lieuLivraisonTable").DataTable();
	</script>

</body>
</html>