
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
<title>Vendor Details</title>
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
					<h1 class="ml-5">Vendor Details</h1>
				</div>
				<!---================printing the message(error) value==========================--->
				<c:if test="${message!=null}">
					<p class="alert-warning mt-3">${message}</p>
				</c:if>
				<!---=================== card body stared=================================--->
				<div class="card-body">
					<form action="addVendor" method="post"
						enctype="multipart/form-data" name="myform"
						onsubmit="return validate()">
						<div class="form-group">
							Vendor Name:-<input type="text" name="vname" id="vname"
								class="form-control" pattern=".{3,100}"
								title="length should be between 3 to 100"> <span
								id="vname_error" style="color: red; font-weight: bold;"></span>
						</div>
						<div class="form-group">
							<label for="sel1">Type Of Registration:</label> <select
								class="form-control" name="regType" id="regType">
								<option>Propreatory</option>
								<option>Partnership</option>
								<option>Pvt. Ltd. Compony</option>
							</select>
						</div>

						<div class="form-group">
							Pan No:-<input type="text" name="panNo" id="panNo"
								class="form-control" pattern=".{3,25}"
								title="length should be between 3 to 25"> <span
								id="panNo_error" style="color: red; font-weight: bold;"></span>
						</div>


						<div class="form-group">
							GST No :-<input type="text" name="gstNo" id="gstNo"
								class="form-control" pattern=".{3,25}"
								title="length should be between 3 to 25"> <span
								id="gstNo_error" style="color: red; font-weight: bold;"></span>
						</div>

						<div class="form-group">
							Address :-<input type="text" name="address" id="address"
								class="form-control" pattern=".{3,100}"
								title="length should be between 3 to 100"> <span
								id="address_error" style="color: red; font-weight: bold;"></span>
						</div>

						<div class="form-group">
							<label for="sel1">Type Of Vendor:</label> <select
								class="form-control" name="typeOfVendor" id="typeOfVendor">
								<option>Cement Supplier</option>
								<option>Steel Supplier</option>
								<option>metal-1</option>
								<option>Metal-2</option>
								<option>Sand Supplier</option>
								<option>Plumbing Fitting Supplier</option>
								<option>Electrical Fitting Supplier</option>
								<option>Civil Contractor</option>
								<option>Electrical Contractor</option>
								<option>Labour Contractor</option>
								<option>Architecture</option>
								<option>Structural consultant</option>
								<option>Advocat</option>
								<option>Law Firm</option>
							</select>
						</div>
						<div class="form-group">
							Credit Period Offer-<input type="text" name="creaditOffer"
								id="creaditOffer" class="form-control" pattern=".{1,25}"
								title="length should be between 1 to 25"> <span
								id="creaditOffer_error" style="color: red; font-weight: bold;"></span>
						</div>

						<div class="form-group">
							<label for="workOrder">Copy Of WorkOrder :</label> <input
								type="file" accept="application/pdf" name="files" id="workOrder"
								class="form-control"> <span id="workOrder_error"
								style="color: red; font-weight: bold;"></span>
						</div>

						<div class="form-group">
							<label for="invoiceCopy">Copy Of invoice as per stage of
								work :</label> <input type="file" accept="application/pdf" name="files"
								id="invoiceCopy" class="form-control"> <span
								id="invoiceCopy_error" style="color: red; font-weight: bold;"></span>
						</div>

						<div class="form-group">
							Outstanding Payment (if any) :<input type="text"
								name="outstandingPayment" id="outstandingPayment"
								class="form-control" pattern=".{1,25}"
								title="length should be between 1 to 25"> <span
								id="outstandingPayment_error"
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
			function validate() {

				/*-===============================getting fields values=====================================================*/
				var vname = document.getElementById("vname").value;
				var panNo = document.getElementById("panNo").value;
				var gstNo = document.getElementById("gstNo").value;
				var address = document.getElementById("address").value;
				var creaditOffer = document.getElementById("creaditOffer").value;
				var workOrder = document.getElementById("workOrder").value;
				var invoiceCopy = document.getElementById("invoiceCopy").value;
				var outstandingPayment = document
						.getElementById("outstandingPayment").value;

				/*-===================================vname============================================================*/

				if (vname == "" || vname == null) {
					document.getElementById("vname_error").innerHTML = "Please enter the name";
					return false;
				} else {
					document.getElementById("vname_error").innerHTML = "";
				}
				if (!/^[a-zA-Z ]*$/g.test(document.myform.vname.value)) {
					document.getElementById("vname_error").innerHTML = "Please enter only characters";
					return false;
				}

				if (panNo == "" || panNo == null) {
					document.getElementById("panNo_error").innerHTML = "Please enter the proper PanNo";
					return false;
				} else {
					document.getElementById("panNo_error").innerHTML = "";
				}

				if (gstNo == "" || gstNo == null) {
					document.getElementById("gstNo_error").innerHTML = "Please enter the proper GST No";
					return false;
				} else {
					document.getElementById("gstNo_error").innerHTML = "";
				}

				if (address == "" || address == null) {
					document.getElementById("address_error").innerHTML = "Please enter the address";
					return false;
				} else {
					document.getElementById("address_error").innerHTML = "";
				}

				if (isNaN(creaditOffer) || creaditOffer == "") {

					document.getElementById("creaditOffer_error").innerHTML = "only numbers are allowed";
					return false;
				} else {
					document.getElementById("creaditOffer_error").innerHTML = "";

				}

				if (workOrder == "" || workOrder == null) {
					document.getElementById("workOrder_error").innerHTML = "Please select the PDFfile";
					return false;
				} else {
					document.getElementById("workOrder_error").innerHTML = "";
				}

				if (invoiceCopy == "" || invoiceCopy == null) {
					document.getElementById("invoiceCopy_error").innerHTML = "Please select the PDFfile";
					return false;
				} else {
					document.getElementById("invoiceCopy_error").innerHTML = "";
				}
				if (isNaN(outstandingPayment) || outstandingPayment == "") {

					document.getElementById("outstandingPayment_error").innerHTML = "only numbers are allowed";
					return false;
				} else {
					document.getElementById("outstandingPayment_error").innerHTML = "";

				}

			}
		</script>
		<!---======================================script tag ends=======================================--->
</body>
</html>
