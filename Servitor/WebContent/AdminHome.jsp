<%@page import="java.util.ArrayList"%>
<%@page import="dao.DAO"%>
<%@page import="java.util.HashMap"%>
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
  
  <%
	HashMap admin=(HashMap)session.getAttribute("adminDetails");
	if(admin!=null){
		String status=request.getParameter("status");
%>
 
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
                                    <li><div class="navbar-text"><p>Welcome: <%= admin.get("name") %> </p></div></li>
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
	<div style="margin-top : -40px;">
	
	<a href="AdminHome.jsp?status=pending" class="btn btn-primary" style="margin-left:60px;" >Pending Employers  </a>&ensp;
		<a href="AdminHome.jsp?status=Accepted" class="btn btn-success">Accepted Employers </a>&ensp;
		<a href="AdminHome.jsp?status=Rejected" class="btn btn-danger">Rejected Employers</a>
<!-- 	<form action="AdminHome.jsp?status=pending" class="form-horizontal" style="margin-left : 120px;"> -->
<!--                     <div class="col-lg-1"> -->
<!--                             <div class="form-group"> -->
<!--                             </br> -->
<!--                             </br> -->
<!--                             <input type="hidden" name="temail" value=" ............"/> -->
<!--                             <button type="search" class="btn btn-primary" >Pending Workers</button> -->
<!--                             </div> -->
<!--                     </div> -->
<!--       </form> -->
<!--       <form action="AdminHome.jsp?status=Accepted" class="form-horizontal" style="margin-left : 25%;"> -->
<!--                     <div class="col-lg-1"> -->
<!--                             <div class="form-group"> -->
<!--                             </br> -->
<!--                             </br> -->
<!--                             <input type="hidden" name="temail" value=" ............"/> -->
<!--                             <button type="search" class="btn btn-success" >Accepted Workers</button> -->
<!--                             </div> -->
<!--                     </div> -->
<!--         </form> -->
<!--         <form action="AdminHome.jsp?status=Rejected" class="form-horizontal" style="margin-left : 43%;"> -->
<!--                     <div class="col-lg-1"> -->
<!--                             <div class="form-group"> -->
<!--                             </br> -->
<!--                             </br> -->
<!--                             <input type="hidden" name="temail" value=" ............"/> -->
<!--                             <button type="search" class="btn btn-danger" >Rejected Workers</button> -->
<!--                             </div> -->
<!--                     </div> -->
<!--          </form> -->
         </div>
         <hr>
	<br><br><br>
	<%
			DAO dao=new DAO();
			ArrayList<HashMap> allTrainers=dao.getAllTrainers(status);
			for(HashMap trainer:allTrainers){
	%>
		<div class="container">
			<section>
      
    <hr>
    <div class="row">
            <div class="col-lg-2">
                <img src='GetPhoto?email=<%= trainer.get("email")%>&type=trainer' width="120" height="120">   
            </div>
				<div class="col-lg-3">
                                    <div class="form-group">
                                    </br>
		                                    <label for="email" class="control-label">Name: <font color="grey"><%=trainer.get("email") %></font></label><br>
		                                     <label for="gender" class="control-label">Gender: <font color="grey"><%=trainer.get("gender") %></font></label><br>
		                                     <label for="phone" class="control-label">Phone: <font color="grey"><%=trainer.get("phone") %></font></label><br>
		                                     <label for="category" class="control-label">Job : <font color="grey"><%=trainer.get("job") %></font></label><br>
                                    </div>
				</div>
				<div class="col-lg-4">
                                    <div class="form-group">
                                    </br>
                                            <label for="name" class="control-label">Working area :<font color="grey"><%=trainer.get("name") %></font></label><br>
                                            <label for="address" class="control-label">Address: <font color="grey"><%=trainer.get("area") %>,<%=trainer.get("city") %></font></label><br>
											<label for="age" class="control-label">Age : <font color="grey"><%=trainer.get("age") %></font></label><br>
											
											<%
												String s=(String)trainer.get("status");
												if(s.equalsIgnoreCase("pending")){
											%>
                                            		<label for="dob" class="control-label">Status : <font color="grey"><%=s %></font></label><br>
                                            		
									</div>
				</div>
            <form action="ChangeTrainerStatus" class="form-horizontal" method="post">
                    <div class="col-lg-1">
                            <div class="form-group">
                            </br>
                            </br>
                            <input type="hidden" name="email" value="<%= trainer.get("email")%>">
							<input type="hidden" name="status" value="Accepted">
                            <button type="search" class="btn btn-success" >Accept</button>
                            </div>
                    </div>
            </form>
            <form action="ChangeTrainerStatus" class="form-horizontal" method="post">
                    <div class="col-lg-1">
                            <div class="form-group">
                            </br>
                            </br>
                            <input type="hidden" name="email" value="<%= trainer.get("email")%>">
							<input type="hidden" name="status" value="Rejected">
                            <button type="search" class="btn btn-danger" >Reject</button>
                            </div>
                    </div>
            </form>
            <%
						}else if(s.equalsIgnoreCase("Accepted")){
			 %>
			 				<label for="dob" class="control-label">Status : <font color="grey"><%=s %></font></label><br>
			 				</div>
				</div>
							 <form action="ChangeTrainerStatus" class="form-horizontal" method="post">
				                    <div class="col-lg-1">
				                            <div class="form-group">
				                            </br>
				                            </br>
				                            <input type="hidden" name="email" value="<%= trainer.get("email")%>">
											<input type="hidden" name="status" value="Rejected">
				                            <button type="search" class="btn btn-danger" >Reject</button>
				                            </div>
				                    </div>
				            </form>
			            <%
						}else if(s.equals("Rejected")){
						%>
						<label for="dob" class="control-label">Status : <font color="grey"><%=s %></font></label><br>
			 				</div>
				</div>
							<form action="ChangeTrainerStatus" class="form-horizontal" method="post">
				                    <div class="col-lg-1">
				                            <div class="form-group">
				                            </br>
				                            </br>
				                            <input type="hidden" name="email" value="<%= trainer.get("email")%>">
											<input type="hidden" name="status" value="Accepted">
				                            <button type="search" class="btn btn-success" >Accept</button>
				                            </div>
				                    </div>
				            </form>
			            <%
						}
					%>
					<%
						String message=(String)session.getAttribute("message");
						if(message!=null){
					%>
							<p style='color: green'><%= message %></p>
					<%
							session.setAttribute("message", null);
						}
					%>
    </div>
		
		</div>
		</section>
	</div>
	</br>
	  
  <%
		}
	}else{
		session.setAttribute("message","Plz LOGIN First!");
		response.sendRedirect("index.jsp");
	}
%>
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