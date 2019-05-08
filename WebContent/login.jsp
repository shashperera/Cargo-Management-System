
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<link rel="stylesheet" type="text/css" href="style.css">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Login/Register</title>

<div class="container">
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

	<h1><b>For Registered Customer</b></h1><br><br>
		
	<form name="form" action="loginServlet" method="post" >
	<table align="center">

		<tr> 
			<td> Enter user Type :</td>
			<td> <select name="utype">
	    		<option value="please select"></option>
	    		<option value="customer">Customer</option>
	    		<option value="officer">Officer</option>
	    		<option value="admin">Admin</option>
	    		</select>
	    	</td>
		</tr>
		
		<tr> 		
			<td> Enter user name :</td>
			<td> <input type="text" name="uname" required/></td>
		</tr>
		<tr>
			<td>Enter password : </td>
			<td> <input type="password" name="pass" required/></td>
		</tr>
		
		<tr>
			<td></td>
		</tr>
		
		<tr>
			<td></td>
			<td><input type="submit" value="Login"/>
				<input type="reset" value="Reset"/></td>
		</tr>
	</table>
	</form>

		<h1><b>For New User Registration </b></h1>
		
		<input type=submit onclick="location.href='Register.jsp'"  value = "Register">

		<br><br><br>
	</aside>
</article>

	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</div>
</body>
</html>