

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>LEAD DETAILS</title>
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

</head>


<body style="background-color: #e1e4e8;">
	<nav class="navbar navbar-expand-lg "
		style="background: rgb(92, 33, 92)"> <a class="navbar-brand"
		href="home"><img src="images/ciss.jpg" height="80" width="150"></a>
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
	</nav>
	</div>


	<div class="container ">
		<center>
			<div class="row">
				<div class="card shadow mx-auto mt-5" style="width: 22rem;">
					<div class="card-header text-white"
						style="background: rgb(18, 115, 184);">
						<h2>Wing Details</h2>
					</div>
					<div class="card-body">
						<table class="table">
						
						<c:forEach var="wingDetail" items="${wingDetails}">
							<tbody>
								<tr>
									<th>Name : </th>
									<td>${wingDetail.wingName}</td>
								</tr>
								<tr>
									<th>No. Of Floor : </th>
									<td>${wingDetail.noOfFloor}</td>
								</tr>
								<tr>
									<th>No. Of Slab : </th>
									<td>${wingDetail.noOfSlab}</td>
								</tr>
								<tr>
									<th>NO OF 1 BHK Flats : </th>
									<td>${wingDetail.oneBHK}</td>
								</tr>
								<tr>
									<th>NO OF 2 BHK Flats :</th>
									<td>${wingDetail.twoBHK}</td>
								</tr>
								<tr>
									<th>Total No Of Flats</th>
									<td>${wingDetail.totalFlats}</td>
								</tr>
							</tbody>
							
						</c:forEach>
						</table>

					</div>
					<div class="card-footer">

						<button class="btn btn-primary" onclick="goBack()">Back</button>
					</div>
				</div>
			</div>
	</div>
	</center>
	</div>


	<script>
		function goBack() {
			window.history.back();
		}
	</script>

</body>
</html>