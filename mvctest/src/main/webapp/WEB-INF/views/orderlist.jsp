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
	              <li><a href="${contextPath}/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				  <li><a href="${contextPath}/register"><span class="glyphicon glyphicon-user"></span> Register</a></li>
				</ul>
							
			  </div>
			</nav> 
			  
		  </div>
		  
		  
<section class="middlearea regularuserpage">
	
	<div class="col-md-8 col-md-offset-2">
      <h2>Regular User List</h2>
		<div class="regularuser">
			 <table class="table table-striped">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
      <tr>
        <td>Mary</td>
        <td>Moe</td>
        <td>mary@example.com</td>
      </tr>
      <tr>
        <td>July</td>
        <td>Dooley</td>
        <td>july@example.com</td>
      </tr>
    </tbody>
  </table>
			
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
<style>
.regularuser{ background-color:none;}
.table {
    width: 100%;
    margin-bottom: 20px;
    background-color: #f6f6f6;
}
</style>  
</body>
</html> 