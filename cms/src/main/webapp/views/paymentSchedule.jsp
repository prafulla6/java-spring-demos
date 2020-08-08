<%
	if(session.getAttribute("userDetails")==null)
	{
		response.sendRedirect("login");     //if username session is not active then redirect to login page
	}
	
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<title>ADD SALES PERSON</title>
		<meta charset="UTF-8"> 
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
.marketing_person-card
{
	margin-top: 140px;
	
	background:#2a626b;
}
.navbar
{
	position: absolute;
	margin-left: 15px;
	background:#2a626b;
	height: 120px;

}	

</style>
</head>
<body style="background: url(images/aeroplane.jpg);background: #e9ecef;">
	<div class="row">
		<nav class="navbar navbar-expand-lg col-md-12">
			<a class="navbar-brand" href="home"><img
				src="images/ciss.jpg" class="img-responsive" height="100"
				width="220"> <br>
			<h6 class="text-white" style="font-family: 'Gloria Hallelujah', cursive; position: absolute; top: 90px; left: 85px;"></h6></a>


  <div class="collapse navbar-collapse " id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto text-white">
      <li class="nav-item active">
        <a class="nav-link text-white" href="home" >Home <span class="sr-only">(current)</span></a>
      </li>
   
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
				<div class="card-header" style="background:rgb(224, 65, 54)">
					<h1 class="ml-5">SCHEDULE OF PAYMENT</h1>
				</div>
				
				<!---=================== card body stared=================================--->
				<div class="card-body">
					<form action="paymentSchedule" method="post" enctype="multipart/form-data"
						name="myform" onsubmit="return validate()">
						<div class="form-group">
							Upon Execution Of ASF:-<input type="text" name="asf" id="asf"
								class="form-control" value="${purchaserDet.flatCost*10/100 }"
								title="length should be between 1 to 25"> <span
								id="asf_error" style="color: red; font-weight: bold;"></span>
						</div>


				<div class="form-group">
							No Of floors:-<input  type="text" name="noOfFloor"  id="noOfFloor"
								class="form-control" pattern=".{1,25}" value="${purchaserDet.noOfSlab-1 }"
								title="length should be between 1 to 25"> <span
								id="noOfFloor_error" style="color: red; font-weight: bold;"></span>
						</div>


						<div class="form-group">
							Plinth:-<input type="text" name="plinth" id="plinth"
								class="form-control" pattern=".{2,25}" value="${purchaserDet.flatCost*8/100 }"
								title="length should be between 3 to 25"> <span
								id="plinth_error" style="color: red; font-weight: bold;"></span>
						</div>
						<c:set var="slab1" scope="session" value="${purchaserDet.flatCost *42/100}"/>
						<c:set var="slab" scope="session" value="${slab1/purchaserDet.noOfSlab}"/>
						<c:set var="i" scope="session" value="1"/>
						<c:forEach var="i" begin="1" end="${purchaserDet.noOfSlab }">
						<div class="form-group">
							 Slab ${i }:<input type="text" name="firstSlab" id="firstSlab"
								class="form-control" value="${slab}"> 
								<span id="firstSlab_error"
								style="color: red; font-weight: bold;"></span>
						</div>
						</c:forEach>
						<input type="hidden" name="mySlab" value="${slab1 }"/>
						
						<div class="form-group">
							External Plaster:-
							<input type="text" name="externalPlaster" id="externalPlaster"
								class="form-control" value="${purchaserDet.flatCost*5/100 }">
							<span id="externalPlaster_error" style="color: red; font-weight: bold;"></span>
						</div>
						<div class="form-group">
							Internal Plaster:-<input type="text" name="internalPlaster" id="internalPlaster"
								class="form-control" value="${purchaserDet.flatCost*5/100 }"> <span id="internalPlaster_error"
								style="color: red; font-weight: bold;"></span>
						</div>
						<div class="form-group">
							Plumbing Fitting:-<input type="text" name="plumbing" id="plumbing"
								class="form-control" value="${purchaserDet.flatCost*6/100 }"> <span id="plumbing_error" 
								style="color: red; font-weight: bold;"></span>
						</div>
						<div class="form-group">
							Electrical Fitting:-<input type="text" name="electrical" id="electrical"
								class="form-control" value="${purchaserDet.flatCost*6/100 }"> <span id="electrical_error"
								style="color: red; font-weight: bold;"></span>
						</div>
						<div class="form-group">
							Flooring :-<input type="text" name="flooring" id="flooring"
								class="form-control" value="${purchaserDet.flatCost*10/100 }"> <span id="flooring_error"
								style="color: red; font-weight: bold;"></span>
						</div>
            <div class="form-group">
              Painting :-<input type="text" name="painting" id="painting"
                class="form-control" value="${purchaserDet.flatCost*5/100 }"> <span id="painting_error"
                style="color: red; font-weight: bold;"></span>
            </div>
             <div class="form-group">
              Possesion :-<input type="text" name="possesion" id="possesion"
                class="form-control" value="${purchaserDet.flatCost*3/100 }"> <span id="possesion_error"
                style="color: red; font-weight: bold;"></span>
            </div>
						

						<center>
							<a class="btn btn-danger mr-5" href="newPurchaser">Back</a> <input
								type="submit" class="btn btn-primary" value="Submit">

						</center>

					</form>
				</div>
				<!---=================== card body ended=================================--->
			</div>
		</div>

		<script type="text/javascript">

          function validate()
   {
        	  
/*-===============================getting fields values=====================================================*/ 	  
          var asf=document.getElementById("asf").value;
          var noOfFloor=document.getElementById("noOfFloor").value;
          var plinth=document.getElementById("plinth").value;
          var firstSlab=document.getElementById("firstSlab").value;
          var externalPlaster=document.getElementById("externalPlaster").value;
          var internalPlaster=document.getElementById("internalPlaster").value;
          var plumbing=document.getElementById("plumbing").value;
          var electrical=document.getElementById("electrical").value;
          var flooring=document.getElementById("flooring").value;
          var painting=document.getElementById("painting").value;
          var possesion=document.getElementById("possesion").value;
/*-===================================no1bhk============================================================*/   

      
           if (isNaN(asf) || asf=="") 
       {

        document.getElementById("asf_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("asf_error").innerHTML="";
       }
        



           if (isNaN(noOfFloor) || noOfFloor=="") 
       {

        document.getElementById("noOfFloor_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("noOfFloor_error").innerHTML="";
       }



       
           if (isNaN(plinth) || plinth=="") 
       {

        document.getElementById("plinth_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("plinth_error").innerHTML="";
       }




           if (isNaN(firstSlab) || firstSlab=="") 
       {

        document.getElementById("firstSlab_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("firstSlab_error").innerHTML="";
       }

      
          if (isNaN(externalPlaster) || externalPlaster=="") 
       {

        document.getElementById("externalPlaster_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("externalPlaster_error").innerHTML="";
       }



          if (isNaN(internalPlaster) || internalPlaster=="") 
       {

        document.getElementById("internalPlaster_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("internalPlaster_error").innerHTML="";
       }

      
       if (isNaN(plumbing) || plumbing=="") 
       {

        document.getElementById("plumbing_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("plumbing_error").innerHTML="";
       }


        if (isNaN(electrical) || electrical=="") 
       {

        document.getElementById("electrical_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("electrical_error").innerHTML="";
       }


       if (isNaN(flooring) || flooring=="") 
       {

        document.getElementById("flooring_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("flooring_error").innerHTML="";
       }


       if (isNaN(painting) || painting=="") 
       {

        document.getElementById("painting_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("painting_error").innerHTML="";
       }

       if (isNaN(possesion) || possesion=="") 
       {

        document.getElementById("possesion_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("possesion_error").innerHTML="";
       }

  }
        </script>
		<!---======================================script tag ends=======================================--->
</body>
          </html>
    