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





	<!-- Font link -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> <!-- ends -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" ></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" ></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" ></script>
	<link href="https://fonts.googleapis.com/css?family=PT+Serif&display=swap" rel="stylesheet">

<%----------------------------------------------------------------------------------------------------------------------%>
<style>


*{
	margin: 0;
	padding: 0;
	<%-- font-family: 'PT Serif', serif; --%>
}


#slider{
	width: 100%

}

.carousel-caption{
	top: 50%;
	transform: translateY(-50%);
	bottom: initial!important;
}

.carousel-caption h5{
	font-size: 42px;
}




#about{
	padding-top: 50px;
	padding-bottom: 50px;
	color: #555;

}

#about .btn{
	margin-top: 20px;
	margin-bottom: 30px;

}
.about-content{
	padding-top: 20px;
}



.skills-bar{
	margin-bottom: 6px;
	font-weight: 600;

}
.progress-bar{
	border-radius: 16px;
}

.progress{
	border-radius:16px !important;
	margin-bottom: 20px;
}


#services{
   width: 100%;
   margin-right: -50%;
	background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8)),url('images/services.jpg');
	color: #efefef !important;
	padding-top: 50px;
	padding-bottom: 50px;
}

#services h1{
	text-align: center;
	color:  #efefef !important;
	padding-bottom: 10px;
}
#services h1:after{
	content: '';
	background:#efefef;
	display: block;
	height: 3px;
	width: 170px;
	margin: 20px auto 5px;
}

.services{
width: 100%;
	margin-top: 50px;

}
.icon{
	font-size: 30px;
	margin:20px auto;
	padding: 15px;
	height: 70px;
	width: 70px;
	border:1px solid #fff;
	border-radius: 50%;
}

#services p{

	font-size: 14px;
	margin-top: 20px;
	color: #ccc;

}

.services .col-md-3:hover{
	background: #007bff;
	cursor: pointer;
	transition:0.7s;
}


#team{
	padding-top: 50px;
	padding-bottom: 50px;
	color: #555;

}
h1{
	text-align: center;
	color: #555 !important;
	padding-bottom: 10px;

}

h1::after{
	content: '';
	background: #007bff;
	display: block;
	height: 3px;
	width: 170px;
	margin: 20px auto 5px;

}

.profile-pic{
	margin-top: 25px;
}
.profile-pic .img-box{
	opacity: 1;
	display: block;
	position: relative;
}

.profile-pic .img-box img{
	filter: grayscale(1);


}
.profile-pic .img-box img:hover{
	filter: grayscale(0);
	cursor: pointer;	

}
.profile-pic h2{
	font-size: 22px;
	font-weight: bold;
	margin-top: 15px;
	color: #007bff !important;

}
.profile-pic h3{
	font-size: 15px;
	font-weight: bold;
	margin-top: 15px;
	color: grey;
	
}

#team .fa{
	height: 25px;
	width: 25px;
	color: #007bff !important;
	background: #fff;
	padding: 4px;
	border-radius: 50%
}

.img-box ul{
	padding: 15px 0;
	position: absolute;
	z-index: 2;
	bottom: 0;
	left: 50%;
	transform: translateX(-50%);
	opacity: 0;
}

.img-box ul li{
	padding: 5px;
	display: inline-block;
}
.img-box:hover ul{
	opacity: 1;

}
.img-box ul, .img-box li{
	transition: 0.5s;
}

#promo{
	background-image: linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)),url('images/bg.jpg');
	background-size: cover;
	background-position: center;
	color: #fff;
	background-attachment:  fixed;
	text-align: center;
	padding: 100px;
	font-family: sans-serif;
	font-size: 38px;

}



#price{
	padding: 40px 0;
	background: #efefef;
}

.single-price{
	margin: 10px auto;
	display: inline;
	float: left;
	width: 100%;
	background-color: #fff;
	transition: 0.5s;
}
.single-price:hover{
	box-shadow: 0 2px 20px #333;
}
.price-head{
	background-color: #2196f3;
	display: inline;
	float: left;
	padding: 10px 5px;
	text-align: center;
	width: 100%;
 
}
.price-head h2{
	color: #fff;
	font-size: 30px;
	font-weight: 5px;
	margin-bottom: 5px;
	padding: 5px;
	text-transform: uppercase;
}

