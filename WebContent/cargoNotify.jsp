
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
	<link rel = "stylesheet" type = "text/css" href = "stylee.css" />
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Cargo Notify</title>
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
</head>

<body>
<div class="container">	
<article>
 <aside>         
	        
<!-- Side bar -->

<h3>
<ul>
 	<li><a href="officerHomePage.jsp" >Home</a></li><br><br><br><br>
 	<li><a href="#" >Export List </a></li><br><br><br><br>
 	<li><a href="Shipments.jsp" >Shipment List</a></li><br><br><br><br> 
 	<li><a href="CostList.jsp" >Cost Management</a></li><br><br><br><br>
</ul>
</h3>
 </aside>
 <aside class="h">
 
 <br><br>

	<h><b>Cargo Notify</b></h>
	<br><br>
 
 	<%
		
 		String eID = request.getParameter("expoID");
	
			Connection connection = null;
			Statement statement = null;
			ResultSet resultSet = null;
		%>
		
		<%
			try{ 
				connection = DBConnection.createConnection();
					statement=connection.createStatement();
					String sql ="SELECT * FROM  cargoExpo where expoID="+eID;

					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>

	
			<form action="AddCargoNotifyServlet" method="post">
			
				<br>
				Cargo ID :<br>
					<input type="text" name="expoID" value="<%=resultSet.getString("expoID") %>"readonly>
				<br>
				Product Category:<br>
				<input type="text" name="productCategory"  value="<%=resultSet.getString("productCategory") %>"readonly>
				<br>
				No Of Containers:<br>
				<input type="text" name="noOfContainers" value="<%=resultSet.getString("noOfContainers") %>"readonly>
				<br>
				Net Weight:<br>
				<input type="text" name="netWeight" value="<%=resultSet.getString("size") %>"readonly>
				<br>
				Dimension:<br>
				<input type="text" name="dimension" value="<%=resultSet.getString("ref") %>"readonly>
				<br>
				Transport Type :<br>
				<input type="text" name="transpType" value="<%=resultSet.getString("transpType") %>"readonly>
				<br>
				Route Selection :
				<br>
				<input type="text" name="routeSelection" value="<%=resultSet.getString("routeSelection") %>"readonly>
				<br>
				User ID :<br>
				<input type="text" name="userid" value="<%=resultSet.getString("userid") %>"readonly>
				<br>
				Add Notify :<br>
				<input type="text" name="notify" value="<%=resultSet.getString("notify") %>">
				<br>
				<input type="submit" value="Update">
		</form>
		<%
			}
		connection.close();
		} catch (Exception e) {
		
			e.printStackTrace();
		}
	%>
<br><br><br>
</aside>
</article>
</div>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
	
 </body>
 </html>
