<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>PROJECT DETAILS</title>
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

<!--  fontawsome cdn  -->

<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body style="background-color: #e1e4e8;">




	<nav class="navbar navbar-expand-lg"
		style="background: rgb(92, 33, 92)">



		<a class="navbar-brand" href="home"><img src="images/ciss.png"
			height="80" width="150"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>


		<div class="collapse navbar-collapse " id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto text-white">
				<li class="nav-item active"><a class="nav-link text-white"
					href="home">Home <span class="sr-only">(current)</span></a></li>

			</ul>



		</div>





		</div>
	</nav>



	<div class="container">
		<div class="row">
			<div
				class="card-header mt-5 col-md-12 text-md-center shadow text-white"
				style="background: rgb(18, 115, 184)">
				<h2>Purchaser Details</h2>
			</div>
		</div>
		<div class="row mt-4">

			<table class="table shadow bg-white">
				<thead class="bg-dark text-white">
					<tr>
						<td class="scope">SR NO.</td>
						<td>PURCHASER NAME</td>
						<td>CONTACT NO</td>
						<td>FLAT NO</td>
						<td>BUILDING NAME</td>
						<td>AREA</td>
						<td>FLAT COST</td>
						<td>MISC. COST</td>
						<td>NO. OF SLAB</td>
						<td>ACTION</td>

					</tr>

				</thead>
				<tbody>
					
		<c:forEach var="purchaserDetail" items="${purchaserDetails}">

					<tr>
						<td>${purchaserDetail.purchar_id}</td>
						<td>${purchaserDetail.fname} ${purchaserDetail.lname}</td>
						<td>${purchaserDetail.contactNo}</td>
						<td>${purchaserDetail.flatNo}</td>
						<td>${purchaserDetail.buildName}</td>
						<td>${purchaserDetail.area}</td>
						<td>${purchaserDetail.flatCost}</td>
						<td>${purchaserDetail.miscCost}</td>
						<td>${purchaserDetail.noOfSlab}</td>
						

						<td><a
							href="viewPaymentSchedule?pid=${purchaserDetail.purchar_id}"> <i
								class="fa fa-street-view"></i>&nbsp;Payment Schedule
						</a> 
						</td>




					</tr>

					</c:forEach>

				</tbody>

			</table>

		</div>
	</div>
	<div class="col-md-10">
		<center>
			<a class="btn btn-primary" href="home">Back</a>
		</center>
	</div>




	<!-- script to display alert if contact deleted successfully-->
	<script>
		function goBack() {
			window.history.back();
		}
	</script>

</body>
</html>