.price-head p{
	font-size: 25px;
	color: #ccc;
	font-weight: :bold;
	line-height: 30px;
}

#price span{
	font-size: 15px;
}

.price-content{
	display: inline;
	float: left;
	width: 100%;
	padding: 0 15px;

}
.price-content ul li{
	border-bottom: 1px solid #efefef;
	padding: 15px 10px;
	list-style: none;
}

ul li:last-child{
	border-color: none;
}

.fa-check-circle{
	color: green;
	margin-right: 10px;
	font-size: 20px;
}

.fa-times-circle{
	color: red;
	margin-right: 10px;
	font-size: 20px;
}

.price-button{
	display: inline;
	float: left;
	padding: 15px 15px 30px;
	text-align: center;
	width: 100%;

}

.buy-btn{
	background-color: #2196f3;
	border-radius: 3px;
	display: inline-block;
	font-size: 18px;
	padding: 15px 50px;
	transition: 0.5s;

}
.buy-btn:hover{
	border-color: 1px solid #fff;
	background-color: #3f51b5;

}




#Testimonials{
	padding-top: 50px;
	padding-bottom: 50px;
}
#Testimonials .row{
	margin-top: 30px;
}

.col-md-4{
	margin: 40px auto;

}
.profile{
	padding: 70px 10px 10px;
	background-color: #efefef;
}

.user{
	width: 120px;
	height: 120px;
	border-radius: 50%;
}
.profile img{
	top: -60px;
	position: absolute;
	left: calc(50% - 60px);
	border:10px solid #fff;

}

.profile h3{
	font-size: 20px;
	margin-top: 15px;
	color: #007bff;

}
#Testimonials span{
	font-size: 12px;
	color: #333;

}  

blockquote{
	font-size: 16px;
	line-height: 30px
}
blockquote::before{
	content: '\93';
	font-size: 50px;
	color: #007bff; 
	position: relative;
	line-height: 20px;
	bottom: -15px;
	right: 5px;
}
blockquote::after{
	content: '\94';
	font-size: 50px;
	color: #007bff;
	position: relative;
	line-height: 20px;
	bottom: -15px;
	left: 5px;
}
.profile:hover{
	box-shadow: 0 0 15px 5px rgba(0,0,0,0.2);
	cursor: pointer;
	transition: 0.5s;

}



 #contact{
 	background: #efefef;
 	padding-top: 40px;
 	padding-bottom: 40px;
 	color: #777;
 }

 .contact-form{
 	padding: 15px;
 }

 .form-control{
 	border-radius: 0!important;
 	border: none!important;
 }
 ::placeholder{
 	color: #999 !important;

 }

 .follow{
 	background: #fff;
 	padding: 10px;
 	margin: 15px;
 }

 .contact-info .fa{
 	margin: 10px;
 	color: #007bff;
 	font-weight: bold;						
 }



#footer{
 	background: #333;
 	color: #fff;
 	padding: 12px;
 }
 .fa-heart-o{
 	margin: 3px;
 	color: red;
 }


</style>


