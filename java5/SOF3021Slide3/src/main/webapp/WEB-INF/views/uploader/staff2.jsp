<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Spring Boot - Databinding</title>
	<base href="${pageContext.servletContext.contextPath}/"/>
</head>
<body>
	<h2>Job Position</h2>
	<form:form action="staff2/save" modelAttribute="staff2" method="post">
		<div>Job Position</div>
		<form:radiobuttons path="position" items="${positions}" delimiter=""/>		
		<div>Hobbies</div>
		<form:checkboxes  path="hobbies" items="${hobbies}" delimiter=""/>
		<div>Nationality</div>
		<form:select path="country.id" cssClass="form-control">
			<form:options items="${nationalities }" itemValue="id" itemLabel="name"/>
		</form:select>
        <button class="btn btn-default">Save</button>
	</form:form>
	<hr>
	
</body>
</html>