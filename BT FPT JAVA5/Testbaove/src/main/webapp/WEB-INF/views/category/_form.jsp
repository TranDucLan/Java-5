<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<form:form action="/category/index" modelAttribute="item">
	<h4> Mã số sinh viên</h4>
	<form:input path="id" /> <br>
	<h4> Tên</h4>
	<form:input path="name" /><br>
	<h4> Điểm</h4>
	<form:input path="mark"/><br>
	<h4> Ngành</h4>
	<form:input path="major"/><br>
	<hr>
	<button formaction="/category/create">Create</button>
	<button formaction="/category/update">Update</button>
	<a href="/category/delete/${item.id}">Delete</a>
	<a href="/category/index">Reset</a>
</form:form>
