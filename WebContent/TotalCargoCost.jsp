<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.DBConnection" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Cargo Bill</title>

	<link rel="stylesheet" type="text/css" href="style.css">

	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
</head>

<body>
	<article>
 		<aside>
  		<h3>
		<ul>
  			<li> <a href="homePage1.jsp" >Home</a></li><br><br><br><br>
			<li><a href="Exports1.jsp" >Export </a></li><br><br><br><br>
 			<li> <a href="AboutUs1.jsp">About Us</a></li><br><br><br><br>
 			<li><a href="ContactUs1.jsp">Contact Us</a></li><br><br><br><br>
   			<li><a href="ViewShipment.jsp">View Shipment</a></li><br><br><br><br>
 
		</ul>
		</h3>
 		</aside>

		<aside class="h">
		<br><br><br>
		<h><b>View Total Cargo Cost</b></h>
			<br><br><br>
 		<div align="left">
 		
		<table border="1" cellpadding="12"> 
		 
		  <tr>	<th>UserID</th>
		        <th>ExpoID</th>
         		<th>no Of Containers </th>
                <th>Tax </th>
                <th>Total Port Cost</th>
                <th>Total Product Cost</th>     
                <th>Full Amount</th>
               
            </tr>

			<tr>
				<td> <%=session.getAttribute("id") %></td>
				<td> <%=request.getAttribute("expoID") %></td>
				<td> <%=request.getAttribute("noOfContainers") %></td>
				<td> <%=request.getAttribute("b3") %></td>
				<td> <%=request.getAttribute("b2") %></td>
				<td> <%=request.getAttribute("b1") %></td>
				<td> <%=request.getAttribute("b4") %></td>
			</tr>
	
		</table>
		
	<br><br><br>
		<input type=submit onclick="location.href='homePage1.jsp'"  value = "Exit">
	<br><br><br><br><br><br>
	</div>
	</aside>
	</article>
	
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
</html>