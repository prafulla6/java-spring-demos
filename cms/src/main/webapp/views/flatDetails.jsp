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
  <title>Project Details</title>
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
          <h1 class="ml-5">Flat Details</h1>
        </div>
        <!---================printing the message(error) value==========================--->
        <c:if test="${message!=null}">
          <p class="alert-warning mt-3">${message}</p>
        </c:if>
        <!---=================== card body stared=================================--->
        <div class="card-body">
          <form action="addFlatDetails" method="post" enctype="multipart/form-data"
            name="myform" onsubmit="return validate()">
            
<center>\
<h1>1 BHK Flats<h1>
</center>



<div class="form-group">
               Enter Area:-<input type="text" name="area" id="area"
                class="form-control" pattern=".{3,25}" 
                title="length should be between 3 to 25"> <span
                id="area_error" style="color: red; font-weight: bold;"></span>
            </div>





            <div class="form-group "> 
               Enter Cost of flat:-<input type="text" name="cflat" id="cflat"
                class="form-control" pattern=".{2,25}" title="length should be between 2 to 25"> <span id="cflat_error"
                style="color: red; font-weight: bold;"></span>

            </div>
            
             
            
             <div class="form-group "> 
              Enter Cost of Parking:-<input type="text" name="cparking" id="cparking"
                class="form-control" pattern=".{2,20}" title="length should be between 2 to 25"> <span id="cparking_error"
                style="color: red; font-weight: bold;"></span>
            </div>
             <div class="form-group "> 
              Enter Cost of amenities:-<input type="text" name="amenities" id="amenities"
                class="form-control" pattern=".{2,25}" title="length should be between 2 to 25"> <span id="amenities_error"
                style="color: red; font-weight: bold;"></span>
            </div>

          <center><h2>2 BHK Flats </center>
            
           <div class="form-group">
               Enter Area:-<input type="text" name="area2" id="area2"
                class="form-control" pattern=".{3,25}"
                title="length should be between 3 to 25"> <span
                id="area2_error" style="color: red; font-weight: bold;"></span>
            </div>





            <div class="form-group "> 
               Enter Cost of flat:-<input type="text" name="cflat2" id="cflat2"
                class="form-control" pattern=".{2,25}" title="length should be between 2 to 25"> <span id="cflat2_error"
                style="color: red; font-weight: bold;"></span>

            </div>
            
             
            
             <div class="form-group "> 
              Enter Cost of Parking:-<input type="text" name="cparking2" id="cparking2"
                class="form-control" pattern=".{2,20}" title="length should be between 2 to 25"> <span id="cparking2_error"
                style="color: red; font-weight: bold;"></span>
            </div>
             <div class="form-group "> 
              Enter Cost of amenities:-<input type="text" name="amenities2" id="amenities2"
                class="form-control" pattern=".{2,25}" title="length should be between 2 to 25"> <span id="amenities2_error"
                style="color: red; font-weight: bold;"></span>
            </div>


            </div>


<center>
              <a class="btn btn-danger mr-5" href="projectDetails">Back</a> <input
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
        var area=document.getElementById("area").value;
        var cflat=document.getElementById("cflat").value;
        var cparking=document.getElementById("cparking").value;
        var amenities=document.getElementById("amenities").value;

        var area2=document.getElementById("area2").value;
        var cflat2=document.getElementById("cflat2").value;
        var cparking2=document.getElementById("cparking2").value;
        var amenities2=document.getElementById("amenities2").value;





         if (isNaN(area) || area=="") 
       {

        document.getElementById("area_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("area_error").innerHTML="";
        
       }



          if (isNaN(cflat) || cflat=="") 
       {

        document.getElementById("cflat_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("cflat_error").innerHTML="";
        
       }


          if (isNaN(cparking) || cparking=="") 
       {

        document.getElementById("cparking_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("cparking_error").innerHTML="";
        
       }


          if (isNaN(amenities) || amenities=="") 
       {

        document.getElementById("amenities_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("amenities_error").innerHTML="";
        
       }




         if (isNaN(area2) || area2=="") 
       {

        document.getElementById("area2_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("area2_error").innerHTML="";
        
       }



          if (isNaN(cflat2) || cflat2=="") 
       {

        document.getElementById("cflat2_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("cflat2_error").innerHTML="";
        
       }


          if (isNaN(cparking2) || cparking2=="") 
       {

        document.getElementById("cparking2_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("cparking2_error").innerHTML="";
        
       }


          if (isNaN(amenities2) || amenities2=="") 
       {

        document.getElementById("amenities2_error").innerHTML="only numbers are allowed";
        return false;
       }
       else
       {
        document.getElementById("amenities2_error").innerHTML="";
        
       }





      }


    </script>

  
</body>
          </html>
    