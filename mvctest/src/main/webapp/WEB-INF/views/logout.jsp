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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap1.min.js"></script>
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
		  
		  
		 <div class="col-sm-12 logout-text text-center">
		  <p><b>Thanks for Visiting US!! You have been logged out<br>
		      Want to Log back in? Click below</b></p>
          <span class="text-center"><a href="#">Login</a></span>			  
		 
		 </div>


    

			<div class="col-sm-12">
			   <div class="footer text-center">
				<p>Copy Rights &copy; Restaurant Delivery All Rights Reserved</p>

			   </div>	   
			
			</div>
			
	
		</div>
	 </div>
   </section>   
	      
</body>
</html> 