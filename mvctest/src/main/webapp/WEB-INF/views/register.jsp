 
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
		  
		  
		 


    <div class="col-md-3 col-md-offset-4 login-details">
      <div class="panel panel-login">
        <div class="panel-body">
          <div class="row">
            <div class="col-lg-12">
            
              <form:form method="POST" modelAttribute="userForm">
                <h2>Register</h2>
                
                  <spring:bind path="firstname">
		            <div class="form-group ${status.error ? 'has-error' : ''}">
		                <form:input type="text" path="firstname" class="form-control" placeholder="firstname"
		                            autofocus="true"></form:input>
		                <form:errors path="firstname"></form:errors>
		            </div>
		          </spring:bind>
				  
				  <spring:bind path="lastname">
		            <div class="form-group ${status.error ? 'has-error' : ''}">
		                <form:input type="text" path="lastname" class="form-control" placeholder="lastname"></form:input>
		                <form:errors path="lastname"></form:errors>
		            </div>
		          </spring:bind>
                  
                  <spring:bind path="password">
		            <div class="form-group ${status.error ? 'has-error' : ''}">
		                <form:input type="password" path="password" class="form-control" placeholder="password"></form:input>
		                <form:errors path="password"></form:errors>
		            </div>
		          </spring:bind>
				  
                  <spring:bind path="passwordConfirm">
		            <div class="form-group ${status.error ? 'has-error' : ''}">
		                <form:input type="password" path="passwordConfirm" class="form-control" tabindex="2" placeholder="Confirm Password"></form:input>
		                <form:errors path="passwordConfirm"></form:errors>
		            </div>
		          </spring:bind>
				  
				  <spring:bind path="gender">
					  <div class="form-group ${status.error ? 'has-error' : ''}">
						<form:select name="gender" path="gender" class="form-control" placeholder="gender" value="M">
						  <form:option value="M">M</form:option>
						  <form:option value="F">F</form:option>
						</form:select>
	                  </div>
                  </spring:bind>
				  
                  <spring:bind path="address">
		            <div class="form-group ${status.error ? 'has-error' : ''}">
		                <form:input type="text" path="address" tabindex="" class="form-control" placeholder="address"></form:input>
		                <form:errors path="address"></form:errors>
		            </div>
		          </spring:bind>
				  
				  <spring:bind path="phone">
		            <div class="form-group ${status.error ? 'has-error' : ''}">
		                <form:input type="text" path="phone" class="form-control" placeholder="phone"></form:input>
		                <form:errors path="phone"></form:errors>
		            </div>
		          </spring:bind>
                  
                  <spring:bind path="email">
		            <div class="form-group ${status.error ? 'has-error' : ''}">
		                <form:input type="email" path="email" class="form-control" placeholder="email"></form:input>
		                <form:errors path="email"></form:errors>
		            </div>
		          </spring:bind>
                  
                  <div class="form-group">
                    <div class="row">
                       <div class="col-xs-12 form-group pull-left login-btn">
                         <a href="${contextPath}/login">Login?</a> 
                    	 <input type="submit" name="login-submit" id="login-submit" class="btn btn-primary" value="Register">					
                  	   </div>
                    </div>
                  </div>
                  
              </form:form>
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