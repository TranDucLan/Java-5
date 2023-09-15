<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<title>Insert title here</title>
	<style type="text/css">
		.container {
		  padding: 2rem 0rem;
		}
		
		h4 {
		  margin: 2rem 0rem 1rem;
		}
		
		.table-image {
		  td, th {
		    vertical-align: middle;
		  }
		}
	</style>
</head>
<body>
<div class="container">
  <div class="row">
    <div class="col-12">
		<table class="table table-image">
		  <thead>
		    <tr>
		      <th scope="col">STT</th>
		      <th scope="col">Hình</th>
		      <th scope="col">Tên sản phẩm</th>
		      <th scope="col">Mô tả</th>
		      <th scope="col">Số lượng</th>
		      <th scope="col">Giá</th>
		    </tr>
		  </thead>
		  <tbody>
		    <tr>
		      <th scope="row">1</th>
		      <td class="w-25">
			      <img src="../images/hdd.jpg" width="150" class="img-fluid img-thumbnail" alt="Ổ cứng">
		      </td>
		      <td>Ổ cứng HDD</td>
		      <td>Ổ cứng HDD Seagate</td>
		      <td>100</td>
		      <td>5000</td>
		    </tr>
		    <tr>
		      <th scope="row">2</th>
		      <td class="w-25">
			      <img src="../images/case.png" width="150" class="img-fluid img-thumbnail" alt="Thùng máy">
		      </td>
		      <td>Case</td>
		      <td>Case thùng máy</td>
		      <td>10</td>
		      <td>500</td>
		    </tr>
		    <tr>
		      <th scope="row">3</th>
		      <td class="w-25">
			      <img src="../images/corei7.jpeg" width="150" class="img-fluid img-thumbnail" alt="CPU Core i7">
		      </td>
		      <td>CPU</td>
		      <td>CPU Core i7</td>
		      <td>20</td>
		      <td>700</td>
		    </tr>
		  </tbody>
		</table>   
    </div>
  </div>
</div>
</body>
</html>