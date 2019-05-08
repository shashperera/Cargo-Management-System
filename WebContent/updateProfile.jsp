
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
<title>update profile</title>

<link rel="stylesheet" type="text/css" href="style.css">

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
</head>			
	
<body>
<div class="container">	
<article>
 <aside>         	        
<!-- Side bar -->
  <h3>
	<ul>
		<li> <a href="homePage1.jsp" class="button4">Home</a></li><br><br><br><br> 
		<li><a href="Exports1.jsp" class="button4">Add Export </a></li><br><br><br><br>
		<li><a href="viewExpo.jsp" class="button4">View Export </a></li><br><br><br><br>
		<li><a href="ViewShipment.jsp" class="button4">View Shipment</a></li><br><br><br><br>
		<li> <a href="AboutUs1.jsp" class="button4">About Us</a></li><br><br><br><br>
 		<li><a href="ContactUs1.jsp" class="button4">Contact Us</a></li><br><br><br><br>
 	</ul>
	</h3>
</aside>

 <aside class="h">
<h><b>Update the user details</b></h>
<br><br>
	
		<%
			Connection connection = null;
			Statement statement = null;
			ResultSet resultSet = null;
		%>
		
			<%
			try{ 
				connection = DBConnection.createConnection();
					statement=connection.createStatement();
					String sql ="SELECT * FROM  users where userID="+session.getAttribute("id");

					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>
				<form method="post" action="UpdateProfileServlet">
			
		<br>
		userID:<br>
			<input type="text" name="user"  value="<%=resultSet.getString("userID") %>"readonly>
		<br>
		Full Name:<br>
		<input type="text" name="fullName"  value="<%=resultSet.getString("name") %>" >
		<br>
		Address:<br>
		<input type="text" name="address" value="<%=resultSet.getString("address") %>">
		<br>
		Contact Number:<br>
		
		<input type="text" name="contactNumber" value="<%=resultSet.getString("contactNo") %>" >
	
		<br>
		Email:<br>
		<input type="email" name="email" value="<%=resultSet.getString("email") %>">
		<br>
		<br>
		
		<input type="submit" value="update">
	</form>
	<%
			}
		connection.close();
		} catch (Exception e) {
		
			e.printStackTrace();
		}
	%>


</body>
</html>