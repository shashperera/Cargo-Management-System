<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
	
<div class="container">

<title>Register</title>
<header>

<header class="o">
	<p>
 		<img src="images/6.jpg" width="15%"  align="left"  Hspace="30" Vspace="20"><br><br> 
 		
 		<h1>Cargo and Shipping</h1>
 </header>
  
 <header class="k" ><br><br><br>
  	<a href="profile.jsp">
 	<img src="images/4.jpg" width="60px" ></a>
 		You are not logged in.
  </header>
  </header>
</head>

<body>
	
<article>
 	<aside>         
	        
	<!-- Side bar -->
	<h3>
	<ul>
 		<li> <a href="homePage.jsp" >Home</a></li><br><br><br><br>
 		<li><a href="Exports.jsp" >Add Export </a></li><br><br><br><br>
		<li> <a href="AboutUs.jsp">About Us</a></li><br><br><br><br>
		<li><a href="ContactUs.jsp">Contact Us</a></li><br><br><br><br>
		
	</ul>
	</h3>
 </aside>

<aside class="h" >
	<br><br>
		
	<h1><b>New customer registration</b></h1><br><br>
			
		<form name="form" action="registerServlet" method="post" >

		<table align="center">
		<tr> 
			<td> Full Name </td>
			<td> <input type="text" name="name"/></td>
		</tr>
		
		<tr> 
			<td> Address </td>
			<td> 
			<textarea name="address" id="msg" cols="24" rows="4"></textarea></td>
		</tr>
		
		<tr>
			<td> Contact Number  </td>
			<td> <input type="text" name="contactNo"/></td>
		</tr>
		
		<tr>
			<td>  Email  </td>
			<td> <input type="email" name="email"/></td>
		</tr>
		<tr>
			<td>  Select User Type  </td>
			<td> <input type="radio" name="userType" value = "customer" checked>Customer<br>
				<input type="radio" name="userType" value = "officer" >Officer<br>
				<input type="radio" name="userType" value = "admin" >Admin<br>
			</td>
		</tr>
		
		<tr>
			<td>  Login username </td>
			<td> <input type="text" name="username"/></td>
		</tr>
		
		<tr>
			<td> Password  </td>
			<td> <input type="password" name="password"/></td>
		</tr>
		
		<tr>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="Register"/>
				<input type="reset" value="Reset"/></td>
		</tr>
	</table>
	</form>
	
</aside>
</article>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>