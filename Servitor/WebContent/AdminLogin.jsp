<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" >
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<meta name="viewport" content="width=device-width, initial-scale=1" >
<title>Servitor</title>
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/custom.css" rel="stylesheet" />	
<link href="datetimepicker/css/datetimepicker.min.css" rel="stylesheet"  />
</head>
 
  <body data-spy="scroll" data-target="#my-navbar">
	<nav class="navbar navbar-inverse navbar-fixed-top" id="my-navbar">
		<div class="container">
			<div class="navbar-header">
					  <a class="navbar-brand" href="#">Servitor</a>
			</div>
					<ul class="nav navbar-nav">
					   <!--<li class="active"><a href="#">Home</a></li>   --> 
					</ul>
					<ul class="nav navbar-nav navbar-right">
					<li><a href="index.jsp">Home</a></li>
					  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-log-in"></span> Login <span class="caret"></span></a>
						<ul class="dropdown-menu">
						  <li><a href="#"> Admin Login</a></li>
						  <li><a href="#"> Job-Seeker Login/Register</a></li>
						</ul>
					  </li>
					</ul>
		</div><!--end container-->
	</nav><!--end navbar-->	
	<div class="container">
		<div class="panel panel-default text center">
			<div class="panel-heading text-center">
				<h2>Admin Login</h2>
			</div>
		</div>
	</div>
	</br>
	
       <%
		String m=(String)session.getAttribute("message");
		if(m!=null){
	%>
       <div class="panel">
           <div class="panel-body bg-danger text-center">
              <b><%=m %></b>
           </div>
       </div>
       
       <%		
			session.setAttribute("message",null);
		}
	%>
                    
		<div class="container">
			<section>
			<div class="row" >
				
				<div class="col-lg-12" >
					<div class="panel panel-default">
						<div class="panel-heading text-center">
							<h3>Login</h3>
						</div>
						<div class="panel-body">
							<form action="AdminLogin" data-toggle="" class="form-horizontal">
								<div class="form-group">
									<label for="aid" class="col-lg-3 control-label">A-id:</label>
									<div class="col-lg-9">
										<input type="text" name="aid" class="form-control"  id="name" placeholder="Enter your ID" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="password" class="col-lg-3 control-label">Password:</label>
									<div class="col-lg-9">
										<input type="password" name="password" class="form-control" id="pass" placeholder="Enter your password" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
		  							<div class="col-lg-10 col-lg-offset-3">
										<button type="submit" class="btn btn-primary">Login</button>
										<button type="reset" class="btn btn-primary">Reset</button>
									</div>
								</div>
								<div class="form-group">
									<div class="col-lg-10 col-lg-offset-3">
										<a href="forgetpassword.jsp">Forget Password?</a>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<hr>
	<!--footer-->
	<div class="navbar navbar-inverse navbar-fixed-bottom">
		<div class="container">
			<div class="navbar-text pull-left">
				<p>Design and Develop by Himanshu Shivhare</p>
			</div>
		</div>
	</div>
	
	
	<script type="text/javascript" src="js/jquery-2.2.2.min.js" ></script>
    <script type="text/javascript" src="js/bootstrap.min.js" ></script>
	<script type="text/javascript" src="js/script.js" ></script>
  <script type="text/javascript" src="js/validator.js" ></script>
<script type="text/javaScript" src='js/state.js' ></script>
<script type="text/javascript" src="datetimepicker/js/moment.min.js" ></script>
<script type="text/javascript" src="datetimepicker/js/datetimepicker.min.js" ></script>
	<script type="text/javascript">
    $(function () {
        $('#dob').datetimepicker({
        	format: 'DD/MM/YYYY',
                maxDate: new Date()
        });
    });
	</script>
  </body>
</html>
    