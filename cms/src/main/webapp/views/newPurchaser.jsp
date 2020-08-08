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
		<!--    main comtainer -->
		<div class="row">
			<div class="card mx-auto marketing_person-card text-white"
				style="width: 35rem;">
				<!-- card started -->
				<div class="card-header" style="background:rgb(224, 65, 54)">
					<h1 class="ml-5">ADD NEW PURCHASER</h1>
				</div>
				<!---=================== card body stared=================================--->
				<div class="card-body">
					<form action="addPurchaser" method="post" enctype="multipart/form-data"
						name="myform" onsubmit="return validate()">
						<div class="form-group">
							First Name:-<input type="text" name="fname" id="fname"
							 value="${purchaserDet.fname}"
								class="form-control" pattern=".{3,25}" 
								title="length should be between 3 to 25"> <span
								id="fname_error" style="color: red; font-weight: bold;"></span>
						</div>


						<div class="form-group">
							Last Name:-<input type="text"  name="lname" id="lname"
							value="${purchaserDet.lname}"
								class="form-control" pattern=".{3,25}" 
								title="length should be between 3 to 25"> <span
								id="lname_error" style="color: red; font-weight: bold;"></span>
						</div>
						<div class="form-group">
							Contact No:-<input type="text"   pattern="[789][0-9]{9}" 
							name="contactNo" id="contactNo"  value="${purchaserDet.contactNo}" title="please enter valid no"
								class="form-control"> <span id="contactNo_error"
								style="color: red; font-weight: bold;"></span>
						</div>
						<div class="form-group">
							Flat No:-<input type="text"  name="flatNo" id="flatNo"
							 value="${purchaserDet.flatNo}"
								class="form-control"> <span id="flatNo_error"
								style="color: red; font-weight: bold;"></span>
						</div>
						<div class="form-group">
							Building Name:
							<input type="text" name="buildName"   id="buildName"
							value="${purchaserDet.buildName}"
								class="form-control">
							<span id="build_error" style="color: red; font-weight: bold;"></span>
						</div>
						<div class="form-group">
							Area(Sqr.ft):-<input type="text" name="area" value="${purchaserDet.area}" id="area" 
								class="form-control"> <span id="area_error"
								
								style="color: red; font-weight: bold;"></span>
						</div>
						<div class="form-group">
							Cost of Flat :-<input type="text" name="flatCost" id="flatCost"
							value="${purchaserDet.flatCost}"  
              							class="form-control"> <span id="flatCost_error"
								style="color: red; font-weight: bold;"></span>
						</div>
						<div class="form-group">
							Cost Of Misc. Services :-<input type="text" name="miscCost" id="miscCost" 
							value="${purchaserDet.miscCost}"
								class="form-control"> <span id="miscCost_error"
								style="color: red; font-weight: bold;"></span>
						</div>
						<div class="form-group">
							No. Of Slab :-<input type="text" name="noOfSlab" id="noOfSlab" 
								value="${purchaserDet.noOfSlab}"
								class="form-control"> <span id="noOfSlab_error"
								style="color: red; font-weight: bold;"></span>
						</div>
						

						<center>
							 <input
								type="submit" class="btn btn-primary" href="addPurchaser" value="Next">

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
         
          var fname=document.getElementById("fname").value;
          var lname=document.getElementById("lname").value;
          var contactNo=document.getElementById("contactNo").value;
          var flatNo=document.getElementById("flatNo").value;
          var build=document.getElementById("buildName").value;
          var area=document.getElementById("area").value;
          var flatCost=document.getElementById("flatCost").value;
          var miscCost=document.getElementById("miscCost").value;
          var noOfSlab=document.getElementById("noOfSlab").value;

         
    //-===================================firstname============================================================*/ 	

         if (fname == "" || fname == null) 
          {
            document.getElementById("fname_error").innerHTML = "Please enter the name";
            return false;
          } 
          else 
          {
              document.getElementById("fname_error").innerHTML = "";
          }
          if (!/^[a-zA-Z ]*$/g.test(document.myform.fname.value)) 
          {
              document.getElementById("fname_error").innerHTML = "Please enter only characters";
              return false;
          }
          //========================================lastname===========================================================*/

 if (lname == "" || lname == null) 
          {
            document.getElementById("lname_error").innerHTML = "Please enter the name";
            return false;
          } 
          else 
          {
              document.getElementById("lname_error").innerHTML = "";
          }
          if (!/^[a-zA-Z ]*$/g.test(document.myform.lname.value)) 
          {
              document.getElementById("lname_error").innerHTML = "Please enter only characters";
              return false;
          }

        //====================================contact number=========================================================//
        if (contactNo == "") 
       {
        document.getElementById("contactNo_error").innerHTML = "Please Enter the Mobile";
        return false;
       } 
      else 
      {
        if (!/^\d{10}$/.test(document.myform.contactNo.value)|| !(contactNo.length == 10)) 
        {
          document.getElementById("contactNo_error").innerHTML = "Invalid number";
          return false;
        } 
        else 
        {
          document.getElementById("contactNo_error").innerHTML = "";
        }
      }


       //====================================Flat number=========================================================//
      
           if (isNaN(flatNo) || flatNo=="") 
       {

        document.getElementById("flatNo_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("flatNo_error").innerHTML="";
        
       }
 //====================================BuildingName=========================================================//
     

 if (build == "" || build == null) 
          {
            document.getElementById("build_error").innerHTML = "Please enter the name";
            return false;
          } 
          else 
          {
              document.getElementById("build_error").innerHTML = "";
          }
         
//====================================Flat number=========================================================//
      
           if (isNaN(flatNo) || flatNo=="") 
       {

        document.getElementById("flatNo_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("flatNo_error").innerHTML="";
        
       }

     //====================================BuildingName=========================================================//
     

 if (build == "" || build == null) 
          {
            document.getElementById("build_error").innerHTML = "Please enter the name";
            return false;
          } 
          else 
          {
              document.getElementById("build_error").innerHTML = "";
          }
         



 //====================================area=========================================================//



     if (isNaN(area) || area=="") 
       {

        document.getElementById("area_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("area_error").innerHTML="";
       }
        

//====================================flatCost=========================================================//

if (isNaN(flatCost) || flatCost=="") 
       {

        document.getElementById("flatCost_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("flatCost_error").innerHTML="";
       }

//====================================msCost=========================================================//

if (isNaN(miscCost) || miscCost=="") 
       {

        document.getElementById("miscCost_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("miscCost_error").innerHTML="";
       }

//====================================msCost=========================================================//

if (isNaN(noOfSlab) || noOfSlab=="") 
       {

        document.getElementById("noOfSlab_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("noOfSlab_error").innerHTML="";
       }


    }

        </script>
		<!---======================================script tag ends=======================================--->
</body>
          </html>
    