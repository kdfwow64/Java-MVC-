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
	              <li><a href="${contextPath}/index"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>				  
				</ul>
							
			  </div>
			</nav> 
			  
		  </div>
		  
		  
<section class="middlearea orderreceipt">
	<h2 class="col-md-8 text-center">User's Passed Orders</h2>	
		
	
<div class="col-md-6">
<div class="col-md-12">
	
	
        <div class="col-md-6 passed-order-menu">          
		<ul>
		<li>$10.99</li>
		<li>Caesar Salad</li>
		<li>$15.99</li>
		<li>Hamburger</li>
		<li>$10.99</li>
		<li>Caesar Salad</li>
		<li>$15.99</li>
		<li>hamburger</li>
		
		</ul>
		</div> 
			
	</div>
	</div>
	
	<div class="col-md-5">
		<div class="receipt text-center">
			Total: $28.98<br>
			Tax:$2</br>
			Item:2</br>
			Order Number: 21234123</br><br>
			Best Food In Town</br>
			Brooklyn, NY 11222</br>
		</div>
		
		<div class="receipt text-center">
			Total: $28.98<br>
			Tax:$2</br>
			Item:2</br>
			Order Number : 21234123</br><br>
			Best Food In Town</br>
			Brooklyn, NY 11222</br>
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
.orderreceipt{ width:65%; margin:auto}
.orderreceipt .col-md-6 img{ width:80%}
.orderreceipt .processorder{color:red; font-size:22px;}
.receipt{ background-color:#67e57c; color:#fff; margin:25px; padding:20px; font-size:15px;}
</style>  
</body>
</html> 