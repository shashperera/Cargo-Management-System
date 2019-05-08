<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<div class="container">
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Home Page</title>
	
	<link rel="stylesheet" type="text/css" href="style.css">
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
</head>

<body>
	
	<article>
 	<aside>         	        
		<!-- Side bar -->
  	<h3>
		<ul>
			<li> <a href="#" >Home</a></li><br><br><br><br>
 			<li> <a href="ExportList.jsp" >Export List</a></li><br><br><br><br> 
 			<li> <a href="Shipments.jsp" >Shipment List</a></li><br><br><br><br> 
 			<li> <a href="CostList.jsp" >Cost Management</a></li><br><br><br><br>
 		</ul>
	</h3>
 	</aside>
 	</article>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
</html>