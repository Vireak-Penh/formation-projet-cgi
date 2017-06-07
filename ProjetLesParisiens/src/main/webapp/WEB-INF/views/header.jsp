<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:url value="/webjars/bootstrap/3.1.0" var="bootstrapUrl" />
<c:url value="/webjars/jquery/3.1.1-1" var="jqueryUrl" />
<c:url value="/webjars/jquery-ui/1.12.1" var="jqueryuiUrl" />
<c:url value="/webjars/datatables/1.10.12" var="datatablesUrl" />
<c:url value="/webjars/datatables-colreorder/1.2.0" var="datatablesColreorderUrl" />
<c:url value="/css" var="appCssUrl" />
<!-- JQuery -->
<script src="${jqueryUrl}/jquery.min.js"></script>
<!-- JQuery UI -->
<link rel="stylesheet" href="${jqueryuiUrl}/jquery-ui.min.css">
<script src="${jqueryuiUrl}/jquery-ui.min.js"></script>
<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">

    <!-- Plugin CSS -->
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="lib/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="lib/device-mockups/device-mockups.min.css">

    <!-- Theme CSS -->
    <link href="css/new-age.min.css" rel="stylesheet">
<title>Application Web MyHouse</title>
</head>

</html>