<%----------------------------------------------------------------------------------------------------------------------%>

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
					 
					   <li class="nav-item">
		        <a class="nav-link" href="#about">ABOUT US</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#services">SERVICES</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#team">OUR TEAM</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#price">PRICE PLAN</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#contact">CONTACT US</a>
		      </li>
		       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-log-in"></span> Login <span class="caret"></span></a>
						<ul class="dropdown-menu">
						  <li><a href="AdminLogin.jsp" > Admin Login</a></li>
						  <li><a href="TrainerLoginRegister.jsp" ">JobSeeker Login/Register</a></li>
						</ul>
					  </li>
					</ul>
		</div><!--end container-->
	</nav><!--end navbar-->	
	<div class="container">
		<section>
			<div class="carousel slide" id="screenshot-carousel" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#screenshot-carousel" data-slide-to="0" class="active"></li>
					<li data-target="#screenshot-carousel" data-slide-to="1"></li>
					<li data-target="#screenshot-carousel" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img src="img/pt1.jpg" alt="Text of the image" height="10" width="1200">
						<div class="carousel-caption">
							<h1></h1>
							<p></p>
						</div>
					</div>
					<div class="item">
						<img src="img/pt2.jpg" alt="Text of the image" height="10" width="1200">
						<div class="carousel-caption">
							<h1></h1>
							<p></p>
						</div>
					</div>
					<div class="item">
						<img src="img/pt3.jpg" alt="Text of the image" height="10" width="1200">
						<div class="carousel-caption">
							<h1></h1>
							<p></p>
						</div>
					</div>
				</div><!--end carousel-inner-->
				<a href="#screenshot-carousel" class="left carousel-control" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
				</a>
				<a href="#screenshot-carousel" class="right carousel-control" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div><!--end of carousel-->
		</section>
		<hr>
	</div><!--end of container-->
                   
                   
                   
                   <%
                   	String m=(String)session.getAttribute("message");
                   
                   	if(m!= null && (m.equalsIgnoreCase( "User Already Registered!")  ||m.equalsIgnoreCase("Plzz Login First!"))){
                   %>
                        <div class="panel">
                            <div class="panel-body bg-danger text-center">
                              <p> <%=m %> </p>
                            </div>
                        </div>
                    <%
                    	session.setAttribute("message",null);
                   		}
                    %>
                    
                  
                    <% 
                    	if(m!= null && m.equalsIgnoreCase("User Added Successfully!")){
                   %>
                        <div class="panel">
                            <div class="panel-body bg-success text-center">
                                <p><%=m %></p>
                            </div>
                        </div>
                    <%
                    session.setAttribute("message",null);
                   		}
                    %>
                    
                      <% 
                    	if(m!= null && m.equalsIgnoreCase("Message Send Successfully!")){
                   %>
                        <div class="panel">
                            <div class="panel-body bg-success text-center">
                                <p><%=m %></p>
                            </div>
                        </div>
                    <%
                    session.setAttribute("message",null);
                   		}
                    %>
                    
		<div class="container">
			<section>
			<div class="row">
				<div class="col-lg-6">
					<div class="panel panel-default">
						<div class="panel-heading text-center">
							<h3>User-Registration</h3>
						</div>
						<div class="panel-body">
							<form action="Register" method='post' data-toggle="validator" enctype='multipart/form-data'  class="form-horizontal">
								<div class="form-group">
									<label for="name" class="col-lg-3 control-label">Full Name:</label>
									<div class="col-lg-9">
										<input type="text" name="name" class="form-control" pattern="^[_A-Z a-z]{1,}$" id="name" placeholder="Enter your name" required/>
									</div>
								</div><!--end form group-->
								
								<div class="form-group">
									<label for="email" class="col-lg-3 control-label">Email:</label>
									<div class="col-lg-9">
										<input type="email" name="email" class="form-control" id="email" placeholder="Enter your email" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="password" class="col-lg-3 control-label">Password:</label>
									<div class="col-lg-9">
										<input type="password" name="password" class="form-control" id="pass" placeholder="Enter your password" required/>
									</div>
								</div><!--end form group-->
								
								<div class="form-group">
									<label for="phone" class="col-lg-3 control-label">Phone:</label>
									<div class="col-lg-9">
										<input type="text" name='phone' class="form-control" pattern="^[_0-9]{1,}$" maxlength="10" minlength="10" id="phone" placeholder="Enter your phone" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="age" class="col-lg-3 control-label">Age :</label>
									<div class="col-lg-9">
										<input type="text" name='age' class="form-control" pattern="^[_0-9]{1,}$" maxlength="3" minlength="1" id="age" placeholder="Enter your age" required/>
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
									<label for="area" class="col-lg-3 control-label">Address :</label>
									<div class="col-lg-9">
										
										<input type="text" name="address" rows="4" cols="50" class="form-control" id="area" placeholder="Enter your address" required/>
									</div>
								</div><!--end form group-->
								<div class="form-group">
									<label for="photo" class="col-lg-3 control-label">Photo:</label>
									<div class="col-lg-9">
										<input type="file" name="photo" class="form-control" id="photo" />
										
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
							<h3>User-Login</h3>
						</div>
						<div class="panel-body">
							<form action="Login" data-toggle="validator" class="form-horizontal">
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
	<!-- -------------------------------ABOUT------------------------------------ -->

