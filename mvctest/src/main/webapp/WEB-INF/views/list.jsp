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
				  <li><a href="#"><span class="glyphicon glyphicon-menu"></span>Navigate Application</a></li>
	              <li><a href="#" id="login-form-link"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>	
				</ul>
							
			  </div>
			</nav> 
			  
		  </div>
		  
		  <div class="col-sm-offset-4 col-sm-4">
		    <ul class="nav nav-tabs">
			  <li><a data-toggle="tab" href="#home">User List</a></li>
			  <li><a data-toggle="tab" href="#menu1">Item List</a></li>
			  <li><a data-toggle="tab" href="#menu2">Order List</a></li>
			  <li><a data-toggle="tab" href="#menu3">Location List</a></li>
			</ul>
           </div>
		   
		   
		  
		  
<div class="col-sm-12">
<div class="tab-content">
  
  <div id="home" class="tab-pane fade in">
    <div class="col-sm-3 single-user-info">
				<form action="#" method="post" role="form">
                <h3>Single User's Information</h3>
                  
				  <div class="form-group">
                    <input type="text" name="firstname" id="firstname" tabindex="1" class="form-control" placeholder="firstname" value="">
                  </div>
				  
				  <div class="form-group">
                    <input type="text" name="lastname" id="lastname" tabindex="2" class="form-control" placeholder="lastname" value="">
                  </div>
				  
				  <div class="form-group">
                    <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
                  </div>
				  
                  <div class="form-group">
                    <input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirm Password">
                  </div>
				  
				  <div class="form-group">
					<select name="gender" id="gender" class="form-control" placeholder="gender">
					  <option>Male</option>
					  <option>Female</option>
					</select>
                  </div>
				  
				  <div class="form-group">
                    <input type="text" name="address" id="address" tabindex="" class="form-control" placeholder="address" value="">
                  </div>
				  
				  <div class="form-group">
                    <input type="text" name="phone" id="phone" tabindex="" class="form-control" placeholder="phone" value="">
                  </div>
				  
                  <div class="form-group">
                    <input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="Email" value="">
                  </div>
                  
                  <div class="form-group">
                    <div class="row">
                     <div class="col-xs-12 form-group pull-left login-btn">
                     
                    <input type="submit" name="update-user" id="update-user" class="btn btn-primary" value="Update User">					
                  </div>
                    </div>
                  </div>
              </form>
			  </div>
			  
			  <div class="col-sm-9 user-details">
			     <h4>Scott</h4>
				 <p>This Salad is the best.</p>
				 <input type="submit" class="btn btn-primary" id="delete Review" value="delete Review">
				
			    </div>
			  
			  
  </div>
  
  <div id="menu1" class="tab-pane fade">
    <div class="col-sm-12 tab-list-item">
	   <div class="col-sm-3 add-item-list">
				<form action="#" method="post" role="form">
                <h3 class="text-center">Items List</h3>
                  
				  <div class="form-group">
                    <input type="text" name="itemname" id="itemname" tabindex="1" class="form-control" placeholder="Item Name" value="">
                  </div>
				  
				  <div class="form-group">
                    <input type="text" name="price" id="price" tabindex="2" class="form-control" placeholder="Price" value="">
                  </div>
				  
				  <div class="form-group">
                    <input type="text" name="description" id="description" tabindex="3" class="form-control" placeholder="Description" value="">
                  </div>
				  
				  <div class="form-group">
                    <input type="text" name="image" id="image" tabindex="4" class="form-control" placeholder="Image" value="">
                  </div>
				  
				  
				  <div class="form-group">
                    <input type="text" name="category" id="category" tabindex="5" class="form-control" placeholder="Category" value="">
                  </div>
				  
				  
                  <div class="form-group">
                    <div class="row">
                     <div class="col-xs-12 form-group pull-left login-btn">
                     
                    <input type="submit" name="update-item" id="update-item" class="btn btn-primary" value="Update Item">					
                  </div>
                    </div>
                  </div>
              </form>
			  </div>
	     
		 <div class="col-sm-offset-1 col-sm-3 add-item-list">
		      <form action="#" method="post" role="form">
                <h3 class="text-center">Add Items</h3>
                  
				  <div class="form-group">
                    <input type="text" name="itemname" id="itemname" tabindex="1" class="form-control" placeholder="Item Name" value="">
                  </div>
				  
				  <div class="form-group">
                    <input type="text" name="price" id="price" tabindex="2" class="form-control" placeholder="Price" value="">
                  </div>
				  
				  <div class="form-group">
                    <input type="text" name="description" id="description" tabindex="3" class="form-control" placeholder="Description" value="">
                  </div>
				  
				  <div class="form-group">
                    <input type="text" name="image" id="image" tabindex="4" class="form-control" placeholder="Image" value="">
                  </div>
				  
				  
				  <div class="form-group">
                    <input type="text" name="category" id="category" tabindex="5" class="form-control" placeholder="Category" value="">
                  </div>
				  
				  
                  <div class="form-group">
                    <div class="row">
                     <div class="col-xs-12 form-group pull-left login-btn">
                     
                    <input type="submit" name="update-item" id="update-item" class="btn btn-primary" value="Add Item">					
                  </div>
                    </div>
                  </div>
              </form>
		 </div>
	      
	   
	</div>
	
	
  </div>
  
  <div id="menu2" class="tab-pane fade">
          <div class="col-sm-12 list-order-details">			
			<div class="col-sm-offset-4 col-sm-4 order-list-details">
                    <h4>List Of Orders</h4>
					<span>Number Of Items:-1</span><br>
					Order Number: 23434546 <br>
					Total: $10.96 <input type="submit" value="Delete order">
                 </div>				 
			
			    <div class="col-sm-offset-4 col-sm-4 order-list-details">
                    
					<span>Number Of Items:3</span><br>
					Order Number: 25654546 <br>
					Total: $40.96 <input type="submit" value="Delete order">
                 </div>				 
			
			<div class="col-sm-offset-4 col-sm-4 order-list-details">
                    
					<span>Number Of Items:2</span><br>
					Order Number: 23434546 <br>
					Total: $20.96 <input type="submit" value="Delete order">
                 </div>				 
			  </div>
  </div>
  
  <div id="menu3" class="tab-pane fade">
    
	<div class="col-sm-12 tab-list-item">
	   <div class="col-sm-3 add-item-list">
				<form action="#" method="post" role="form">
                <h3 class="text-center">Items List</h3>
                  
				  <div class="form-group">
                    <input type="text" name="location" id="location" tabindex="1" class="form-control" placeholder="Location" value="">
                  </div>
				  
				  <div class="form-group">
                    <input type="text" name="add" id="add" tabindex="2" class="form-control" placeholder="Address" value="">
                  </div>
				  
				  <div class="form-group">
                    <input type="text" name="city" id="city" tabindex="3" class="form-control" placeholder="City" value="">
                  </div>
				  
				  <div class="form-group">
                    <input type="text" name="staff" id="staff" tabindex="4" class="form-control" placeholder="Staffs" value="">
                  </div>
				  
				  
				  <div class="form-group">
                    <input type="text" name="zip" id="zip" tabindex="5" class="form-control" placeholder="Zipcode" value="">
                  </div>
				  
				  <div class="form-group">
                    <input type="text" name="image" id="image" tabindex="5" class="form-control" placeholder="Image" value="">
                  </div>
				  
				  
				  
                  <div class="form-group">
                    <div class="row">
                     <div class="col-xs-12 form-group pull-left login-btn">
       
                    <input type="submit" name="update-location" id="update-lcation" class="btn btn-primary" value="Update Location">					
                  </div>
                    </div>
                  </div>
              </form>
			  </div>
	     
		 <div class="col-sm-offset-1 col-sm-3 add-item-list">
		      <form action="#" method="post" role="form">
                <h3 class="text-center">Add Location</h3>
                  
				   <div class="form-group">
                    <input type="text" name="location" id="location" tabindex="1" class="form-control" placeholder="Location" value="">
                  </div>
				  
				  <div class="form-group">
                    <input type="text" name="add" id="add" tabindex="2" class="form-control" placeholder="Address" value="">
                  </div>
				  
				  <div class="form-group">
                    <input type="text" name="city" id="city" tabindex="3" class="form-control" placeholder="City" value="">
                  </div>
				  
				  <div class="form-group">
                    <input type="text" name="staff" id="staff" tabindex="4" class="form-control" placeholder="Staffs" value="">
                  </div>
				  
				  
				  <div class="form-group">
                    <input type="text" name="zip" id="zip" tabindex="5" class="form-control" placeholder="Zipcode" value="">
                  </div>
				  
				  <div class="form-group">
                    <input type="text" name="image" id="image" tabindex="5" class="form-control" placeholder="Image" value="">
                  </div>
							 
                  <div class="form-group">
                    <div class="row">
                     <div class="col-xs-12 form-group pull-left login-btn">
                     
                    <input type="submit" name="add-location" id="add-location" class="btn btn-primary" value="Add Location">					
                  </div>
                    </div>
                  </div>
              </form>
		 </div>
	      
	   
	</div>
	
  </div>
  
</div>
</div>		  
		  
	


	<div class="col-sm-12">
       <div class="footer text-center">
	    <p>Copy Rights Restaurant Delivery All Rights Reserved</p>

       </div>	   
	
	</div>
	
	
    </div>
   </div>
 </section>   
	      
</body>
</html> 