<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.DBConnection" %>

<!DOCTYPE html>
<html>
<head>
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
 <li> <a href="officerHomePage.jsp" >Home</a></li><br><br><br><br>
 <li> <a href="ExportList.jsp" >Export List</a></li><br><br><br><br>
 <li> <a href="Shipments.jsp" >Shipment List</a></li><br><br><br><br>
 <li> <a href="CostList.jsp" >Cost Management</a></li><br><br><br><br>
 </ul>
</h3>
 </aside>

  <aside class="h">

<br><br>

	<h><b>Update the cargo shipment details</b></h>
	<br><br>
  <%
  			String id = request.getParameter("shipmentID");
  			
  			
		 	Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
		%>
		
		
			<%
			try{ 
				
					con = DBConnection.createConnection();
					statement=con.createStatement();
					String sql ="SELECT *  FROM cargoShipment where shipmentID="+id;

					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>

	<form method="post" action="updateCargoShipmentServlet">
	
		Package shipmentID : <br>
		<input type="text" name="shipmentID"  value="<%=resultSet.getString("shipmentID") %>" readonly>
		
		<br>
		Package ID :<br>
			<input type="text" name="refID"  value="<%=resultSet.getString("refID") %>"readonly>
		<br>
		selected route option:<br>
		<input type="text" name="routeOption"  value="<%=resultSet.getString("routeOption") %>"readonly>
		<br>
		Date 1:<br>
		<input type="date" name="date1" value="<%=resultSet.getString("date1") %>">
		<br>
		Port Name1 :<br>
		<input type="text" name="portName1" value="<%=resultSet.getString("portName1") %>">
		<br>
		Date 2 :
		<br>
		<input type="date" name="date2" value="<%=resultSet.getString("date2") %>">
		<br>
		Port Name2 :<br>
		<input type="text" name="portName2" value="<%=resultSet.getString("portName2") %>">
		<br>
		Date 3 :
		<br>
		<input type="date" name="date3" value="<%=resultSet.getString("date3") %>">
		<br>
		Port Name3 :<br>
		<input type="text" name="portName3" value="<%=resultSet.getString("portName3") %>">
		<br><br>
		<input type="submit" value="update">
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