<section id="about" style="margin-right: -100px;">
	
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6">
				<h2>About Us</h2>
				<div class="about-content">
					Our company is focused on making React UIs development easier, better, and accessible to more people. We build open source and commercial tools used by many hundreds of thousands of developers in production. We're proud not only of the products we make, but also the community and partnerships we've cultivated with other developers and companies.
				</div>
				<button type="button" class="btn btn-primary">Read More>></button>
			</div>
			<div class="col-lg-6 col-md-6 skills-bar">
				<p>Html</p>
				<div class="progress">
					<div class="progress-bar" style="width: 80%;">80%</div>
				</div>
				<p>Css</p>
				<div class="progress">
					<div class="progress-bar" style="width: 70%;">70%</div>
				</div>
				<p>Java Script</p>
				<div class="progress">
					<div class="progress-bar" style="width: 40%;">40%</div>
				</div>
				<p>Bootstrap</p>
				<div class="progress">
					<div class="progress-bar" style="width: 60%;">60%</div>
				</div>
			</div>
		</div>
	</div>	

</section>
	
	
	
	

						<!-- -----------------Services---------------- -->

<section id="services">
	<div class="container">
		<h1>What we offer?</h1>
		<div class="row services">
			<div class="col-md-3 text-center">
				<div class="icon">
					<i class="fa fa-desktop" ></i>
				</div>
				<h3>Cook</h3>
				<p>Delicious food is the dream of every household, therefore we at Servitor
				 provides best professional cooks to customer’s doorstep.</p>
			</div>
			<div class="col-md-3 text-center">
				<div class="icon">
					<i class="fa fa-tablet" ></i>
				</div>
				<h3>Maid / Servant</h3>
				<p>Have never hired a maid-servant service before but wondering how to find a maid & servant 
				with quality services that you can trust? So we are here to help you!</p>
			</div>
			<div class="col-md-3 text-center">
				<div class="icon">
					<i class="fa fa-paint-brush" ></i>
				</div>
				<h3>Driver</h3>
				<p>Our core values include transparency (our work is public most of the time); 
				creating a safe, high-trust team</p>
			</div>
			<div class="col-md-3 text-center">
				<div class="icon">
					<i class="fa fa-line-chart" ></i>
				</div>
				<h3>Baby Sitter/Gardener</h3>
				<p>Looking for a trusted babysitter and eldercare services who can take care of your baby as well as seniors in the family.</p>
			</div>
		</div>
	</div>

</section>


	<!-- ------------------------price plan ----------------- -->

<section id="price">
	<div class="container">
		<h1>Price Plan</h1>
		<div class="row">
		<div class="col-md-3">
			<div class="single-price">
				<div class="price-head">
					<h2>Cook</h2>
					<p>1000/<span>Month</span></p>
				</div>
				<div class="price-content">
					<ul>
						<li><i class="fa fa-check-circle" ></i>5 gb Space</li>
						<li><i class="fa fa-check-circle" ></i>10 gb Bandwidth</li>
						<li><i class="fa fa-times-circle"></i>15 E-mail account</li>
						<li><i class="fa fa-times-circle"></i>Unlimited Domain</li>
						<li><i class="fa fa-times-circle"></i>Unlimited Support</li>
					</ul>
				</div>
				<div class="price-button">
					<a  class="buy-btn" href="#">Join Free</a>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="single-price">
				<div class="price-head">
					<h2>Maid/Servant</h2>
					<p>$0/<span>Month</span></p>
				</div>
				<div class="price-content">
					<ul>
						<li><i class="fa fa-check-circle" ></i>5 gb Space</li>
						<li><i class="fa fa-check-circle" ></i>10 gb Bandwidth</li>
						<li><i class="fa fa-times-circle"></i>15 E-mail account</li>
						<li><i class="fa fa-times-circle"></i>Unlimited Domain</li>
						<li><i class="fa fa-times-circle"></i>Unlimited Support</li>
					</ul>
				</div>
				<div class="price-button">
					<a  class="buy-btn" href="#">Join Free</a>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="single-price">
				<div class="price-head">
					<h2>Driver</h2>
					<p>$0/<span>Month</span></p>
				</div>
				<div class="price-content">
					<ul>
						<li><i class="fa fa-check-circle" ></i>5 gb Space</li>
						<li><i class="fa fa-check-circle" ></i>10 gb Bandwidth</li>
						<li><i class="fa fa-times-circle"></i>15 E-mail account</li>
						<li><i class="fa fa-times-circle"></i>Unlimited Domain</li>
						<li><i class="fa fa-times-circle"></i>Unlimited Support</li>
					</ul>
				</div>
				<div class="price-button">
					<a  class="buy-btn" href="#">Join Free</a>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="single-price">
				<div class="price-head">
					<h2>Baby Sitter</h2>
					<p>$0/<span>Month</span></p>
				</div>
				<div class="price-content">
					<ul>
						<li><i class="fa fa-check-circle" ></i>5 gb Space</li>
						<li><i class="fa fa-check-circle" ></i>10 gb Bandwidth</li>
						<li><i class="fa fa-times-circle"></i>15 E-mail account</li>
						<li><i class="fa fa-times-circle"></i>Unlimited Domain</li>
						<li><i class="fa fa-times-circle"></i>Unlimited Support</li>
					</ul>
				</div>
				<div class="price-button">
					<a  class="buy-btn" href="#">Join Free</a>
				</div>
			</div>
		</div>
		</div>
		</div>
		
