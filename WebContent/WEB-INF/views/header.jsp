<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.DBConnection" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Header</title>
	<link rel="stylesheet" type="text/css" href="style.css">

	<style>
	
	.button {
	display: inline-block;
	padding: 5px 10px;
	font-size: 24px;
	font-color: black;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	color: #fff;
	background-color: blue;
	border: none;
	border-radius: 15px;
	box-shadow: 0 3px #666;
	}

	.button:hover {
	background-color: #00cccc
	}

	.button:active {
	background-color: #3e8e41;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
	}

	.button4 {
	border-radius: 12px;
	}
	</style>

	<div class="container">
	
	<header>
	 <header class="o">
		<p>
		<img src="images/6.jpg" width="15%" align="left" Hspace="30"
			Vspace="20"><br> <br>
		<h1>Cargo and Shipping</h1>
	</header>
	
	 <header class="k"> <br>
		<br><br>
		&nbsp&nbsp&nbsp<a href="profile.jsp"> <img src="images/4.jpg" width="60px"></a>
	
		<%
			if (session.getAttribute("username")== null && session.getAttribute("id")== null)
			{
				response.sendRedirect("login.jsp");
			}
	
		
		

		%>
			<%
			
			Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
			
			%>

			
		
										
				<br>Welcome <b><%=session.getAttribute("username") %> </b> (<%=session.getAttribute("id") %>)<br>
										
					
			
		 	<form action="logoutServlet" method="post">
			 	&nbsp&nbsp&nbsp<input type="submit" class=" button button4" value="Logout">
		 
		 	</form>
		 			
			
 		
		
	</header>
	</header>
</div>
</body>
</html>