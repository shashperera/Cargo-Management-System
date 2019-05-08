
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.DBConnection" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel = "stylesheet" type = "text/css" href = "stylee.css" />
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Cost List</title>
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
</head>

<body>
	
	<article>
 		<aside>         	        
		<!-- Side bar -->
  		<h3>
		<ul>
 			<li> <a href="officerHomePage.jsp" >Home</a></li><br><br><br><br>
 			<li> <a href="ExportList" >Export List</a></li><br><br><br><br>
 			<li> <a href="Shipments.jsp" >Shipment List</a></li><br><br><br><br>
 			<li> <a href="CostList.jsp" >Cost Management</a></li><br><br><br><br>
		</ul>
		</h3>
 		</aside>

  		<aside class="h">
		<br><br>
 
	  	<div align="left">
		<table border="1" cellpadding="9" width="30px">
		<caption><h2>Cost Management</h2></caption>
		 
		  <tr>
                <th><small>Route Number</small></th>
                <th><small>Option</small></th>
         		<th><small>PackageWeight 1-10KG</small></th>        
                <th><small>PackageWeight 11-25KG</small></th>
                <th><small>PackageWeight 26-50KG</small></th>
                <th><small>Above50KG</small></th>
                <th><small>Tax</small></th>
                <th><small>TotalPort Cost</small></th>
                <th><small>ContainerCost (perOne)</small></th>
                <th><small>Update</small></th>
                <th><small>Delete</small></th>
               
        </tr>
      
    		<%
			Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
			%>

				<%
			try{ 
					con = DBConnection.createConnection();
					statement=con.createStatement();
					String sql ="SELECT * FROM cost";

					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>
					
				<tr>
				<td><%=resultSet.getString("num") %></td>
				<td><%=resultSet.getString("Opt") %></td>
				<td><%=resultSet.getString("PackageWeight_1to10_KG") %></td>
				<td><%=resultSet.getString("PackageWeight_11to25_KG") %></td>
				<td><%=resultSet.getString("PackageWeight_26to50_KG") %></td>
				<td><%=resultSet.getString("Above50KG") %></td>
				<td><%=resultSet.getString("tax") %></td>
				<td><%=resultSet.getString("TotalPortCost") %></td>
				<td><%=resultSet.getString("CostPerOneContainer") %></td>
 
        		<td><small> <a href="UpdateCost.jsp?num=<%=resultSet.getString("num")%>">Update</a></small></td>
        		 
        		<form action="DeleteCostServlet" method="post">
        			<input type="hidden" name="num" value="<%=resultSet.getString("num") %>"/>
					<td><small> <input type="submit" value= "Delete" class="select-button" /> </small></td>
				</form>		
        	</tr>			
        			     
        		<% 
					}
										

					} catch (Exception e) {
						e.printStackTrace();
						}
						%>
			</table>
			<br><br>
				<input type ="submit" value="Insert Cost"  onclick="location.href='addCost.jsp'"/>			
			<br><br>
        	</div>
        	</aside>
 </article>
        
  	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
     		
</body>
</html>
