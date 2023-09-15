<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>MyContact App</title>
<link href="../assets/images/logo.png" rel="shortcut icon" />

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!-- Custom style -->
<link href="../assets/css/style.css" rel="stylesheet" />
</head>

<body>
	<nav class="navbar navbar-dark bg-dark">
		<a class="navbar-brand" href="#">MyContact App</a>
	</nav>

	<div class="container" id="main-content">
		<div class="row d-flex justify-content-center">
			<form:form action="/category/form" modelAttribute="item">
				<h1>Contact form</h1>
				<br>

				<div class="form-group">
					<h4>Mã số sinh viên</h4>
					<form:input class="form-control" type="text" path="id" />
				</div>

				<div class="form-group">
					<h4>Tên</h4>
					<form:input class="form-control" type="text" path="name" />
				</div>

				<div class="form-group">
					<h4>Điểm</h4>
					<form:input class="form-control" type="text" path="mark" />
				</div>

				<div class="form-group">
					<h4>Ngành</h4>
					<select name="major">

						<option value="${item.major}">${item.major}
						<option value="UDPM">UDPM</option>
						<option value="Mobile">Mobile</option>
						</option>

					</select>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-block btn-primary" formaction="/category/create">
						<i class="fa fa-save"></i> Save
					</button>
				</div>
			</form:form>
		</div>
	</div>
	<!-- /.container -->
	<footer class="container">
		<strong>&copy; 2018 Ashina</strong>
	</footer>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>
