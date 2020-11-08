<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Servitor</title>


    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/talk.css" rel="stylesheet">

  
  </head>
 
  <body data-spy="scroll" data-target="#my-navbar">
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp">Servitor</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
                                    <li><div class="navbar-text"><p>Welcome: Himanshu Shivhare </p></div></li>
					<li><a href="index.jsp">Home</a></li>
					<li><a href="Logout.jsp">Logout</a><li>
				</ul>			
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="panel panel-default text center">
			<div class="panel-heading text-center">
				<h3>Our Workers!</h3>
			</div>
		</div>
	</div>
	<hr>
	<div style="margin-top : -70px;">
	<form action="talk.jsp" class="form-horizontal" style="margin-left : 120px;">
                    <div class="col-lg-1">
                            <div class="form-group">
                            </br>
                            </br>
                            <input type="hidden" name="temail" value=" ............"/>
                            <button type="search" class="btn btn-primary" >Pending Workers</button>
                            </div>
                    </div>
      </form>
      <form action="talk.jsp" class="form-horizontal" style="margin-left : 25%;">
                    <div class="col-lg-1">
                            <div class="form-group">
                            </br>
                            </br>
                            <input type="hidden" name="temail" value=" ............"/>
                            <button type="search" class="btn btn-success" >Accepted Workers</button>
                            </div>
                    </div>
        </form>
        <form action="talk.jsp" class="form-horizontal" style="margin-left : 43%;">
                    <div class="col-lg-1">
                            <div class="form-group">
                            </br>
                            </br>
                            <input type="hidden" name="temail" value=" ............"/>
                            <button type="search" class="btn btn-danger" >Rejected Workers</button>
                            </div>
                    </div>
         </form>
         </div>
         <hr>
	<br><br><br>
		<div class="container">
			<section>
      
    <hr>
    <div class="row">
            <div class="col-lg-2">
                <img src="img/xyz.jpg" width="120" height="120">   
            </div>
				<div class="col-lg-3">
                                    <div class="form-group">
                                    </br>
		                                    <label for="email" class="control-label">Name: <font color="grey">Himanshu Sjivhare</font></label><br>
		                                     <label for="gender" class="control-label">Gender: <font color="grey">Male </font></label><br>
		                                     <label for="phone" class="control-label">Phone: <font color="grey">969696969696</font></label><br>
		                                     <label for="category" class="control-label">Job : <font color="grey">Cook</font></label><br>
                                    </div>
				</div>
				<div class="col-lg-4">
                                    <div class="form-group">
                                    </br>
                                            <label for="name" class="control-label">Working area :<font color="grey">alpha2 greater noida</font></label><br>
                                            <label for="address" class="control-label">Address: <font color="grey">hvvdfjhdjh jdfg b fdgdf g</font></label><br>
											<label for="age" class="control-label">Age : <font color="grey">20</font></label><br>
                                            <label for="dob" class="control-label">Status : <font color="grey">Pending...</font></label><br>
                                            
									</div>
				</div>
            <form action="talk.jsp" class="form-horizontal">
                    <div class="col-lg-1">
                            <div class="form-group">
                            </br>
                            </br>
                            <input type="hidden" name="temail" value=" ............"/>
                            <button type="search" class="btn btn-success" >Accept</button>
                            </div>
                    </div>
            </form>
            <form action="talk.jsp" class="form-horizontal">
                    <div class="col-lg-1">
                            <div class="form-group">
                            </br>
                            </br>
                            <input type="hidden" name="temail" value=" ............"/>
                            <button type="search" class="btn btn-danger" >Reject</button>
                            </div>
                    </div>
            </form>
    </div>
		
		</div>
		</section>
	</div>
	</br>
	<!--footer-->
	<div class="navbar navbar-inverse navbar-fixed-bottom">
		<div class="container">
			<div class="navbar-text pull-left">
				<p>Design and Develop by Himanshu Shivhare</p>
			</div>
	
		</div>
	</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>