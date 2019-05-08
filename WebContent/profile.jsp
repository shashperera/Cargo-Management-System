<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.DBConnection" %>
<%@page import="java.io.PrintWriter"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

	<link rel="stylesheet" type="text/css" href="style.css">


<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
</head>
<body>

<article>
 <aside>         
  	<h3>
	<ul>
		<li> <a href="homePage1.jsp" >Home</a></li><br><br><br><br>
 		<li><a href="Exports1.jsp" >Add Export </a></li><br><br><br><br>
 		<li> <a href="viewExpo.jsp">View Export</a></li><br><br><br><br>
 		<li><a href="ViewShipment.jsp">View Shipment</a></li><br><br><br><br>		
 		<li><a href="AboutUs1.jsp">About Us</a></li><br><br><br><br>
 		<li><a href="ContactUs1.jsp">Contact Us</a></li><br><br><br><br>

	</ul>
	</h3>
</aside>

<aside class="h" >
	<br><br>
	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		response.setHeader("pragma","no-cache");
		
		
			if (session.getAttribute("username")== null && session.getAttribute("id")== null )
			{
				response.sendRedirect("login.jsp");
			}
			
		%>
<h2><b>Profile </b></h2>
	<br><br>
	<img src="images/4.jpg" width="15%" align="left" Hspace="30" Vspace="5">
		<%
			
			Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
			
			%>	
			<table cellpadding="10">
		 
			<%
		try{ 
					con = DBConnection.createConnection();
					statement=con.createStatement();
					String sql ="SELECT * FROM  users where userID="+session.getAttribute("id");

					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>
			
				<tr><td>ID</td>
					<td><%=resultSet.getString("userID") %></td>
				</tr>
				<tr><td>Name</td>
					<td><%=resultSet.getString("name") %></td>
				</tr>
				<tr><td>Address</td>
					<td><%=resultSet.getString("address") %></td>
				</tr>
				<tr><td>Contact No</td>
					<td><%=resultSet.getString("contactNo") %></td>
				</tr>
				<tr><td>Email</td>
					<td><%=resultSet.getString("email") %></td>
				</tr>				
						
					
			<% }
			} catch (Exception e) {
				e.printStackTrace();
			}
			%>
			</table>
	<br><br>		
	
	<input type="submit" value="Update" onclick="location.href='updateProfile.jsp?userID=<%=session.getAttribute("id")%>'"/>
	<br><br><br><br>
</aside>
</article>

  <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
			
</body>
</html>