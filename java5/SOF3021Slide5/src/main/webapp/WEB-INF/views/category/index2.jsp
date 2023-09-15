<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<base href="${pageContext.servletContext.contextPath}/"/>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>MyContact App</title>
    <link href="../assets/images/logo.png" rel="shortcut icon" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Font Awesome -->
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    <!-- Custom style -->
    <link rel="stylesheet" href="../assets/css/style.css">
  </head>

  <body>
    <nav class="navbar navbar-dark bg-dark">
      <a class="navbar-brand" href="#">MyContact App</a>
    </nav>

    <div class="container" id="main-content">
      <div class="row">

        <!-- LEFT AREA -->
        <div class="col-7 container">
          <div class="row">
            <form>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Search by name ..." />
              </div>
            </form>
          </div>

          <div class="row">
            <div class="table-responsive">
              <h5>List of contacts</h5>
              <table class="table table-bordered table-hover">
                <thead>
                  <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Edit/Delete</th>
                  </tr>
                </thead>
                <tbody style="cursor: pointer;">
                <c:forEach var="item" items="${items}">
					<tr>
						<th scope="row">${item.id}</th>
						<td>${item.name}</td>
						<td>
							<a class='btn btn-info btn-xs' href="/category/edit2/${item.id}"><span class="glyphicon glyphicon-edit"></span> Edit</a> 
							<a href="/category/delete2/${item.id}" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a>
						</td>
					</tr>
				</c:forEach>                
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <!-- end LEFT AREA -->

        <!-- RIGHT AREA -->
        <div class="col-4 offset-1">
          <form:form action="/category/index2" modelAttribute="item">
            <h5>Contact form</h5>

            <div class="form-group">
              <form:input class="form-control" type="text" path="id" placeholder="Category Id" />
            </div>

            <div class="form-group">
              <form:input class="form-control" type="text" path="name" placeholder="Category Name?" />
            </div>

            <div class="form-group text-center">
              <button type="submit" class="btn btn-success" formaction="/category/create2">
                <i class="fa fa-plus-square"></i> Create
              </button>
              <button type="submit" class="btn btn-primary" formaction="/category/update2">
                <i class="fa fa-save"></i> Update
              </button>
              <button type="button" class="btn btn-danger">
                <i class="fa fa-trash-o"></i>
                <a href="/category/delete2/${item.id}">Delete</a>
              </button>
            </div>
          </form:form>
        </div>
        <!-- end RIGHT AREA -->

      </div><!-- END row -->
    </div><!-- END container -->
    
    <footer class="container">
      <strong>&copy; Fpoly - PhungLV</strong>
    </footer>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>