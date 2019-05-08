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
<link rel = "stylesheet"
   type = "text/css"
   href = "stylee.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
</head>
<body>
<div class="container">	
<article>
 <aside>         	        
<!-- Side bar -->
  <h3>
<ul>
 <li> <a href="officerHomePage.jsp" >Home</a></li><br><br><br><br>
 <li> <a href="ExportList.jsp" >Export List</a></li><br><br><br><br>
 <li> <a href="Shipments.jsp" >Shipment List</a></li><br><br><br><br>
 <li> <a href="CostList.jsp" >Cost Management</a></li><br><br><br><br>
 </ul>
</h3>
 </aside>

  <aside class="h">

<br><br>

	<h><b>Shipment List</b></h>
	<br><br>
 
	  <div align="left">
		<table border="1" cellpadding="12">
		 <caption><h2>List of Shipment</h2></caption>
		 
		  <tr>
                 <th>shipment ID</th>
         		<th>ref ID</th>
                <th>Route Option </th>
                <th>Date 1</th>
                <th>Port name 1</th>
                <th>Date 2</th>
                <th>Port Name 2</th>
                 <th>Date 3</th>
                <th>Port Name 3</th>
               
            </tr>
      
    <%

			Connection connection = null;
			Statement statement = null;
			ResultSet resultSet = null;
		%>
		<%
			try{ 
				connection = DBConnection.createConnection();
					statement=connection.createStatement();
					String sql ="SELECT * FROM cargoShipment";

					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>
					
					<tr>

				<td><%=resultSet.getString("shipmentID") %></td>
				<td><%=resultSet.getString("refID") %></td>
				<td><%=resultSet.getString("routeOption") %></td>
				<td><%=resultSet.getString("date1") %></td>
				<td><%=resultSet.getString("portName1") %></td>
				<td><%=resultSet.getString("date2") %></td>
				<td><%=resultSet.getString("portName2") %></td>
				<td><%=resultSet.getString("date3") %></td>
				<td><%=resultSet.getString("portName3") %></td>
			
	
        				
        				</tr>			
        			     
        		<% 
					}

					} catch (Exception e) {
						e.printStackTrace();
						}
						%>
				</table>
				
				<input type="submit" value="Exit" onclick="location.href='officerHomePage.jsp'"/><br><br><br>
	
        		</div>
        		</aside>
        	 </article>
        <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</div>		
        </body>
        </html>
