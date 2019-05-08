<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.DBConnection" %>
<%@page import="model.PackageExport" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Export List</title>

<link rel="stylesheet" type="text/css" href="style.css">
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<%
	if (session.getAttribute("username")== null && session.getAttribute("id")== null)
	{
		response.sendRedirect("login.jsp");
	}
			
%>

</head>
<body>	
<article>
 <aside>         	        
<!-- Side bar -->
  <h3>
	<ul>
 		<li><a href="homePage1.jsp" class="button4">Home</a></li><br><br><br><br>  
 		<li><a href="#" class="button4">Add Export </a></li><br><br><br><br>
		<li><a href="viewExpo.jsp" class="button4">View Export </a></li><br><br><br><br>
		<li><a href="ViewShipment.jsp" class="button4">View Shipment</a></li><br><br><br><br>
		<li><a href="AboutUs1.jsp" class="button4">About Us</a></li><br><br><br><br>
 		<li><a href="ContactUs1.jsp" class="button4">Contact Us</a></li><br><br><br><br>
	</ul>
</h3>
</aside>
 <aside class="h">

<br><br>

	<h><b>Add Package Export</b></h>
	<br><br>
		<%
  						
		 	Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
		%>
	
	


<form name="form" action="AddPackageExportServlet" method="post" > 
<table>
<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>

<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>

<tr>
	<td>Product Category</td>
    <td>
	    <select required name="productCategory"> <!-- validate empty fields -->
	   	    	<option value="please select"></option>
	    		<option value="Books">Books</option>
	    		<option value="Food not cooled">Food not cooled</option>
	    		<option value="Textiles">Textiles</option>
	    		<option value="Chemicals">Chemicals</option>
	    		<option value="Shoes">Shoes</option>
	    		<option value="Plastic">Plastic</option>
	    		<option value="other">Other</option>
	    </select>
	</td>
</tr>

<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>

<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>



<tr>
	<td>Weight of Product(KG)</td>
    <td><input type="text" name="weightOfProduct" required/></td> <!-- validate empty fields -->
	    
</tr>

<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>

<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>

	
<tr>
	<td>Transport Type</td>
    <td>
	    <select name="transportType">
	    <option value="please select"></option>
	    <option value="Air">Air</option>
	    <option value="Sea">Sea</option>
	    </select>
	</td>
		
</tr>

<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>

<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>

	
<tr>
    <td>Route Selection</td>
    <td>
	    <select required name="routeOption"> <!-- validate empty fields -->
	    <option value="please select"></option>
	      <%     try{ 
				
					con = DBConnection.createConnection();
					statement=con.createStatement();
					String sql ="SELECT Opt  FROM cost" ;

					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>
	   
	    <option value="<%=resultSet.getString("Opt") %>"><%=resultSet.getString("Opt") %></option>
	    
	    <%
			}
	
		}
			catch (Exception e) {
		
			e.printStackTrace();
		}
		%>
	    
	    </select>
	</td>
</tr>

<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>


	<tr>
	<td></td>
	<td>* Air 01 : Katunayake  --> SunShine(Australia)</td>
	</tr>
	
	<tr>
	<td></td>
	<td>* Air 02 : Katunayake --> Chennai(India) --> Novo Campo(Brazil)</td>
	</tr>
	
	<tr>
	<td></td>
	<td>* Sea 01 : Colombo --> Tolo(China)</td>
	</tr>
	
	<tr>
	<td></td>
	<td>* Sea 02 : Hambanthota --> Changi(Singapore) --> Raki(New Zealand)</td>
	</tr>

<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>

<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>

<tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
<tr>

		<td>UserID</td>
		<td><input type="text" name="userid" value=<%=session.getAttribute("id") %>></td>
	
	
</tr>

<tr>
	<td></td>
	<td><input type="submit" value="Submit" />
	<input type="reset" value="reset"/>
	</td>
</tr>

</table>
</form>
<br><br><br><br>
</aside>
 
 </article>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</div>
</body>

</body>
</html>