<%@ page pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Spring MVC</title>
</head>
<body>
	<jsp:include page="../menu.jsp"/>
	<h2>LOGIN</h2>
	${message}
	<form action="user2/login2" method="post">
                <div>Username</div>
                <input name="id" value="${uid}"/>

                <div>Password</div>
                <input name="password" value="${pwd}"/>

                <div>
                    <label>
                        <input name="remember" type="checkbox"/>
                        Remember me?
                    </label>
                </div>

                <hr>
                <button>Login</button>
	</form>
        <a href="user2/doccookie">PrintCookie</a>
        Cookie User: ${id}
        Cookie Pass: ${pw}
</body>
</html>