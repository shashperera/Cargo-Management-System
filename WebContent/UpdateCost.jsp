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

	<article>
 		<aside>         	        
		<!-- Side bar -->
  		<h3>
		<ul>
 			<li> <a href="officerHomePage.jsp" >Home</a></li><br><br><br><br>
 			<li> <a href="ExportList.jsp" >Export List</a></li><br><br><br><br>
 			<li> <a href="Shipments.jsp" >Shipment List</a></li><br><br><br><br>
 			 <li> <a href="#" >Cost Management</a></li><br><br><br><br>
 		</ul>
		</h3>
 		</aside>

  		<aside class="h">
		<br><br>

		<h><b>Update the cost details</b></h>
		<br><br>
  		<%
  			String num = request.getParameter("num");
  			
  			
		 	Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
		%>
		
		
		<%
			try{ 
				
					con = DBConnection.createConnection();
					statement=con.createStatement();
					String sql ="SELECT *  FROM cost where num="+num;

					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>

			<form action="updateCostServlet" method="post">
				
				Route Number : <br>
				<input type="text" name="num"  value="<%=resultSet.getString("num") %> "readonly>		
				<br>
				option : <br>
				<input type="text" name="opt"  value="<%=resultSet.getString("Opt") %> "readonly>		
				<br>
				 PackageWeight 1to10 KG :<br>
					<input type="text" name="one"  value="<%=resultSet.getString("PackageWeight_1to10_KG") %>">
				<br>
				PackageWeight 11to25 KG:<br>
					<input type="text" name="two"  value="<%=resultSet.getString("PackageWeight_11to25_KG") %>">
				<br>
				PackageWeight 26to50 KG:<br>
					<input type="text" name="three" value="<%=resultSet.getString("PackageWeight_26to50_KG") %>">
				<br>
				Above 50KG :<br>
					<input type="text" name="four" value="<%=resultSet.getString("Above50KG") %>">
				<br>
				 tax :
				<br>
				<input type="text" name="five" value="<%=resultSet.getString("tax") %>">
				<br>
				Total Port Cost :<br>
				<input type="text" name="six" value="<%=resultSet.getString("TotalPortCost") %>">
				<br>
				Cost Per One Container:
				<br>
				<input type="text" name="seven" value="<%=resultSet.getString("CostPerOneContainer") %>">
		
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