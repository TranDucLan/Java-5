<%@ page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Spring Boot</title>
</head>
<body>
	<jsp:include page="../menu.jsp"/>
	<h2>LOGIN</h2>
	<div style="background-color: yellow;"><h2> ${message} </h2></div>
	<form action="user/login" method="post">
            <div>Username</div>
            <input name="id"/>		
            <div>Password</div>
            <input name="password"/>			
            <hr>
            <button>Login</button>
	</form>
</body>
</html>
