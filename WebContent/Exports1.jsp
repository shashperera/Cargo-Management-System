<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Export Methods</title>

<link rel="stylesheet" type="text/css" href="style.css">

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<style>

.button {
  display: inline-block;
  padding: 3px 5px;
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

.button:hover {background-color: #0099cc}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
  
  
   .button4 {border-radius: 12px;}
      
</style>

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

	<h><b>Export Methods</b></h><br><br><br>
	
	Click here for 
		<input type="submit" value="Package Export" class="button button4" onclick="location.href='addPackageExport.jsp'"/><br><br><br>
	
	Click here for 
		<input type="submit" value="Cargo Export" class="button button4" onclick="location.href='addCargoExport.jsp'"/><br><br><br>
	
</aside>
</article>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>	
</body>
</html>