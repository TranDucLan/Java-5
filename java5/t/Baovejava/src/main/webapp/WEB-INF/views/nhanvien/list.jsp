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

<!-- Font Awesome -->
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">

<!-- Custom style -->
<link rel="stylesheet" href="../assets/css/style.css">
</head>

<body>
	<nav class="navbar navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Quản Lý Nhân Viên</a>
	</nav>

	<div class="container" id="main-content">
		<div class="row">
			<div class="col-6 no-padding">
				<form class="form-inline">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search by name ..." />
					<button class="btn btn-primary" type="submit">
						<i class="fa fa-search"></i> Search
					</button>
				</form>
			</div>
			<div class="row">
			<div class="table-responsive">
				<h5>List of contacts</h5>
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							 <th>Manv</th>
							<th>Họ Tên</th>
		                     <th>Địa chỉ</th>
		                    <th>Giới tÍnh</th>
		                    <th>Edit</th>
		                    <th>Delete</th>
						</tr>
					</thead>
					<tbody style="cursor: pointer;">
						<c:forEach var="item" items="${items}">
							<tr>
								<th scope="row">${item.manv}</th>
						<td>${item.hoten}</td>
						<td>${item.diachi}</td>
						<td>${item.gioitinh}</td>
								<td>
								<a href="/category/edit/${item.manv}" class="mr-sm-2 text-primary"><span
									class="fa fa-pencil"></span></a>
								<a href="/category/delete/${item.manv}" class="text-danger"><i
									class="fa fa-trash"></i></a>
								</td>	
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
			
		</div>

		
	</div>
	<!-- /.container -->



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
