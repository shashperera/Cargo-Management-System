<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Shipment</title>

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

	<h><b>Add Shipment</b></h>
	<br><br>
	
	<%
		String id =(String)request.getAttribute("expoID");
		String op =(String)request.getAttribute("routeSelection");
	%>

		<form name="form" action="AddPackageShipmentServlet" method="post" > 
			<table>
			  <tr>
				<td>RefID </td>
				<td><input type="text" name="refID" value="<%=id%>"readonly></td>
			</tr>
			<tr>
				<td>Route option </td>
				<td><input type="text" name="routeOption" value="<%=op%>"readonly></td>	
			</tr>
			<tr>
				<td>Date 1</td>
				<td><input type="date" name="date1" /></td>
			</tr>
			<tr>
				<td>Port Name 1</td>
				<td><input type="text" name="portName1" required/></td>
			</tr>
			<tr>
				<td>Date 2</td>
				<td><input type="date" name="date2"/></td>
			</tr>
			<tr>
				<td>Port Name 2</td>
				<td><input type="text" name="portName2"/></td>
			</tr>
			<tr>
				<td>Date 3</td>
				<td><input type="date" name="date3"/></td>
			</tr>
			<tr>
				<td>Port Name 3</td>
				<td><input type="text" name="portName3"/></td>
			</tr>
				
			<tr>
				<td></td>
				<td><input type="submit" value="Submit"/>
					<input type="reset" value="reset"/>
				</td>
			</tr>
			</table>
	</form>
</aside>
 
 </article>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</div>


</body>
</html>