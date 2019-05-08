<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Cost</title>

	<link rel = "stylesheet" type = "text/css" href = "stylee.css" />
	

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
 			<li> <a href="CostList.jsp" >Cost Management</a></li><br><br><br><br>
		</ul>
		</h3>
 		</aside>

  		<aside class="h">
		<br><br>
		
		<h><b>Add Shipment</b></h>
		<br><br>


		<form name="form" action="AddCostServlet" method="post" > 
		<table>
		<tr>
		<td>Option </td>
		<td><input type="text" name="opt" required/></td> <%-- validate empty fields--%> 
		</tr>
		<tr>
		<td>Package Weight 1-10KG</td>
		<td><input type="text" name="one" required/></td>  <%-- validate empty fields--%> 
		</tr>
		<tr>
		<td>Package Weight 11-25KG</td>
		<td><input type="text" name="two" required/></td>  <%-- validate empty fields--%> 
		</tr>
		<tr>
		<td>Package Weight 26-50KG</td>
		<td><input type="text" name="three" required/></td>  <%-- validate empty fields--%> 
		</tr>
		<tr>
		<td>Package Weight Above 50KG</td>
		<td><input type="text" name="four" required/></td>  <%-- validate empty fields--%> 
		</tr>
		<tr>
		<td>Tax</td>
		<td><input type="text" name="five" required/></td>  <%-- validate empty fields--%> 
		</tr>
		<tr>
		<td>Total Port Cost</td>
		<td><input type="text" name="six" required/></td>  <%-- validate empty fields--%> 
		</tr>
		<tr>
		<td>Container Cost (perOne)</td>
		<td><input type="text" name="seven" required/></td>  <%-- validate empty fields--%> 
		</tr>
		<tr>
		<td></td>
		<td><input type="submit" value="Submit"/>
			<input type="reset" value="Reset"/>
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