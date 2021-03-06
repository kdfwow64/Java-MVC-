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
				
				<ul class="nav navbar-nav navbar-right">
				  <li><a href="${contextPath}/index"><span class="glyphicon glyphicon-home"></span> Home</a></li>
				  <li><a href="${contextPath}/menuitems"><span class="fa fa-bars"></span> Menu</a></li>
	              <li><a href="${contextPath}/login"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
				  
				</ul>
							
			  </div>
			</nav> 
			  
		  </div>
		  
		  
<section class="middlearea menuitem">
	<h2 class="col-md-9 text-right">Menu Items</h2>	
	<div class="col-md-12">
        <div class="col-md-4">          
			<img src="img/p1.jpg">
		</div> 
		<div class="col-md-8 menu-item-detail text-center">
			<h4>$10.99</h4>
			<p class="text-right"><button type="button" class="btn">Add to Order</button></p>
			<p class="menuitem-para">A Caesar salad is a salad of romaine lettuce and croutons dressed with parmesan cheese, lemon juice, olive oil,egg, Worcestershire sauce, garlic, and black pepper. It is tradionally prepared tableside.</p>
			
		</div>	
	</div>

<div class="col-sm-12 review-bottom-section">

<div class="col-sm-5">

<div class="panel panel-login">
        <div class="panel-body">
          <div class="row">
            <div class="col-lg-12 text-center">
              <form id="login-form" action="#" method="post" role="form" style="display: block;">
                <h2>Write Review</h2>
                  <div class="form-group">
                    <input type="text" name="username" id="username" tabindex="1" class="form-control text-center" placeholder="Username" value="">
                  </div>
                  <div class="form-group">
                    <input type="password" name="password" id="password" tabindex="2" class="form-control text-center" placeholder="Password">
                  </div>
                  <div class="col-xs-12 form-group pull-left login-btn">
                    <input type="submit" name="login-submit" id="login-submit" class="btn btn-primary" value="Post Review">					
                  </div>
                 
              </form>
              
            </div>
          </div>
        </div>
        
      </div>

	  
	  
	  
</div>	
	
	<div class="col-sm-5 col-sm-offset-2 review-bottom-right">
<strong>Scott :</strong>
<p>This Salad is the best.</p>	  
	  </div>
	
	</div>
</section>		  
		  
		 
 



	<div class="col-sm-12">
       <div class="footer text-center">
	    <p>Copy Rights &copy; Restaurant Delivery All Rights Reserved</p>

       </div>	   
	
	</div>
	
	
	
	
	
	
	

		</div>
	 </div>
   </section>   
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="${contextPath}/resources/js/bootstrap1.min.js"></script>     
<style>
.menuitem{ width:65%; margin:auto}
.menuitem .col-md-4 img{ width:80%}
.menuitem .processorder{color:red; font-size:22px;}
</style>  
</body>
</html> 