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
				
				<ul class="nav navbar-nav navbar-right">
				  <li><a href="${contextPath}/index"><span class="glyphicon glyphicon-home"></span> Home</a></li>
				  <li><a href="${contextPath}/menuitems"><span class="fa fa-bars"></span> Menu</a></li>
	              <li><a href="${contextPath}/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				  <li><a href="${contextPath}/register"><span class="glyphicon glyphicon-user"></span> Register</a></li>
				</ul>
							
			  </div>
			</nav> 
			  
		  </div>
		  
		  <div class="col-sm-offset-3 col-sm-6 home-div-img">
		    <img src="${contextPath}/resources/img/main-img.jpg" alt="home-img" class="img-responsive" height="400">
		  </div>
		  
		  <div class="col-sm-offset-3 col-sm-6 home-page-des">
		    <div class="col-sm-6 content-main">
			<p>"One cannot think well, sleep well if one has not DINED well" </p>
			</div>
		     
			<div class="col-sm-6">
			<p>Pizza might just be the ultimate delivery meal so why not up the ante a bit? This Clinton Hill pizzeria by husband-and-wife team Matt and Emily Hyland has only been open since early 2014, but its dough, mozzarella-both made in-house, by hand-and wood-burning oven have quickly established it as a force. </p>
			</div>
		     
		  
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