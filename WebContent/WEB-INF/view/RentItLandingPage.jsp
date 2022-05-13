<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<head>

        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;500;600;700&display=swap"
      rel="stylesheet"
    />
  
        <title>Rent IT | A ONE STOP SHOP FOR ALL</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/RentItcss/landingStyle.css">
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/RENT IT_free-file_small.png" />
</head>

<body>
    
      <div class="banner" style="background-image:linear-gradient(rgba(0, 0, 0, 0.253), transparent), url('${pageContext.request.contextPath}/resources/images/CartOnBooks.jpg');">
        
        <div class="navbar">
            <img src="${pageContext.request.contextPath}/resources/images/RENT IT_free-file_small.png" class="smallLogo">
            <ul>
                <li><a href="#">Home</a></li>
                <div class="dropdown">
                    
                 <li><a href="#" class="dropbtn">Electronics</a></li>
                   
                    <div class="dropdown-content">
                        <a href="#">Computer/Laptops</a>
                        <a href="#">Cameras</a>
                        <a href="#">Cell Phones</a>
                        <a href="#">Accessories</a>
                    </div>              
                </div>
                
                <div class="dropdown">
                 <li><a href="#" class="dropbtn2">Tools</a></li>

                    <div class="dropdown-content2" >
                        <a href="#">Gardening Tools</a>
                        <a href="#">Automotive Tools</a>
                        <a href="#">Construction Tools</a>
                        <a href="#">Miscellaneous</a>
                    </div>

                </div>
                <li><a href="list">Profile</a></li>
                <li><a href="#">Cart</a></li>
                 <li><a href="logout">logout</a></li>
            </ul>
        </div>
    
        <div class="content">
            <h1>Need Some  Quick Tools For a Project? 
                <br>Don't Want To Break The Bank?
            </h1>
            <p> Log in or create an account to get a "BANG" for your "BUCK" TODAY!!!<br> RENTIT.COM | A One Stop Shop For All!</p>
            
            <div>
            
                <button type="button" onclick="window.location.href='createAcc'; return false;"><span></span> Create Account</button>
                
                <button type="button"  onclick="window.location.href='admin'; return false;"><span></span>Log In</button>
          
            </div>

        </div>
    
        
    </div>
  <!--   Your Java Collection will go here
              	<div id="content">
				
			 <table class="table table-hover">
			 <thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
				</tr>
				 </thead>
   				 <tbody>
				<c:forEach var="tempUser" items="${USER_LIST}">
					
					<tr>
						<td> ${tempUser.firstName} </td>
						<td> ${tempUser.lastName} </td>
						<td> ${tempUser.email} </td>
					</tr>
				
				</c:forEach>
				</tbody>
			</table>
		
		</div>
 -->
</body>

</html>

