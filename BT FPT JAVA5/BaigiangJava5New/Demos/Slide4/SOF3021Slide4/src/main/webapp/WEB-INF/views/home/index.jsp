<%@ page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<base href="${pageContext.servletContext.contextPath}/">
	<meta charset="utf-8"/>
	<title>Spring Boot</title>
</head>
<body>
	<h1>${company.name}</h1>
	<img src="${company.logo}">	
	<h2><div>${company.slogan}</div></h2>
	<hr>
</body>
</html>
