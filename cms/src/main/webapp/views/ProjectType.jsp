<!--===============================================================================================-->  
<!DOCTYPE html>
<html>
<head>
  <title></title>
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


 <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>


    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">

   <!--  fontawsome cdn link -->

<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


<link rel="stylesheet" type="text/css" href="../css/user_style.css">
<style type="text/css">




</style>

</head>
<body style="background-color:#e1e4e8;">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

  <a class="navbar-brand" href="home"><img src="images/ciss.jpg" height="80" width="150"></a>
  

  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
  <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
  <ul class="navbar-nav mr-auto">
    <li class="nav-item active">
    <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
    </li>
    
     <li class="nav-item active">
    <a class="nav-link" href="#"><%=session.getAttribute("name")%> <span class="sr-only">(current)</span></a>
    </li>
     <li class="nav-item active">
    <a class="nav-link" href="Logout">logout <span class="sr-only">(current)</span></a>
    </li>
    
   
  </ul>
  
  </div>
</nav>


  


  <!-- Sidebar -->


<!-- main page content -->


<div id="page-content-warpper">
  <div class="container">
  
    <div class="row mt-5 ml-5">
      
              <div class="card shadow col-md-4 ml-5 mr-5 mt-sm-4 mt-10" style="width: 25rem; background: white;">
       <!--  <img class="card-img-top" src="../images/View Details.png" alt="Card image cap"> -->
        <div class="card-body">
         <img class="ml-4" src="images\single-building.png" height="280" width="220" />
        
        </div>
        <div class="card-footer" style="background:rgb(224, 65, 54); width: 23rem; margin-left: -18px !important;">
          <h3 ><a href="projectDetails" class="text-white">Single Tower/Wing</a></h3>
        </div>
      </div>

  <div class="card shadow col-md-4 ml-5  mt-sm-4 mt-10" style="width: 25rem; background: white;">
       <!--  <img class="card-img-top" src="../images/View Details.png" alt="Card image cap"> -->
        <div class="card-body">
          <img class="ml-4" src="images\multiple-building.png" height="280" width="220" />
        
        </div>
        <div class="card-footer" style="background:rgb(18, 115, 184); width: 23rem; margin-left: -18px !important;">
          <h3 ><a href="new_leads.jsp" class="text-white">Multi Towers/Wing</a></h3>
        </div>
      </div>

   
    
</body>
</html>