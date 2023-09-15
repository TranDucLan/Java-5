<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Action Mapping</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<h1>ACTION MAPPING</h1>
	<div style="background-color: yellow;">${message}</div>
	<form action="student" method="get">
			<div>MSSV</div>
            <input name="masv" value="${SV.masv}"/>
            
            <div>Họ và tên</div>
            <input name="name" value="${SV.name}"/>

            <div>Điểm TB</div>
            <input name="mark" value="${SV.mark}"/>

            <div>Chuyên ngành</div>
            <input name="major" value="${SV.major}"/>

            <hr>
            <button name="btnInsert">Thêm</button>
            <button name="btnUpdate">Cập nhật</button>
            <button name="btnDelete">Xóa</button>
            <button name="btnReset">Nhập lại</button>
	</form>
	<hr>
	<table border="1" style="width:100%">
            <tr>
            	<th>MSSV</th>
                <th>Họ và tên</th>
                <th>Điểm TB</th>
                <th>Chuyên ngành</th>
                <th></th>
            </tr>
            <c:forEach  items="${students}" var ="student">
            <tr>
            	<td>${student.masv}</td>
                <td>${student.name}</td>
                <td>${student.mark}</td>
                <td>${student.major}</td>
                <td><a href="student/detail/${student.masv}?lnkEdit">Sửa</a></td>
            </tr>
            </c:forEach>           
	</table>
</body>
</html>
