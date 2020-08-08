
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
<title>Invoice Details</title>
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
<!--datepicker js -->
<script type="text/javascript" src="js/bootstrap-datepicker.js"></script>


<!-- datepicker css -->
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-datepicker.css">


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
					<h1 class="ml-5">Invoice Details</h1>
				</div>
				<!---================printing the message(error) value==========================--->
				<c:if test="${message!=null}">
					<p class="alert-warning mt-3">${message}</p>
				</c:if>
				<!---=================== card body stared=================================--->
				<div class="card-body">
					<form action="addInvoice" method="post"
						enctype="multipart/form-data" name="myform"
						onsubmit="return validate()">
						<div class="form-group">
							Invoice No :-<input type="text" name="invNo" id="invNo"
								class="form-control" pattern=".{3,25}"
								title="length should be between 3 to 25"> <span
								id="invNo_error" style="color: red; font-weight: bold;"></span>
						</div>
						<div class="form-group">
							<label for="datepicker1">Date : </label><input type="text"
								id="datepicker1" autocomplete="off" name="date"
								class="form-control"> <span id="date_error"
								style="color: red; font-weight: bold;"></span>
						</div>

						<div class="form-group">
							Amount Payable-<input type="text" name="amtPayable"
								id="amtPayable" class="form-control" pattern=".{3,25}"
								title="length should be between 3 to 25"> <span
								id="amtPayable_error" style="color: red; font-weight: bold;"></span>
						</div>


						<div class="form-group">
							Amount of CGST :-<input type="text" name="cgst" id="cgst"
								class="form-control" pattern=".{3,25}"
								title="length should be between 3 to 25"> <span
								id="cgst_error" style="color: red; font-weight: bold;"></span>
						</div>

						<div class="form-group">
							Amount of SGST :-<input type="text" name="sgst" id="sgst"
								class="form-control" pattern=".{3,25}"
								title="length should be between 3 to 25"> <span
								id="sgst_error" style="color: red; font-weight: bold;"></span>
						</div>

						<div class="form-group">
							Amount Payable -TDS :-<input type="text" name="tds" id="tds"
								class="form-control" pattern=".{3,25}"
								title="length should be between 3 to 25"> <span
								id="tds_error" style="color: red; font-weight: bold;"></span>
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
			function validate() {

				/*-===============================getting fields values=====================================================*/
				var invNo = document.getElementById("invNo").value;
				var amtPayable = document.getElementById("amtPayable").value;
				var cgst = document.getElementById("cgst").value;
				var sgst = document.getElementById("sgst").value;
				var tds = document.getElementById("tds").value;

				/*-===================================pname============================================================*/

				if (invNo == "" || invNo == null) {
					document.getElementById("invNo_error").innerHTML = "only numbers are allowed";
					return false;
				} else {
					document.getElementById("invNo_error").innerHTML = "";

				}

				if (isNaN(amtPayable) || amtPayable == "") {

					document.getElementById("amtPayable_error").innerHTML = "only numbers are allowed";
					return false;
				} else {
					document.getElementById("amtPayable_error").innerHTML = "";

				}

				if (isNaN(cgst) || cgst == "") {

					document.getElementById("cgst_error").innerHTML = "only numbers are allowed";
					return false;
				} else {
					document.getElementById("cgst_error").innerHTML = "";

				}

				if (isNaN(sgst) || sgst == "") {

					document.getElementById("sgst_error").innerHTML = "only numbers are allowed";
					return false;
				} else {
					document.getElementById("sgst_error").innerHTML = "";

				}

				if (isNaN(tds) || tds == "") {

					document.getElementById("tds_error").innerHTML = "only numbers are allowed";
					return false;
				} else {
					document.getElementById("tds_error").innerHTML = "";

				}

			}
		</script>
		<script type="text/javascript">
	  $(document).ready(function () {
		  $("input[id$=datepicker1]").datepicker({ dateFormat: "dd-mm-yy"});
		 
	    });
	  
	  
	  //go back function
	  
	  function goBack(){
		  window.history.back();
	  }
	  
	</script>
</body>
</html>
