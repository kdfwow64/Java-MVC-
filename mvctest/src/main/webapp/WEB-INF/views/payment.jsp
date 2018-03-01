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
		  
		  
<section class="middlearea paymentpage">
	<div class="col-md-12 text-right">
	 <h2>Cancel Order</h2>
	
	</div>
	
	
	<div class="col-md-4 col-md-offset-4">
      
		<div class="paymentdiv">
		
			<form id="payment-form" action="#" method="post" role="form" style="display: block;">
                <h3>Payment Information</h3>
                  <div class="form-group">
                    <input type="text" name="creaditcard" id="creaditcard" tabindex="1" class="form-control" placeholder="Creadit Card" value="">
                  </div>
                  <div class="form-group">
                    <input type="text" name="securenumber" id="securenumber" tabindex="2" class="form-control" placeholder="Secure Number">
                  </div>
				  
				  <div class="form-group">
                    <input type="text" name="zipcode" id="zipcode" tabindex="3" class="form-control" placeholder="Zip Code">
                  </div>
                  <div class="form-group">
                    
                    <input type="submit" name="login-submit" id="login-submit" class="btn btn-primary" value="Process">					
                  </div>
                 
              </form>
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