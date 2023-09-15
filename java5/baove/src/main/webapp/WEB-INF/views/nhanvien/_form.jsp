<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<form:form action="/category/index" modelAttribute="item">
	<h4> Mã NV</h4>
	<form:input path="manv" /> <br>
	<h4> Tên</h4>
	<form:input path="hoten" /><br>
	<h4> Địa điểm</h4>
	<form:input path="diadiem"/><br>
	<h4> Giới tính</h4>
	<select name="gioitinh">
  <c:forEach items="${item.gioitinh}" var="gioitinh" varStatus="loop" ">
    <option value="${item.gioitinh}">
       ${item.gioitinh}
         <option value="Nam">Nam</option>
  <option value="Nu">Nữ</option>
    </option>
  </c:forEach>
</select>
	<hr>
	<button formaction="/nhanvien/create">Create</button>
	<button formaction="/nhanvien/update">Update</button>
	<a href="/nhanvien/delete/${item.manv}">Delete</a>
</form:form>
