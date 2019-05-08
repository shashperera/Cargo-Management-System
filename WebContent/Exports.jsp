<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Export Methods</title>
<link rel="stylesheet" type="text/css" href="style.css">

<div class="container">
<header>
<header class="o">
<p>
 <img src="images/6.jpg" width="15%"  align="left"  Hspace="30" Vspace="20"><br><br> 
 <h1>Cargo and Shipping</h1>
</header>
 	
<header class="k" ><br><br><br>
  <a href="profile.jsp">
 &nbsp&nbsp&nbsp<img src="images/4.jpg" width="60px" ></a><br>
	
<a href="login.jsp" class="button button4">Login/Register</a><br>

</header>
</header>

<style>
.button {
  display: inline-block;
  padding: 3px 5px;
  font-size: 15px;
  cursor: pointer;
  text-align: center;	
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: blue;
  border: none;
  border-radius: 15px;
  box-shadow: 0 3px #666;
}

.button:hover {background-color: #0099cc}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
  
   .button4 {
   border-radius: 12px;}
  
</style>

</head>

<body>

<article>
<aside>         
	        
<!-- Side bar -->

 <h3>
  	<ul>
 	<li> <a href="homePage.jsp" class="button4">Home</a></li><br><br><br><br>
 	<li><a href="#" class="button4">Export </a></li><br><br><br><br>
 	<li> <a href="AboutUs.jsp" class="button4">About Us</a></li><br><br><br><br>
 	<li><a href="ContactUs.jsp" class="button4">Contact Us</a></li><br><br><br><br>
	</ul>
</h3>
 </aside>
 
 <aside class="h">
		<br><br>
		<h><b>Export Methods</b></h>
		<br><br><br>
		
		Click here for  
			<input type="submit" value="Package Exports" class="button button4" onclick="location.href='addPackageExport.jsp'"/><br><br><br>
	
		Click here for  
			<input type="submit" value="Cargo Exports" class="button button4" onclick="location.href='addCargoExport.jsp'"/><br><br><br>
	
</aside>
</article>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
	
</body>
</html>