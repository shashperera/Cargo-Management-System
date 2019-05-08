<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Contact Us</title>

<link rel="stylesheet" type="text/css" href="style.css">

<div class="container">
	
<header class="o">
<p>
 <img src="images/6.jpg" width="15%"  align="left"  Hspace="30" Vspace="20"><br><br> 
 <h1>Cargo and Shipping</h1>
</header>

 <header class="k" ><br><br><br>
 <a href="profile.jsp">
 <img src="images/4.jpg" width="60px" ></a>
 <a href="login.jsp" >Login/Register</a><br>
</header>
</head>

<body>

<article>
 <aside>         
	        
<!-- Side bar -->

<h3>
<ul>
 <li> <a href="homePage.jsp" class="button4">Home</a></li><br><br><br><br>
 <li><a href="Exports.jsp" class="button4">Export </a></li><br><br><br><br>
 <li> <a href="AboutUs.jsp" class="button4">About Us</a></li><br><br><br><br>
 <li><a href="#" class="button4">Contact Us</a></li><br><br><br><br>
</ul>
</h3>

</aside>
<aside class="h">

<br><br>

<h><b>Contact Us</b></h>
<br><br>

<p>
	<pre>
	 Our Email  - ouremail123@gmail.com

	 Phone      - 0112901565

	 Mobile     - 0785652355
	</pre>
</p>

<form name="myform1" method="POST" action="">
<aside class="i">
 <img src="images/5.jpg" width="200px"><br>
</aside>


<p>Leave us your message</p>
<br>

<pre>
	<input type="text" name="txtbox1" id="txtbox1" placeholder="Name*"><br>
	<textarea name="msg" id="msg" cols="24" rows="4"></textarea><br>
	<input type="submit" name="submit" value="Submit" placeholder="Message*"><br>
</pre>
</form>
</aside>
 
</article>

<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</div>
</body>
</html>

	
