<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/forgetpassword.css" rel="stylesheet">

    
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
			<a class="navbar-brand" href="profile.jsp">PeopleTalk</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
                                    <li><div class="navbar-text"><p>Welcome: Himanshu Shivhare</p></div></li>
					<li><a href="profile.jsp">Home</a></li>
					<li><a href="Logout.jsp">Logout</a><li>
				</ul>			
			</div>
		</div>
	</nav><!-- end of navbar-->
		<div class="container">
			<section>
			
				
					<div class="panel panel-default">
						<div class="panel-heading text-center">
							<h3>Exception Aaya Re!!</h3>
						</div>
						<div class="panel-body">
                                                    <br><br><center><b><h4>ooooppsss!!  Exception Occurred :(</h4></b></center>
						</br>
						</br>
                           <form action="profile.jsp" >

                                <div class="form-group">
                                        <div class="col-lg-10 col-lg-offset-5">
                                                <button type="submit" class="btn btn-primary">Home</button>
                                        </div>
                                </div><!--end form group-->
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
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
	<script type="text/javascript" src="js/jquery-2.2.2.min.js"></script>
    <script src="js/validator.js"></script>
  </body>
</html>