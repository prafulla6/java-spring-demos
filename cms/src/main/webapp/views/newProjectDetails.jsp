
<%
	if (session.getAttribute("userDetails") == null) {
		response.sendRedirect("login"); //if username session is not active then redirect to login page
	}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<title>Project Details</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

<!-- jQuery calender link -->
<link rel="stylesheet" type="text/css" href="jquery-ui.min.css">

<!-- google font link -->
<link
	href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah&display=swap"
	rel="stylesheet">


<style type="text/css">
.marketing_person-card {
	margin-top: 140px;
	background: #2a626b;
}

.navbar {
	position: absolute;
	margin-left: 15px;
	background: #2a626b;
	height: 120px;
}
</style>
</head>
<body
	style="background: url(images/aeroplane.jpg); background: #e9ecef;">
	<div class="row">
		<nav class="navbar navbar-expand-lg col-md-12">
			<a class="navbar-brand" href="home"><img src="images/ciss.jpg"
				class="img-responsive" height="100" width="220"> <br>
				<h6 class="text-white"
					style="font-family: 'Gloria Hallelujah', cursive; position: absolute; top: 90px; left: 85px;"></h6></a>


			<div class="collapse navbar-collapse " id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto text-white">
					<li class="nav-item active"><a class="nav-link text-white"
						href="home">Home <span class="sr-only">(current)</span></a></li>

				</ul>



			</div>

		</nav>
	</div>
	<div class="container">
		<!--    main container -->
		<div class="row">
			<div class="card mx-auto marketing_person-card text-white"
				style="width: 35rem;">
				<!-- card started -->
				<div class="card-header" style="background: rgb(224, 65, 54)">
					<h1 class="ml-5">Project Details</h1>
				</div>
				<!---================printing the message(error) value==========================--->
				<c:if test="${message!=null}">
					<p class="alert-warning mt-3">${message}</p>
				</c:if>
				<!---=================== card body stared=================================--->
				<div class="card-body">
					<form action="addProject" method="post"
						enctype="multipart/form-data" name="myform"
						onsubmit="return validate()">
						<div class="form-group">
							Name of Project:-<input type="text" name="pname" id="pname"
								class="form-control" pattern=".{3,25}"
								title="length should be between 3 to 25"> <span
								id="pname_error" style="color: red; font-weight: bold;"></span>
						</div>
						<div class="form-group">
							Maharera No:-<input type="text" name="reraNo" id="mahareraNo"
								class="form-control" pattern=".{3,25}"
								title="length should be between 3 to 25"> <span
								id="mahareraNo_error" style="color: red; font-weight: bold;"></span>
						</div>

						<div class="form-group">
							Location:-<input type="text" name="plocation" id="location"
								class="form-control" pattern=".{3,25}"
								title="length should be between 3 to 25"> <span
								id="location_error" style="color: red; font-weight: bold;"></span>
						</div>


						<div class="form-group">
							City:-<input type="text" name="pcity" id="city"
								class="form-control" pattern=".{3,25}"
								title="length should be between 3 to 25"> <span
								id="city_error" style="color: red; font-weight: bold;"></span>
						</div>


						<div class="form-group">
							<p style="color: rgb(242, 2, 2);">No of Wings:-</p>
							<input type="text" name="noOfWing" id="noOfWings"
								class="form-control" pattern=".{1,25}"
								title="length should be between 2 to 25"> <input
								type="button" class="btn btn-primary" value="set"
								onclick="generate()" /> <span id="noOfWings_error"
								style="color: red; font-weight: bold;"></span>
						</div>

						<div class="form-group" id="ch"></div>

						<center>
							<center>
								<input type="submit" href="flatDetails" class="btn btn-primary"
									value="Next">

							</center>
					</form>
				</div>
				<!---=================== card body ended=================================--->
			</div>
		</div>

		<script type="text/javascript">
			function generate() {

				var a = parseInt(document.getElementById("noOfWings").value);
				var ch = document.getElementById("ch");

				for (i = 1; i < a + 1; i++) {
					var input = document.createElement("input");
					input.setAttribute("name", "nameOfWing")
					input.setAttribute("class", "form-control mt-3")

					ch.appendChild(input);
				}
			}

			function validate() {

				/*-===============================getting fields values=====================================================*/
				var pname = document.getElementById("pname").value;
				var mahareraNo = document.getElementById("mahareraNo").value;
				var location = document.getElementById("location").value;
				var city = document.getElementById("city").value;
				var noOfWings = document.getElementById("noOfWings").value;

				/*-===================================pname============================================================*/

				if (pname == "" || pname == null) {
					document.getElementById("pname_error").innerHTML = "Please enter the name";
					return false;
				} else {
					document.getElementById("pname_error").innerHTML = "";
				}
				if (!/^[a-zA-Z ]*$/g.test(document.myform.pname.value)) {
					document.getElementById("pname_error").innerHTML = "Please enter only characters";
					return false;
				}

				
				/*-===================================mahareraNo============================================================*/

				if (isNaN(mahareraNo) || mahareraNo == "") {

					document.getElementById("mahareraNo_error").innerHTML = "only numbers are allowed";
					return false;
				} else {
					document.getElementById("mahareraNo_error").innerHTML = "";

				}

				/*-===================================Location============================================================*/
				
				if (location == "" || location == null) {
					document.getElementById("location_error").innerHTML = "Please enter the name";
					return false;
				} else {
					document.getElementById("location_error").innerHTML = "";
				}
				if (!/^[a-zA-Z ]*$/g.test(document.myform.location.value)) {
					document.getElementById("location_error").innerHTML = "Please enter only characters";
					return false;
				}
				/*-===================================City============================================================*/
				if (city == "" || city == null) {
					document.getElementById("city_error").innerHTML = "Please enter the City";
					return false;
				} else {
					document.getElementById("city_error").innerHTML = "";
				}
				if (!/^[a-zA-Z ]*$/g.test(document.myform.city.value)) {
					document.getElementById("city_error").innerHTML = "Please enter only characters";
					return false;
				}
				//====================================noOfWings=========================================================

				if (isNaN(noOfWings) || noOfWings == "") {

					document.getElementById("noOfWings_error").innerHTML = "only numbers are allowed";
					return false;
				} else {
					document.getElementById("noOfWings_error").innerHTML = "";

				}

				

			}
		</script>
		<!---======================================script tag ends=======================================--->
</body>
</html>
