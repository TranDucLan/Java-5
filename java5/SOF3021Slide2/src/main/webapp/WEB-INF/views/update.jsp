<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <title>MyContact App</title>
    <link href="../assets/images/logo.png" rel="shortcut icon" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- Custom style -->
    <link href="../assets/css/style.css" rel="stylesheet" />
    <base href="${pageContext.servletContext.contextPath}/"/>
  </head>

  <body>
    <nav class="navbar navbar-dark bg-dark">
      <a class="navbar-brand" href="#">MyContact App</a>
    </nav>

    <div class="container" id="main-content">
      <div class="row d-flex justify-content-center">
        <form style="min-width: 300px;" action="student2" method="get">
          <h5 class="text-center">Contact form</h5>

          <div class="form-group">
            <input class="form-control" type="text" placeholder="MSSV" name="masv" value="${SV.masv}"/>
          </div>

          <div class="form-group">
            <input class="form-control" type="text" placeholder="Họ và tên" name="name" value="${SV.name}"/>
          </div>
          
          <div class="form-group">
            <input class="form-control" type="text" placeholder="Điểm" name="mark" value="${SV.mark}"/>
          </div>
          
          <div class="form-group">
            <input class="form-control" type="text" placeholder="Chuyên ngành" name="major" value="${SV.major}"/>
          </div>
		        
          <div class="form-group">
            <button type="submit" class="btn btn-block btn-primary" name="btnUpdate">
              <i class="fa fa-save"></i> Update
            </button>
          </div>
        </form>
      </div>
    </div><!-- /.container -->
    
    <footer class="container">
      <strong>&copy; Fpoly HCM - PhungLV</strong>
    </footer>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
