<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
            
              <form id="login-form" action="${contextPath}/login" method="post" role="form" style="display: block;">
                <h2>Login</h2>
                <div class="form-group ${error != null ? 'has-error' : ''}">
                  <h4>${message}</h4>
                  <h4>${error}</h4>
                  
                  <div class="form-group">
                    <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" autofocus="true"/>
                  </div>
                  
                  <div class="form-group">
                    <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
                  </div>
    <!--  -->              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                  <div class="col-xs-12 form-group pull-left login-btn">
                    <a href="${contextPath}/register">Register?</a>
                    <input type="button" name="login-submit" id="login-submit" class="btn btn-primary" value="Log In">					
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