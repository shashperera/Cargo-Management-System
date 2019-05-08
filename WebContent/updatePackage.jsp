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
		<li> <a href="homePage1.jsp" class="button4">Home</a></li><br><br><br><br> 
		<li><a href="#" class="button4">Add Export </a></li><br><br><br><br>
		<li><a href="viewExpo.jsp" class="button4">View Export </a></li><br><br><br><br>
		<li><a href="ViewShipment.jsp" class="button4">View Shipment</a></li><br><br><br><br>
		<li> <a href="AboutUs1.jsp" class="button4">About Us</a></li><br><br><br><br>
 		<li><a href="ContactUs1.jsp" class="button4">Contact Us</a></li><br><br><br><br>
 	</ul>
	</h3>
</aside>

 <aside class="h">

<br><br>

	<h><b>Update the package export details</b></h>
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
					String sql ="SELECT *  FROM  packageExpo where expoID="+eID;

					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>

	<form method="post" action="UpdatePackageExpoServlet">
			
		<br>
		Package ID :<br>
			<input type="text" name="expoID"  value="<%=resultSet.getString("expoID") %>"readonly>
		<br>
		Product Category:<br>
		<input type="text" name="productCategory"  value="<%=resultSet.getString("productCategory") %>" readonly>
		<br>
		Weight:<br>
		<input type="text" name="weight" value="<%=resultSet.getString("weight") %>">
		<br>
		Transport Type :<br>
		<label for="transpType">
		<input type="text" name="transpType" value="<%=resultSet.getString("transpType") %>" readonly>
		</label>
		<br>
		Route Selection :<br>
		<input type="text" name="routeSelection" value="<%=resultSet.getString("routeSelection") %>"readonly>
		<br>
		User ID :<br>
		<input type="text" name="userid" value="<%=resultSet.getString("userid") %>"readonly>
		<br><br>
		
		<input type="submit" value="update">
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
