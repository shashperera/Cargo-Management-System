<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<style>

.button {
  display: inline-block;
  padding: 4px 7px;
  font-size: 24px;
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

.button:hover {background-color: #00cccc}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
  .button4 {border-radius: 12px;}
  
  </style>
<title>CargoAppHomePage</title>


<div class="container">
<header>

<header class="o">
<p>
 <img src="images/6.jpg" width="15%"  align="left"  Hspace="30" Vspace="20"><br><br> 
 <h1><i>Cargo and Shipping</i></h1>
 </header>
 
<header class="k" ><br><br><br>
  &nbsp&nbsp&nbsp<a href="profile.jsp">
 	<img src="images/4.jpg" width="60px" ></a>
 &nbsp&nbsp&nbsp<a href="login.jsp" class="button" >Login/Register</a><br>
</header>
</header>

</head>

<body>
<article>
 <aside>         
	        
<!-- Side bar -->

<h3>
<ul>

 <li> <a href="homePage.jsp" class="button4" >Home</a></li><br><br><br><br>
 <li><a href="Exports.jsp" class="button4" >Export </a></li><br><br><br><br>
 <li> <a href="AboutUs.jsp" class="button4">About Us</a></li><br><br><br><br>
 <li><a href="ContactUs.jsp" class="button4">Contact Us</a></li><br><br><br><br>

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