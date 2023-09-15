<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<table border="1" style="width:100%">
<tr>
	<th>Mã NV</th>
	<th>Họ tên</th>
	<th>Địa điểm</th>
	<th>Giới tính</th>
	<th></th>
</tr>
<c:forEach var="item" items="${items}">
	<tr>
		<td>${item.manv}</td>
		<td>${item.hoten}</td>
		<td>${item.diadiem}</td>
		<td>${item.gioitinh}</td>
		<td>
			<a href="/nhanvien/edit/${item.manv}">Edit</a>
		</td>
	</tr>
</c:forEach>
</table>