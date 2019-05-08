
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
<title>Export List</title>

<link rel="stylesheet" type="text/css" href="style.css">

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

</head>
<body>
<article>
 <aside>         
	        
<!-- Side bar -->

  <h3>
	<ul>
 		<li> <a href="officerHomePage.jsp" >Home</a></li><br><br><br><br>
 		<li> <a href="#" >Export List</a></li><br><br><br><br> 
 		<li> <a href="Shipments.jsp" >Shipment List</a></li><br><br><br><br> 
 		<li> <a href="CostList.jsp" >Cost Management</a></li><br><br><br><br>
 
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
		 <caption><h2>List of Package Exports</h2></caption>
		 
		  <tr>
                <th>ExpoID</th>
         		<th>Product Category</th>        
                <th>Weight</th>
                <th>Transport Type</th>
                <th>Route Selection</th>
                <th>UserID</th>
                <th>Add notify</th>
                <th>Add Shipment</th>
               
            </tr>
		

				<%
			try{ 
					con = DBConnection.createConnection();
					statement=con.createStatement();
					String sql ="SELECT * FROM packageexpo where expoID NOT IN (select refID from packageShipment)";

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
	
				<td><%=resultSet.getString("notify") %>  <input type="submit" value="Add" onclick="location.href='packageNotify.jsp?expoID=<%=resultSet.getString("expoID")%>'"/></td>
        		<td><form method="POST" action="PackageShipmentServlet">    
        			<input type="hidden" name="expoID" value="<%=resultSet.getString("expoID") %>"/>
        			<input type="hidden" name="routeSelection" value="<%=resultSet.getString("routeSelection") %>"/>    				
        			<input type="submit" value= "Add Shipment" class="select-button" /> 
        			</form>
        		</td>	
        	</tr>			
        			     
        		<% 
					}

					} catch (Exception e) {
						e.printStackTrace();
						}
						%>
		</table>
	<br><br>	
		<table border="1" cellpadding="12">
		 <caption><h2>List of Cargo Exports</h2></caption>
		 
		  <tr>
                <th>ExpoID</th>
         		<th>Product Category</th>
                <th>No Of Containers</th>
                <th>Container Size</th>
                <th>Refrigerated</th>
                <th>Transport Type</th>
                <th>Route Selection</th>
                <th>UserID</th>
                <th>Add notify</th>
                <th>Add Shipment</th>
               
            </tr>
			<%
			try{ 
				con = DBConnection.createConnection();
					statement=con.createStatement();
					String sql ="SELECT * FROM cargoexpo where expoID NOT IN (select refID from cargoShipment) ";

					resultSet = statement.executeQuery(sql);
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
				
				<td><%=resultSet.getString("notify") %> <input type="submit" value="Add" onclick="location.href='cargoNotify.jsp?expoID=<%=resultSet.getString("expoID")%>'"/></td>
				
        		<td> 
        			<form method="POST" action="CargoShipmentServlet">  
        			<input type="hidden" name="expoID" value="<%=resultSet.getString("expoID") %>"/> 
        			<input type="hidden" name="routeSelection" value="<%=resultSet.getString("routeSelection") %>"/>   				
        			<input type="submit" value= "Add Shipment" class="select-button" /> 
        			</form>
        		</td>	
        	</tr>			
        			     
        		<% 
					}

					} catch (Exception e) {
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