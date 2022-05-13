<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<title>Rent It | Create Account</title>
    <link rel ="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/RentItcss/CreateAccountStyle.css">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/RENT IT_free-file_small.png" />
  
</head>
    
<body style="background-image: url('${pageContext.request.contextPath}/resources/images/MoneyCart.jpg');">
  <a href='landing'>
    <img class="logo-small" src="${pageContext.request.contextPath}/resources/images/RENT IT_free-file_small.png" alt="logo" />
  </a>
    <img class="gif" src="https://media.giphy.com/media/1kh0QjVwEX3KMvtwwP/giphy.gif" alt="">

    <div class=" loginbox">
        <span class="iconify" data-icon="carbon:user-avatar-filled" 
        style="color: #41f9eb; background-color: aliceblue;" data-width="88"></span>  
              
        <h1>Create Account </h1>
        <!-- connects to createUsers Method and model attribute -->
        <form:form action="createUsers" modelAttribute="users" method="POST">
        
        	<!-- need to associate this data with user id -->
			<form:hidden path="id" />
			
			<!-- "name" in the input tag maps to the right field in the database -->
            <div class="input-group">
                <p id="firstName">First Name</p>
                <input type="text"  name="firstName" placeholder="Enter First Name" id="fName">
                <span id="name-error"><!--*first name is required*--></span>
            </div>
            <div class="input-group">
                <p id="lastName">Last Name</p>
                <input type="text"  name="lastName" placeholder="Enter Last Name">
                <span id="name-error"><!--*last name is required*--></span>
            </div>
            <div class="input-group">     
                <p id="DOB">DOB</p>
                <input type="date" path="dateOfBirth" name="dateOfBirth" placeholder="Enter Date Of Birth">
                <span id="DOB-error"><!--*date of birth is required*--></span>
            </div>
            <div class="input-group">
                <p>Email </p>
                <input type="text" path="email" name="email" placeholder="Enter Email">
                <span id="email-error"><!--*email is required*--></span>
            </div>
            <div class="input-group">
                <p>Username</p>
                <input type="text" name="userName" placeholder="Enter Username">
            </div>
            <div class="input-group">
                <p>Password</p>
                <input type="password" path="password" name="passWord" placeholder="Enter Password">
                <span id="password-error"><!--*password is required*--></span>
            </div>
            <div class="input-group">
                <p>Confirm Password</p>
                <input type="password" name="" placeholder="Enter Password">
                <span id="password-error"><!--*please confirm password*--></span>
            </div>
            <input type="submit" name="" value="Create Account">
            <span id="submit-error"><!--*Please fix errors*--></span>

            <a href="#">Already have an account?</a><br>
            
        </form:form >

        
    </div>
</body>


<script>CreateAccountScript.js</script>
<script src="https://code.iconify.design/2/2.2.0/iconify.min.js"></script>
</html>