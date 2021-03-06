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
						  <li><a href="AdminLogin.jsp"> Admin Login</a></li>
						  <li><a href="TrainerLoginRegister.jsp"> Trainee Login</a></li>
						</ul>
					  </li>
					</ul>
		</div><!--end container-->
	</nav><!--end navbar-->	
	<div class="container">
		<div class="panel panel-default text center">
			<div class="panel-heading text-center">
				<h2>Login/Register for Jobs</h2>
			</div>
		</div>
	</div>
	</br>
                   
                        <div class="panel">
                            <div class="panel-body bg-danger text-center">
                                Print the message
                            </div>
                        </div>
                    
		<div class="container">
			<section>
			<div class="row">
				<div class="col-lg-6">
					<div class="panel panel-default">
						<div class="panel-heading text-center">
							<h3>Registration</h3>
						</div>
						<div class="panel-body">
							<form action='TrainersRegister' method='post' data-toggle="validator" enctype='multipart/form-data'  class="form-horizontal">
								<div class="form-group">
									<label for="email" class="col-lg-3 control-label">Email:</label>
									<div class="col-lg-9">
										<input type="email" name="email" class="form-control" id="email" placeholder="Enter your email" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="name" class="col-lg-3 control-label">Name:</label>
									<div class="col-lg-9">
										<input type="text" name="name" class="form-control"  id="name" placeholder="Enter your name" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="phone" class="col-lg-3 control-label">Phone:</label>
									<div class="col-lg-9">
										<input type="text" name='phone' class="form-control" pattern="^[_0-9]{1,}$" maxlength="10" minlength="10" id="phone" placeholder="Enter your phone" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="gender" class="col-lg-3 control-label">Gender:</label>
									<div class="col-lg-9">
										<input type="radio" id="gender"name="gender" value="male" checked/>Male
										<input type="radio" id="gender"name="gender" value="female"/>Female
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="dob" class="col-lg-3 control-label">Age :</label>
									<div class="col-lg-9">
										<input type="text" name="age" class="form-control" id="age" placeholder="Enter your Age" required />
									
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="state" class="col-lg-3 control-label">State:</label>
									<div class="col-lg-9">
										<select name="state" class="form-control" id="listBox" onchange='selct_district(this.value)'>
										</select>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="city" class="col-lg-3 control-label">City:</label>
									<div class="col-lg-9">
										<select name="city" class="form-control" id='secondlist'>	
										</select>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="area" class="col-lg-3 control-label">Area:</label>
									<div class="col-lg-9">
										
										<input type="text" name="area" class="form-control" id="area" placeholder="Enter your Area" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="area" class="col-lg-3 control-label">Experience :</label>
									<div class="col-lg-9">
										
										<input type="text" name="experience" class="form-control" id="area" placeholder="Experience in month" required/>
									</div>
								</div><!--end form group-->
								
								<div class="form-group">
									<label for="city" class="col-lg-3 control-label">Category Job:</label>
										<div class="col-lg-9">
                                                           <select name="category" class="form-control" id='secondlist'>
															<option>Cook</option>
															<option>Maid</option>
															<option>Servant</option>
															<option>Driver</option>
															<option>Baby Sitter</option>
															</select>
									</div>
								</div>
								
								<div class="form-group">
									<label for="photo" class="col-lg-3 control-label">Photo:</label>
									<div class="col-lg-9">
										<input type="file" name="photo" class="form-control" id="photo" />
										
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="photo" class="col-lg-3 control-label">Aadhar Card :</label>
									<div class="col-lg-9">
										<input type="file" name="aadhar" class="form-control" id="photo" />
										
									</div>
								</div>
								<div class="form-group">
									<label for="photo" class="col-lg-3 control-label">Ration Card :</label>
									<div class="col-lg-9">
										<input type="file" name="Ration" class="form-control" id="photo" />
										
									</div>
								</div>
								<div class="form-group">
									<label for="pass" class="col-lg-3 control-label">Password:</label>
									<div class="col-lg-9">
										<input type="password" name="password" class="form-control" id="pass" placeholder="Enter your password" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<div class="col-lg-10 col-lg-offset-3">
										<input type="submit" class="btn btn-primary" value='Register'/>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="panel panel-default">
						<div class="panel-heading text-center">
							<h3>Login</h3>
						</div>
						<div class="panel-body">
							<form action="TrainerLogin" data-toggle="validator" class="form-horizontal">
								<div class="form-group">
									<label for="email" class="col-lg-3 control-label">Email:</label>
									<div class="col-lg-9">
										<input type="email" name="email" class="form-control" id="email" placeholder="Enter your email" required />
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="password" class="col-lg-3 control-label">Password:</label>
									<div class="col-lg-9">
										<input type="password" name="password" class="form-control" id="pass" placeholder="Enter your name" required/>
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
				<p>Design and Develop by Himanshu</p>
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
    