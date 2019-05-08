
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


		<%
			if (session.getAttribute("username")== null && session.getAttribute("id")== null)
			{
				response.sendRedirect("login.jsp");
			}
		%>

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

 		<li><a href="viewExpo.jsp" class="button4">View Export</a></li><br><br><br><br>

 		<li><a href="#" class="button4">View Shipment</a></li><br><br><br><br>
 
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
		 <caption><h2>Package Shipment</h2></caption>
		 
		  <tr>
                <th>shipment ID</th>
         		<th>Export ID</th>
                <th>Route Option </th>
                <th>Date 1</th>
                <th>Location</th>
                <th>Date 2</th>
                <th>Location</th>
                <th>Date 3</th>
                <th>Location</th>
               
            </tr>
		
			<%
		try{ 
					con = DBConnection.createConnection();
					statement=con.createStatement();
					
				
					String sql ="SELECT * FROM  packageShipment ps,packageexpo p where ps.refID=p.expoID AND p.userID= "+session.getAttribute("id");

					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>
				<tr>

					<td><%=resultSet.getString("PshipmentID") %></td>
					<td><%=resultSet.getString("refID") %></td>
					<td><%=resultSet.getString("routeOption") %></td>
					<td><%=resultSet.getString("date1") %></td>
					<td><%=resultSet.getString("portName1") %></td>
					<td><%=resultSet.getString("date2") %></td>
					<td><%=resultSet.getString("portName2") %></td>
					<td><%=resultSet.getString("date3") %></td>
					<td><%=resultSet.getString("portName3") %></td>
				</tr>
			
	
			<% }
			} catch (Exception e) {
				e.printStackTrace();
			}
			%>
			</table>
			<br><br>	
			<table border="1" cellpadding="12">
			<caption><h2>Cargo Shipment</h2></caption>
			 
			   <tr>
                <th>shipment ID</th>
         		<th>Export ID</th>
                <th>Route Option </th>
                <th>Date 1</th>
                <th>Location</th>
                <th>Date 2</th>
                <th>Location</th>
                <th>Date 3</th>
                <th>Location</th>
               
            </tr>
			<%
				 try{
					 	con = DBConnection.createConnection();
						statement=con.createStatement();
						String sql1 ="SELECT * FROM  cargoExpo ce, cargoshipment c  where c.refID = ce.expoID AND ce.userID="+session.getAttribute("id")  ;
		
						resultSet = statement.executeQuery(sql1);
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