
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	if(session.getAttribute("userDetails")==null)
	{
		response.sendRedirect("login");     //if username session is not active then redirect to login page
	}
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADMIN HOME</title>
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


<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
	integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ"
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"
	integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY"
	crossorigin="anonymous"></script>


<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap"
	rel="stylesheet">

<!--  fontawsome cdn link -->

<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


<link rel="stylesheet" type="text/css" href="css/admin_style.css">
<style type="text/css">
</style>


</head>
<body>
	<nav class="navbar navbar-expand-lg " style="background: rgb(92, 33, 92)"> <a
		class="navbar-brand" href="#"><img src="images/ciss.png"
		height="80" width="150" /></a> <br>
	
	</a>

	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>


	</nav>

	<div class="container"></div>


	<div class="wrapper " style="font-family: 'Nanum Gothic', sans-serif;">
		<!-- Sidebar -->
		<nav id="sidebar">
		<div class="sidebar-header" style="background: rgb(18, 115, 184)">
			<h5>
				<i class="fa fa-user-circle fa-2x mr-2"></i>Welcome Admin
			</h5>
		</div>

		<ul class="list-unstyled components">
			
			<li class="active" >
			<a href="#viewSubmenu1"
				data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background:rgb(92, 33, 92)"><i
					class="fa fa-eye mr-3"></i>Vendor</a>
				<ul class="collapse list-unstyled" id="viewSubmenu1" >
					<li><a href="vendorDetails" id="addVendor">Add New Vendor </a></li>
					<li><a href="viewVendorDetails" id="vendorDetails">Vendor Details</a></li>

				</ul></li>
				
					<li class="active" >
			<a href="#viewSubmenu2"
				data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background:rgb(224, 65, 54)"><i
					class="fa fa-eye mr-3"></i>Purchaser</a>
				<ul class="collapse list-unstyled" id="viewSubmenu2" >
					<li><a href="newPurchaser" id="addPurchaser">Add New Purchaser </a></li>
					<li><a href="viewPurchaser"id="purchaseDetails">Purchaser Details</a></li>

				</ul></li>



					<li class="active" >
			<a href="#viewSubmenu3"
				data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background:rgb(224, 65, 54)"><i
					class="fa fa-eye mr-3"></i>Projects</a>
				<ul class="collapse list-unstyled" id="viewSubmenu3" >
					<li><a href="projectType">Add New Project </a></li>
					<li><a href="viewProjectDetails">Projects Details</a></li>

				</ul></li>
				
				<li class="active" >
			<a href="#viewSubmenu4"
				data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background:rgb(92, 33, 92)"><i
					class="fa fa-eye mr-3"></i>Project Status</a>
				<ul class="collapse list-unstyled" id="viewSubmenu4" >
					<li><a href="vendorDetails">Add New Vendor </a></li>
					<li><a href="#">Vendor Details</a></li>

				</ul></li>
				
				
					
				<li style="background:rgb(18, 115, 184)"><a href="new_marketing_person.jsp"><i
					class="fa fa-plus-circle mr-3"></i>Issue Allotment Letter</a></li>
				
				

		<!-- 	<li class="active">
			<a href="leads_graph.jsp"
				style="background-color:rgb(18, 115, 184);" 
				aria-expanded="false" class="dropdown-toggle"><i class="fa fa-eye mr-3"></i>Leads Graph</a>
				<!-- <ul class="collapse list-unstyled" id="viewSubmenu2">
					<li><a href="#"
						style="background-color:rgb(18, 115, 184);"></a></li>
					<li><a href="leads_graph.jsp"
						style="background-color: rgb(18, 115, 184);">view graph</a></li>

				</ul>-->
				</li> -->
			




			
			<li><a href="login" ><i class="fa fa-sign-out-alt mr-3"></i>Logout</a>
			</li>
		</ul>
		</nav>


		<!-- main page content -->


		<div id="page-content-warpper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12"></div>
				</div>
			</div>

		</div>
	</div>

	</div>

</body>
</html>