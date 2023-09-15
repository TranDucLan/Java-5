<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<style>
body {
	background: #5E9EFF;
	margin: 0;
}

.social_icon2 ul {
	margin: 0;
	padding: 0;
	list-style: none;
	margin-left: 450px;
	margin-top: 300px;
}

.gap {
	margin-right: 10px;
}

.social_icon2 ul li:first-child {
	margin-left: 0px;
}

.facebook {
	background: #2a66b3;
	border: 1px solid #2a66b3;
}

.social_icon2 ul li a i {
	margin-right: 10px;
}

.twitter {
	background: #35bbec;
	border: 1px solid #35bbec;
}

.social_icon2 ul li a {
	float: left;
	border-radius: 4px;
	line-height: 40px;
	color: #fff;
	height: 40px;
	width: 110px;
	text-align: center;
	margin-bottom: 40px;
}

.google {
	background: #e55644;
	border: 1px solid #e55644;
}

.facebook:hover {
	background: #082b58;
	border: 1px solid #082b58;
}

.twitter:hover {
	background: #0f607e;
	border: 1px solid #0f607e;
}

.google:hover {
	background: #a52a1b;
	border: 1px solid #a52a1b;
}

.wrapper {
    height: 100vh;
    width: 100%;
    background: linear-gradient(309deg, rgba(131, 58, 180, 1) 0%, rgba(200, 42, 18, 0.87718837535014) 79%)
}



.boxes div {
    position: absolute;
    width: 50px;
    height: 50px;
    background-color: transparent;
    border: 2px solid #fff
}

.boxes div:nth-child(1) {
    top: 70%;
    left: 10%;
    animation: box-animate 10s infinite
}

.boxes div:nth-child(2) {
    top: 20%;
    left: 80%;
    animation: box-animate 9s infinite
}

.boxes div:nth-child(3) {
    top: 50%;
    left: 50%;
    animation: box-animate 6s infinite
}

.boxes div:nth-child(4) {
    top: 80%;
    left: 60%;
    animation: box-animate 15s infinite
}

.boxes div:nth-child(5) {
    top: 30%;
    left: 30%;
    animation: box-animate 9s infinite
}

.boxes div:nth-child(6) {
    top: 90%;
    left: 90%;
    animation: box-animate 12s infinite
}

.boxes div:nth-child(7) {
    top: 80%;
    left: 30%;
    animation: box-animate 2s infinite
}

.boxes div:nth-child(8) {
    top: 40%;
    left: 20%;
    animation: box-animate 2s infinite
}

.boxes div:nth-child(9) {
    top: 50%;
    left: 80%;
    animation: box-animate 2s infinite
}

@keyframes box-animate {
    0% {
        transform: scale(0) translateY(0) rotate(0);
        opacity: 1
    }

    100% {
        transform: scale(1.3) translateY(-90px) rotate(360deg);
        opacity: 0
    }
}
</style>
<body>

	<div class="wrapper">
			<div class="social_icon2">
		<ul>
			<li><a href="/product/search" class="gap facebook"><i
					class="fa fa-facebook" aria-hidden="true"></i>product search</a></li>
			<li><a href="/product/search-and-page" class="gap twitter"><i
					class="fa fa-twitter" aria-hidden="true"></i>search-page</a></li>
			<li><a href="/report/inventory-by-category" class="gap google"><i
					class="fa fa-google-plus" aria-hidden="true"></i>tồn kho</a></li>
		</ul>
	</div>
		<div class="boxes">
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
		</div>
	</div>
</html>