</section>


  <!-- ----------------------------------Testimonials System----------------------- -->

<section id="Testimonials">
	<div class="container">
		<h1>How does it works?</h1>
		<p class="text-center">Please support us!</p>
		<div class="row">
			<div class="col-md-4 text-center">
				<div class="profile">
					<img src="img/p1.jpg" class="user">
					<h3>Search</h3><span>  </span>
					<blockquote>Use our simple search and tell us what you require. See list of all the available maids in your area!
					</blockquote>
					
				</div>
			</div>
			<div class="col-md-4 text-center">
				<div class="profile">
					<img src="img/p2.jpg" class="user">
					<h3>Shortlist</h3><span></span>
					<blockquote>View the complete profile of the hundreds of available maids and shortlist as per your preference!
					</blockquote>
				</div>
			</div>
			<div class="col-md-4 text-center">
				<div class="profile">
					<img src="img/p3.jpg" class="user">
					<h3>Meet, Select & Relax</h3><span></span>
					<blockquote>Talk to the maid on the phone or meet her personally. Select the maid and pay only after the maid joins!
					</blockquote>
				</div>
			</div>
		</div>

	</div>
</section>


<!-- ---------------------Contact Section--------------- -->
<section id="contact">
	<div class="container">
		<h1>Get In Touch</h1>
		<div class="row">
			<div class="col-md-6">
				<form action="ContactUs" class="contact-form">
					<div class="form-group">
						<input type="text"  name="name"class="form-control" placeholder="your Name">
					</div>
					<div class="form-group">
						<input type="number" name="phone" class="form-control" placeholder="your Phone No.">
					</div>
					<div class="form-group">
						<input type="email" name="email" class="form-control" placeholder="your E-mail Id">
					</div>
					<div class="form-group">
						<textarea type="text" name="message" class="form-control" rows="4" placeholder=" Your Message">
							
						</textarea>
					</div>
					<button type="submit" class="btn btn-primary">Send Message</button>
				</form>
			</div>
			<div class="col-md-6 contact-info">
				<div class="follow">
					<b>Address:</b><i class="fa fa-map-marker"></i> D-1302 Avj Heights,Zeta 1, Greater Noida
				</div>
				<div class="follow">
					<b>Phone:</b><i class="fa fa-map-phone"></i> D-9170564908
				</div>
				<div class="follow">
					<b>E-mail:</b><i class="fa fa-map-envelope-o"></i> Him150299@gmail.com
				</div>
				<div class="follow">
					<label><b>Set Social:</b></label>
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-google-plus"></i></a>
				</div>
			</div>

		</div>
	</div>
</section>







	
	
	<hr>
	<!--footer-->
	<div class="navbar navbar-inverse navbar-fixed-bottom">
		<div class="container">
			<div class=" text-center navbar-text " >
				<center></center><p>Design and Develop by<i class="fa fa-heart-o"></i>Team Nexus</p></center>
			</div>
		</div>
		
	</div>
	</div>
	
	<script src="js/smooth-scroll.js"></script>
	<script type="text/javascript" src="js/jquery-2.2.2.min.js" ></script>
    <script type="text/javascript" src="js/bootstrap.min.js" ></script>
	<script type="text/javascript" src="js/script.js" ></script>
  <script type="text/javascript" src="js/validator.js" ></script>
<script type="text/javaScript" src='js/state.js' ></script>
<script type="text/javascript" src="datetimepicker/js/moment.min.js" ></script>
<script>
	var scroll = new SmoothScroll('a[href*="#"]');
</script>
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
