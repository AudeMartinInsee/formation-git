<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/static/css/application.css">
    <link rel="icon" type="image/png" href="/static/favicon.png" />
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="/static/js/recherche.js"></script>
    <title>Accueil</title>
</head>
<body>
	<header id="header">
		<img alt="Cocktails" src="${pageContext.request.contextPath}/static/cocktails.png" />
		<h1>Spring bar</h1>
	</header>
	<section id="content">
		<p>
			<c:out value="${message}" />
		</p>
		<ul>
			<li><a href="<c:url value="clients" />">Liste des clients</a></li>
			<li><a href="<c:url value="commande" />">Passer une commande</a></li>
		</ul>
	</section>
	<footer>
		Rôle : ${sessionScope.employe.role.libelle} | <a href="<c:url value="employe" />">Change</a>
	</footer>
</body>
</html>