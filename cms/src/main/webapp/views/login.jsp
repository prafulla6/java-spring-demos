<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>	</title>
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

	<!-- jQuery calender link -->
 <link rel="stylesheet" type="text/css" href="jquery-ui.min.css">

 <!-- google font link -->
<link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah&display=swap" rel="stylesheet">

<style type="text/css">
/*==================================================================*/
.login-card
{
	margin-top: 200px;
	margin-left: 300px;
}
/*==================================================================*/
.navbar
{
	position: absolute;
	margin-left: 15px;
	background-color: rgb(33,152,207);
	height: 120px;

}


</style>
</head>
<body style="background: url(images/aeroplane.jpg); background:rgb(232, 237, 232);">
<!--===============================navigation bar======================================================-->
	<div class="row">
			<nav class="navbar navbar-expand-lg col-md-12">
  			<a class="navbar-brand" href=""><img src="ciss.jpg" class="img-responsive" height="100" width="220">
  				<br><h6 class="text-white" style="font-family: 'Gloria Hallelujah', cursive; position:  absolute; top: 90px; left:85px;"></h6></a>

     </div>
<!--======================================================================================-->
<!--=================================main container=======================================-->

	<div class="container">          <!--    main comtainer -->
		<div class="row">
		 <!--==========================card started ====================-->
		<div class="card login-card shadow" style="width: 28rem ;background:white;">            
			<div class="card-header"style="background:grey;">
				<h1 class="ml-5" style="color:white;">Login</h1>
			</div>
		
		  <div class="card-body">
		  	<form action="validateLogin" style="color:rgb(33,152,207);" name="myform" method="post"  onsubmit="return validateform()">
		  		<div class="form-group">
		  		  <c:if test="${message!=null}">
		  		  <p class="alert-warning"><c:out value="${message}"/></p>
		  		  </c:if>

				  		
					<div class="form-group">
						Enter Username : <input type="text" name="username" id="name" class="form-control">
						<span id="name_error" style="color: red;"></span>
					</div>
					<div class="form-group">
						Enter Password : <input type="Password" name="password" id="password" class="form-control">
						<span id="password_error" style="color: red;"></span>
					</div>
					
					<div class="form-group">
							new admin? Register here &nbsp;<button  class="btn btn-outline-danger"><a href="registerPage" class="text-white">Register</a></button>
							
							</div>
					<div class="text-center">
				  
						<button type="submit" class="btn btn-primary" >Login</button>
					</div>
					</div>

             
                </div>
                </form>
                </div>
	                <script>
	                  			
	                  			function validateform()
	                  			{  
	                  				var name=document.getElementById("name").value;
	                  				var pass=document.getElementById("password").value;
	                  				if (name=="") 
	                  				{
	                  					document.getElementById("name_error").innerHTML="Please Enter the name";
	                  					return false;
	                  				}
	                  				else
	                  				{
	                  					document.getElementById("name_error").innerHTML="";
	                  				}
	                  				if (pass=="") 
	                  				{
	                  					document.getElementById("password_error").innerHTML="Please Enter the password";
	                  					return false;
	                  				}
	                  				else
	                  				{
		                  				document.getElementById("password_error").innerHTML="";
                  					
	                  				}

	                  			}
 
					</script>  
 
                </body>
                