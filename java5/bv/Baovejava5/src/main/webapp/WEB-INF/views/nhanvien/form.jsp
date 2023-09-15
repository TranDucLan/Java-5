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
<title>QLNV</title>
<link rel="stylesheet" href="../assets/css/style.css">
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

</head>
<body>
	<div class="col-sm-5" id="main-content">
		<div>
			<form:form action="/nhanvien/form" modelAttribute="item" class="">
				<div class="form-group">
					<div>Mã NV</div>
					<form:input class="form-control" type="text" path="manv" />
				</div>

				<div class="form-group">
					<div>Họ và tên</div>
					<form:input class="form-control" type="text" path="hoten" />
				</div>

				<div class="form-group">
					<div>Địa chỉ</div>
					<form:input class="form-control" type="text" path="diachi" />
				</div>

				<div class="form-group">
					<div>Giới tính</div>
					<select name="gioitinh">
						<option value="${item.gioitinh}">${item.gioitinh}
						<option value="True">Nam</option>
						<option value="False">Nữ</option>
						</option>
					</select>
				</div>
				<button type="submit" class="btn btn-warning"
					formaction="/nhanvien/create">
					<i class="fa fa-plus-square"></i> Thêm
				</button>
				<button type="submit" class="btn btn-warning"
					formaction="/nhanvien/create">
					<i class="fa fa-plus-square"></i> Cập Nhật
				</button>
			</form:form>
		</div>
	</div>
	<div class="col-7">
		<div class="row">
			<form>
				<div class="form-group"></div>
			</form>
		</div>

		<div class="row">
			<div class="table-responsive">
				<table class="table table-bordered table-hover">
					<thead>
						<tr>
							<th>Manv</th>
							<th>Họ Tên</th>
							<th>Địa chỉ</th>
							<th>Giới tính</th>
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
								<td><a href="/nhanvien/edit/${item.manv}"> Edit</a></td>
								<td><a href="/nhanvien/delete/${item.manv}">
										Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
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
</html>