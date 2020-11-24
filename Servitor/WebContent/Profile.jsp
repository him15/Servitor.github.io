<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    	HashMap userDetails=(HashMap)session.getAttribute("user");
    	if(userDetails != null){
    %>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Servitor</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/custom.css" rel="stylesheet">
	
	<script language="Javascript" src="js/jquery.js"></script>
	<script type="text/JavaScript" src='js/state.js'></script>
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
                                    <li><div class="navbar-text"><p>Welcome:<b><%= userDetails.get("name") %></b></p></div></li>
					<li><a href="index.jsp">Home</a></li>
					<li><a href="Logout">Logout</a><li>
				</ul>			
			</div>
		</div>
	</nav>
	</br>
							<%--  comment </br>
						       
						                        <div class="panel">
						                            <div class="panel-body bg-danger text-center">
						                               write the message Here !! 
						                            </div>
						                        </div>
						       --%>             
		<div class="container">
			<section>
			<div class="row">
				<div class="col-lg-6">
					<div class="col-lg-4">
							   
						<img src="GetPhoto?email=<%=userDetails.get("email") %>" width="130" height="150">  
						
					</div>
					<div class="col-lg-6">
						  <div class="form-group">
                                  <label for="name" class="control-label">Name :<font color="grey"><%= userDetails.get("name") %></font></label>
                          </div><!--end form group-->
                          <div class="form-group">
                                  <label for="name" class="control-label">Email:<font color="grey"><%= userDetails.get("email") %></font></label>
                          </div><!--end form group-->
                          <div class="form-group">
                                  <label for="gender" class="control-label">Gender: <font color="grey"><%= userDetails.get("gender")%></font></label>
                          </div><!--end form group-->
                          <div class="form-group">
                                  <label for="phone" class="control-label">Contact No. : <font color="grey"><%= userDetails.get("phone") %></font></label>
                          </div>
                          </div><!--end form group-->
                          <div class="col-lg-10 form-group">
                                  <label for="state" class="control-label">Address: <font color="grey"><%=userDetails.get("address") %></font></label>
                          </div><!--end form group-->
                          <div class="form-group">
                                  <div class="col-lg-10 form-group">
                                      <a href="editprofile.jsp" class="btn btn-primary">Edit Profile</a>
                                      <a href="changepassword.jsp" class="btn btn-primary">Change Password</a>
                                  </div>		
                          </div>
					</div>
				<div class="col-lg-6">
					<div class="panel panel-default">
						<div class="panel-heading text-center">
							<h3>Search Employers!</h3>
						</div>
						<div class="panel-body">
							<form action="SearchNewFile.jsp" method='post' class="form-horizontal">
								<div class="form-group">
									<label for="state" class="col-lg-3 control-label">state:</label>
									<div class="col-lg-9">
                                       <select name="state" class="form-control" id="listBox" onchange='selct_district(this.value)'>
											
										</select>
									</div>
								</div><!--end form group-->
								
								<div class="form-group">
									<label for="city" class="col-lg-3 control-label">City :</label>
										<div class="col-lg-9">
                                                            <select name="city" class="form-control" id='secondlist'>
										</select>
									</div>
								</div>
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
									<label for="area" class="col-lg-3 control-label">Area:</label>
									<div class="col-lg-9">
										
										<input type="text" name="area" class="form-control" id="area" placeholder="Enter your Area" />
									</div>
								</div>
								<div class="form-group">
									<div class="col-lg-10 col-lg-offset-3">
										<button type="search" class="btn btn-primary" >Search</button>
									</div>
								</div>
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
  </body>
</html>
<% 
    	}else{
    		session.setAttribute("message", "Plzz Login First!");
    		response.sendRedirect("index.jsp");
    	}
%>