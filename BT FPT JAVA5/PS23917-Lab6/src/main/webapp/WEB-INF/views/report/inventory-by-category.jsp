<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Search</title>
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=PT+Sans:wght@700&family=Poppins:wght@600&display=swap');
*{
    box-sizing: border-box;
}
body{
    background-color: #d9ecf2;
    font-family: 'Poppins', sans-serif;
    color: navy;
}
.h3{
    color: #444;
    font-family: 'PT Sans', sans-serif;
}
thead{
    font-family: 'Poppins', sans-serif;
    font-weight: bolder;
    font-size: 20px;
    color: #666;
}
img{
    width: 40px;
    height: 40px;
}
.name{
    display: inline-block;
}
.bg-blue{
    background-color: #EBF5FB;
    border-radius: 8px;
}
.fa-check,.fa-minus{
    color: blue;
}
.bg-blue:hover{
    background-color: #3e64ff;
    color: #eee;
    cursor: pointer;
}
.bg-blue:hover .fa-check,
.bg-blue:hover .fa-minus{
    background-color: #3e64ff;
    color: #eee;
}

.table thead th,.table td{
    border: none;
}

.table tbody td:first-child{
    border-bottom-left-radius: 10px;
    border-top-left-radius: 10px;
}
.table tbody td:last-child{
    border-bottom-right-radius: 10px;
    border-top-right-radius: 10px;
}
#spacing-row{
    height: 10px;
}
@media(max-width:575px){
    .container{
        width: 125%;
        padding: 20px 10px;
    }
}
</style>
<body>
<div class="container rounded mt-5 bg-white p-md-5">

    <div class="table-responsive">
       <h3>TỒN KHO THEO LOẠI</h3>
<table border="1" style="width:100%">
<tr>
	<th>Loại hàng</th>
	<th>Tổng giá</th>
	<th>Số sản phẩm</th>
</tr>
<c:forEach var="item" items="${items}">
	<tr>
		<td>${item.group.name}</td>
		<td>${item.sum}</td>
		<td>${item.count}</td>
	</tr>
</c:forEach>
</table>
    </div>
</div>
	
</body>
</html>