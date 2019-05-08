
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
<title>Cargo Export Details</title>
<link rel = "stylesheet"
   type = "text/css"
   href = "stylee.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

</head>
<body>

<article>
 <aside>         	        
<!-- Side bar -->
  <h3>
<ul>
 <li><a href="homePage1.jsp" class="button4">Home</a></li><br><br><br><br>
  
 <li><a href="Export1.jsp" class="button4">Add Export </a></li><br><br><br><br>

 <li><a href="#" class="button4">View Export</a></li><br><br><br><br>
 
 <li><a href="ViewShipment.jsp" class="button4">View Shipment</a></li><br><br><br><br>
 
 <li><a href="AboutUs1.jsp" class="button4">About Us</a></li><br><br><br><br>

 <li><a href="ContactUs1.jsp" class="button4">Contact Us</a></li><br><br><br><br>


 
</ul>
</h3>
 </aside>

  <aside class="h">

	<br><br>
	<h><b>Cargo Export Details</b></h>
	<br><br>
  <%
  		
		 	Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
		%>
		
		
			<%
			try{ 
				
					con = DBConnection.createConnection();
					statement=con.createStatement();
					String sql ="SELECT *  FROM  cargoExpo where userID="+session.getAttribute("id") ;

					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>

	
					<br>
					Cargo ID :<br>
					<%=resultSet.getString("expoID") %>
					<br>
					Product Category:<br>
					<%=resultSet.getString("productCategory") %>
					<br>
					No of Containers:<br>
					<%=resultSet.getString("noOfContainers") %>
					<br>
					Standard ISO size (Shipping Container):<br>
					<%=resultSet.getString("size") %>
					<br>
					Refrigerated :
					<br>
					<%=resultSet.getString("ref") %>
					<br>
					TranspType :
					<br>
					<%=resultSet.getString("transpType") %>
					<br>
					Route Selection :
					<br>
					<%=resultSet.getString("routeSelection") %>
					<br>
					UserID :<br>
					<%=resultSet.getString("userID") %>
					
					<br><br>
					<input type="submit" value="Update" onclick="location.href='updateCargo.jsp?expoID=<%=resultSet.getString("expoID")%>'"/>
					
					<form action="DeleteCargoServlet" method="post">
			        	<input type="hidden" name="expoID" value="<%=resultSet.getString("expoID") %>"/>
						<input type="submit" value= "Delete" class="select-button" > 
					</form>
					
					<form action="calCargoFullAmtServlet" method="post">
						<input type="hidden" name="expoID" value="<%=resultSet.getString("expoID") %>"/>
						<input type="hidden" name="routeSelection" value="<%=resultSet.getString("routeSelection") %>"/>
						<input type="hidden" name="noOfContainers" value="<%=resultSet.getString("noOfContainers") %>"/>
						<input type="submit" value="Calculate Full Amount">
					</form>	
				<%
				}
	
			}
			catch (Exception e) {
		
			e.printStackTrace();
		}
		%>
</body>
</html>