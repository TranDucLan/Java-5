<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Spring Boot - Databinding</title>
	<base href="${pageContext.servletContext.contextPath}/"/>
	<!-- Định dạng lỗi -->
	<style type="text/css">
	*[id$=errors]{
		color:red;
		font-style: italic;
	}
	</style>
</head>
<body>
	<h2>Quản lý Staff</h2>
	<form:form action="staff3/save" modelAttribute="staff3" method="post">
		<form:errors path="*" element="li" delimiter=";"/> 
		<div>Id</div>
		<form:input path="id"/>
		<div>Fullname</div>
		<form:input path="fullname"/>
		<div>Email</div>
		<form:input path="email"/>
		<div>Salary</div>
		<form:input path="salary"/>
		<div>Gender</div>
		<form:radiobutton path="gender" value="true" label="Male"/>
		<form:radiobutton path="gender" value="false" label="FeMale"/>		
		<div>Position</div>
		<form:select path="position">
             <form:option value="CEO">Chief Executive Office</form:option>
             <form:option value="DIR">Director</form:option>
             <form:option value="MAN">Manager</form:option>
             <form:option value="EMP">Employee</form:option>
		</form:select>		
		<div>
        <button>Save</button>
		</div>
	</form:form>
	<hr>
	<table border="1" style="width:100%">
            <tr>
            	<th>Id</th>
                <th>Fullname</th>
                <th>Email</th>
                <th>Salary</th>
                <th>Gender</th>
                <th>Position</th>
                <th></th>
            </tr>
            <c:forEach  items="${staffs}" var ="staf">
            <tr>
            	<td>${staf.id}</td>
                <td>${staf.fullname}</td>
                <td>${staf.email}</td>
                <td>${staf.salary}</td>
                <td>${staf.gender}</td>
                <td>${staf.position}</td>
                <td><a href="staff3/detail/${staf.id}?lnkEdit">Sửa</a></td>
            </tr>
            </c:forEach>           
	</table>
</body>
</html>