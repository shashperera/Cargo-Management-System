
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
<title>Insert title here</title>
<link rel = "stylesheet"
   type = "text/css"
   href = "stylee.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view Expo Details</title>



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

 		<li><a href="#" class="button4">View Export</a></li><br><br><br><br>

 		<li><a href="ViewShipment.jsp" class="button4">View Shipment</a></li><br><br><br><br>
 
 		<li> <a href="AboutUs1.jsp" class="button4">About Us</a></li><br><br><br><br>

 		<li><a href="ContactUs1.jsp" class="button4">Contact Us</a></li><br><br><br><br> 
</ul>
</h3>
</aside>

<aside class="h">

<br><br>

	<h><b>Export Details</b></h>
	<br><br>

	
  		<%
  		
  		
		 	Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
		%>
		<table border="1" cellpadding="12">
		 <caption><h2>Package Export</h2></caption>
		 
		  <tr>
                <th>ExpoID</th>
         		<th>Product Category</th>
                <th>Weight</th>
                <th>Transport Type</th>
                <th>Route Selection</th>
                <th>UserID</th>
                <th>update</th>
                <th>View Bill</th>
                <th>Delete</th>
                <th>Notify</th>
               
            </tr>
		
			<%
		try{ 
					con = DBConnection.createConnection();
					statement=con.createStatement();
					String sql ="SELECT * FROM  packageExpo where userID="+session.getAttribute("id");

					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>
				<tr>

					<td><%=resultSet.getString("expoID") %></td>
					<td><%=resultSet.getString("productCategory") %></td>
					<td><%=resultSet.getString("weight") %></td>
					<td><%=resultSet.getString("transpType") %></td>
					<td><%=resultSet.getString("routeSelection") %></td>
					<td><%=resultSet.getString("userID") %></td>
					
					<td><input type="submit" value="update" onclick="location.href='updatePackage.jsp?expoID=<%=resultSet.getString("expoID")%>'"/></td>
					<td><form action="calPackageFullAmtServlet" method="post">
						<input type="hidden" name="expoID" value="<%=resultSet.getString("expoID") %>"/>
						<input type="hidden" name="weight" value="<%=resultSet.getString("weight") %>"/>
						<input type="hidden" name="routeSelection" value="<%=resultSet.getString("routeSelection") %>"/>
						<input type="submit" value="Display Bill">
					</form>	
					</td>
					<td><form action="DeletePackageServlet" method="post">
		        		<input type="hidden" name="expoID" value="<%=resultSet.getString("expoID") %>"/>
						<input type="submit" value= "Delete" class="select-button" > 
					</form>	
					</td>
					
					<td><%=resultSet.getString("notify") %></td>
				</tr>
			
	
			<% }
			} catch (Exception e) {
				e.printStackTrace();
			}
			%>
			</table>
			<br><br>	
			<table border="1" cellpadding="12">
			<caption><h2>Cargo Export</h2></caption>
			 
			  <tr>
	                <th>ExpoID</th>
	         		<th>Product Category</th>
	                <th>No Of Containers</th>
	                <th>Standard ISO size (Shipping Container)</th>
	                <th>Refrigerated</th>
	                <th>Transport Type</th>
	                <th>Route Selection</th>
	                <th>UserID</th>
	                <th>Update</th>
	                <th>View Bill</th>
	                <th>Delete</th>
	                <th>Notify</th>
	               
	            </tr>
			<%
				 try{
					 	con = DBConnection.createConnection();
						statement=con.createStatement();
						String sql1 ="SELECT * FROM  cargoExpo  where userID="+session.getAttribute("id");
		
						resultSet = statement.executeQuery(sql1);
						while(resultSet.next()){
						%>
					<tr>
			
						<td><%=resultSet.getString("expoID") %></td>
						<td><%=resultSet.getString("productCategory") %></td>
						<td><%=resultSet.getString("noOfContainers") %></td>
						<td><%=resultSet.getString("size") %></td>
						<td><%=resultSet.getString("ref") %></td>
						<td><%=resultSet.getString("transpType") %></td>
						<td><%=resultSet.getString("routeSelection") %></td>
						<td><%=resultSet.getString("userID") %></td>

						<td><input type="submit" value="update" onclick="location.href='updateCargo.jsp?expoID=<%=resultSet.getString("expoID")%>'"/></td>
						<td><form action="calCargoFullAmtServlet" method="post">
							<input type="hidden" name="expoID" value="<%=resultSet.getString("expoID") %>"/>
							<input type="hidden" name="routeSelection" value="<%=resultSet.getString("routeSelection") %>"/>
							<input type="hidden" name="noOfContainers" value="<%=resultSet.getString("noOfContainers") %>"/>
							<input type="submit" value="Display Bill">
						</form>	
						</td>
						<td><form action="DeleteCargoServlet" method="post">
			        		<input type="hidden" name="expoID" value="<%=resultSet.getString("expoID") %>"/>
							<input type="submit" value= "Delete" class="select-button" > 
						</form>
						</td>
						<td><%=resultSet.getString("notify") %></td>
				</tr>
				

		<% }
	
		
			}catch(Exception e){
				e.printStackTrace();
			}
		%>	
	</table>	
	<br><br>
</aside>
</article>
</div>
  <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
      		
</body>
</html>