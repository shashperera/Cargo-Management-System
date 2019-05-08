<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>

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
 	<li><a href="homePage1.jsp" class="button4">Home</a></li><br><br><br><br>
 	<li><a href="Exports1.jsp" class="button4">Add Export </a></li><br><br><br><br>
 	<li><a href="viewExpo.jsp" class="button4">View Export </a></li><br><br><br><br>
   	<li><a href="ViewShipment.jsp" class="button4">View Shipment</a></li><br><br><br><br>
 	<li><a href="AboutUs1.jsp" class="button4">About Us</a></li><br><br><br><br>
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


<p>Leave us your message</p><br>

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

	
