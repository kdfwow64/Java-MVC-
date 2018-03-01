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
                  <li><a href="#"><span class=""></span>Navigate Application</a></li>
	              <li><a href="${contextPath}/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
							
			  </div>
			</nav> 
			  
		  </div>
		  
		  
		 


    <div class="col-md-3 col-md-offset-4 login-details">
      <div class="panel panel-login">
        <div class="panel-body">
          <div class="row">
            <div class="col-lg-12">
              
              <form id="register-form" action="#" method="post" role="form">
                <h2>Admin's Information</h2>
                  
				  <div class="form-group">
                    <input type="text" name="firstname" id="firstname" tabindex="1" class="form-control" placeholder="Firstname" value="">
                  </div>
				  
				  <div class="form-group">
                    <input type="text" name="lastname" id="lastname" tabindex="2" class="form-control" placeholder="Lastname" value="">
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
          </div>
        </div>
        
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