<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="/static/css/application.css">
		<title>Spring MVC &ndash; Modification client</title>
	</head>
	<body>
		<h1>Modification client</h1>
		<c:url value="/client/modification/${client.id}" var="url" />
		<form:form action="${url}" modelAttribute="client" method="post" >
			<form:hidden path="id"/>
			
			<label>Titre&nbsp;:</label>
			<form:select type="text" path="titre" >
				<form:options itemLabel="libelle" />
			</form:select><br/>
			
			<label>Nom&nbsp;:</label>
			<form:input type="text" path="nom" /><br/>
			
			<label>Email&nbsp;:</label>
			<form:input type="text" path="email" /><br/>
			
			<label>Date de naissance&nbsp;:</label>
			<form:input type="text" path="dateNaissance" /> <em>jj/mm/aaaa</em><br/>
			
			<button type="submit">Modifier</button>
		</form:form>
	</body>
</html>
