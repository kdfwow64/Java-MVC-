<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Restaurant Delivery</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="${contextPath}/resources/css/bootstrap1.min.css">
  <link rel="stylesheet" href="${contextPath}/resources/css/style.css">
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

  
  </head>

<body>

    
   <section class="header">
     <div class="container main-container">
	    <div class="row">
		    <div class="page-header">
		    <nav class="navbar">
			  <div class="container-fluid">
				<div class="navbar-header">
				  <a class="navbar-brand" href="#"><h1>Restaurant Delivery</h1></a>
				</div>
				
				
							
			  </div>
			</nav> 
			  
		  </div>
		  
		  
<section class="middlearea locationpage">
	<h2 class="col-md-8 text-right">Locations</h2>	
	<h2 class="text-right  processorder col-md-4"><u>Cancel Order</u></h2>	
	<div class="col-md-12">
        <div class="col-md-4">          
			<img src="${contextPath}/resources/img/l1.jpg">
		</div> 
		<div class="col-md-6 col-md-offset-2 select-location-text">
			
			<p class="title">Best Food In Town<br>Bronx, NY 10022</p>
			<p><button type="button" class="btn">Select Location</button></p>
		</div>	
	</div>
	
	
	<div class="col-md-12">
        <div class="col-md-4">          
			<img src="${contextPath}/resources/img/l2.jpg">
		</div> 
		<div class="col-md-6 col-md-offset-2 select-location-text">
			
			<p class="title">Best Food In Town<br>Brooklyn, NY 10022</p>
			<p><button type="button" class="btn">Select Location</button></p>
		</div>	
	</div>
</section>		  
		  
		 

	<div class="col-sm-12">
       <div class="footer text-center">
	    <p>Copy Rights Restaurant Delivery All Rights Reserved</p>

       </div>	   
	
	</div>
	
	
	
		</div>
	 </div>
   </section>   
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap1.min.js"></script>     
</body>
</html> 