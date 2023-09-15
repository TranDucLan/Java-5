<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<form:form action="/category/index" modelAttribute="item">
	<h4> Mã số sinh viên</h4>
	<form:input path="id" /> <br>
	<h4> Tên</h4>
	<form:input path="name" /><br>
	<h4> Điểm</h4>
	<form:input path="mark"/><br>
	<h4> Chuyên ngành</h4>
	<select name="major">
  <c:forEach items="${item.major}" var="major" varStatus="loop" ">
    <option value="${item.major}">
       ${item.major}
         <option value="ung dung phan mem">ung dung phan mem</option>
  <option value="lap trinh web">Web</option>
  <option value="lap trinh mobile">lap trinh mobile</option>
  <option value="Thiet ke do hoa">Thiet ke do hoa</option>
    </option>
  </c:forEach>
</select>
	<hr>
	<button formaction="/category/create">Create</button>
	<button formaction="/category/update">Update</button>
	<a href="/category/delete/${item.id}">Delete</a>
	<a href="/category/index">Reset</a>
</form:form>
