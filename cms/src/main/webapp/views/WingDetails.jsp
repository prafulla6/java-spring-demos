
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
                    <h1 class="ml-5">Wing Details</h1>
                </div>
                <!---================printing the message(error) value==========================--->
                <c:if test="${message!=null}">
                    <p class="alert-warning mt-3">${message}</p>
                </c:if>
                <!---=================== card body stared=================================--->
                <div class="card-body">
                    <form action="addWingDetails" method="post"
                        enctype="multipart/form-data" name="myform"
                        onsubmit="return validate()">
                            <div class="form-group">
                              <label for="sel1">Select list:</label>
                              <select class="form-control" name="wingName" id="sel1">
                                <option>Wing A</option>
                                <option>Wing B</option>
                                <option>Wing C</option>
                              </select>
                            </div>


                        <div class="form-group">
                            No Of Floor:-<input type="text" name="noOfFloor" id="noOfFloor"
                                class="form-control" pattern=".{1,25}"
                                title="length should be between 1 to 25"> <span
                                id="noOfFloor_error" style="color: red; font-weight: bold;"></span>
                        </div>
                        <div class="form-group">
                           No.Of Slab-<input type="text" name="noOfSlab" id="noOfSlab"
                                class="form-control" pattern=".{1,25}"
                                title="length should be between 1 to 25"> <span
                                id="noOfSlab_error" style="color: red; font-weight: bold;"></span>
                        </div>

                        <div class="form-group">
                            No.Of 1 BHK:-<input type="text" name="oneBHK" id="oneBHK"
                                class="form-control" pattern=".{1,3}"
                                title="length should be between 1 to 25"> <span
                                id="oneBHK_error" style="color: red; font-weight: bold;"></span>
                        </div>


                        <div class="form-group">
                            No.Of 2 BHK:-<input type="text" name="twoBHK" id="twoBHK"
                                class="form-control" pattern=".{1,3}"
                                title="length should be between 3 to 25" 
                                onchange='generate()'> <span
                                id="twoBHK_error" style="color: red; font-weight: bold;"></span>
                        </div>

                        <div class="form-group">
                            Total No Of Flats:-<input type="text" name="totalFlats" id="totalFlats"
                                class="form-control" pattern=".{2,25}"
                                title="length should be between 2 to 25"> <span
                                id="totalFlats_error" style="color: red; font-weight: bold;"></span>
                        </div>


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

                var a = parseInt(document.getElementById("oneBHK").value);
                var b = parseInt(document.getElementById("twoBHK").value);
                var c=a+b;
                document.getElementById("totalFlats").value=c;
               
            }

            function validate() {

                /*-===============================getting fields values=====================================================*/
                var noOfFloor = document.getElementById("noOfFloor").value;
                var noOfSlab = document.getElementById("noOfSlab").value;
                var oneBHK = document.getElementById("oneBHK").value;
               var twoBHK = document.getElementById("twoBHK").value;
               var totalFlats=document.getElementById("totalFlats").value;
                
                /*-===================================noOfFloor===========================================================*/

                if (isNaN(noOfFloor ) || noOfFloor  == "") {

                    document.getElementById("noOfFloor_error").innerHTML = "only numbers are allowed";
                    return false;
                } else {
                    document.getElementById("noOfFloor_error").innerHTML = "";

                }
                //====================================noOfSlab=========================================================
                 if (isNaN(noOfSlab) || noOfSlab == "") {

                    document.getElementById("noOfSlab_error").innerHTML = "only numbers are allowed";
                    return false;
                } else {
                    document.getElementById("noOfSlab_error").innerHTML = "";

                }
             //====================================oneBHK=========================================================



                  if (isNaN(oneBHK) || oneBHK == "") {

                    document.getElementById("oneBHK_error").innerHTML = "only numbers are allowed";
                    return false;
                } else {
                    document.getElementById("oneBHK_error").innerHTML = "";

                }
                 //=========================================twoBHK===========================================================

                if (isNaN(twoBHK) || twoBHK == "") {

                    document.getElementById("twoBHK_error").innerHTML = "only numbers are allowed";
                    return false;
                } else {
                    document.getElementById("twoBHK_error").innerHTML = "";
                }
                //==========================================totalFlats==========================================================

                if (isNaN(totalFlats) || totalFlats == "") {

                    document.getElementById("totalFlats_error").innerHTML = "only numbers are allowed";
                    return false;
                } else {
                    document.getElementById("totalFlats_error").innerHTML = "";
                }



 
            }
        </script>
        <!---======================================script tag ends=======================================--->
</body>
</html>
