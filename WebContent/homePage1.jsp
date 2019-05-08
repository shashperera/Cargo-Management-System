<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>CargoAppHomePage</title>
</head>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
  </head>
<body>
<div class="container">	
<article>
 <aside>         
	        
<!-- Side bar -->

 <h3>
<ul>
 	<li><a href="#" >Home</a></li><br><br><br><br>
 	<li><a href="Exports1.jsp" class="button4" >Add Export </a></li><br><br><br><br>
 	<li><a href="viewExpo.jsp" class="button4">View Exports</a></li><br><br><br><br>
 	<li><a href="ViewShipment.jsp" class="button4">View Shipment</a></li><br><br><br><br>
 	<li><a href="AboutUs1.jsp" class="button4">About Us</a></li><br><br><br><br>
 	<li><a href="ContactUs1.jsp" class="button4">Contact Us</a></li><br><br><br><br>
 
</ul>
</h3>

 </aside>

<aside class="h">

<div class="slideshow-container">

<div class="mySlides fade">
  <img src="images/1.jpg" style="width:100% ">
</div>

<div class="mySlides fade">
  <img src="images/2.jpg" style="width:100% ">
</div>

<div class="mySlides fade">
  <img src="images/3.jpg" style="width:100% ">
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 5000); // Change image every 2 seconds
}
</script>
</aside>
</article>       
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
   
</div>    
</body>
</html>