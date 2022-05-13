<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<title>Rent It | Update Account</title>
    <link rel ="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/RentItcss/CreateAccountStyle.css">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/RENT IT_free-file_small.png" />
  
</head>
    
<body style="background-image: url('${pageContext.request.contextPath}/resources/images/MoneyCart.jpg');">
  <a href="list">
    <img class="logo-small" src="${pageContext.request.contextPath}/resources/images/RENT IT_free-file_small.png" alt="logo" />
  </a>
    <img class="gif" src="https://media.giphy.com/media/1kh0QjVwEX3KMvtwwP/giphy.gif" alt="">

    <div class=" loginbox">
        <span class="iconify" data-icon="carbon:user-avatar-filled" 
        style="color: #41f9eb; background-color: aliceblue;" data-width="88"></span>        
        <h1>Update Account </h1>
        
        <form:form action="createUsers" modelAttribute="users" method="POST">
        
        <!-- need to associate this data with user id -->
			<form:hidden path="id" />
			
            <div class="input-group">
                <p id="firstName">First Name</p>
				<form:input path="firstName" />
                <span id="name-error"><!--*first name is required*--></span>
            </div>
            <div class="input-group">
                <p id="lastName">Last Name</p>
                <form:input path="lastName" />
                <span id="name-error"><!--*last name is required*--></span>
            </div>
            <div class="input-group">     
                <p id="DOB">DOB</p>
                 <form:input path="dateOfBirth" type="date" />
                <span id="DOB-error"><!--*date of birth is required*--></span>
            </div>
            <div class="input-group">
                <p>Email </p>
                 <form:input path="email" />
                <span id="email-error"><!--*email is required*--></span>
            </div>
            <div class="input-group">
                <p>Username</p>
                 <form:input path="userName" />
            </div>
            <div class="input-group">
                <p>Password</p>
                 <form:input path="password" type="password"  />
                <span id="password-error"><!--*password is required*--></span>
            </div>
            <div class="input-group">
                <p>Confirm Password</p>
                 <form:input path="" type="password"  />
                <span id="password-error"><!--*please confirm password*--></span>
            </div>
            <input type="submit" name="" value="Update Account">
            <span id="submit-error"><!--*Please fix errors*--></span>

            
            
        </form:form>

        
    </div>
</body>


<script>CreateAccountScript.js</script>
<script src="https://code.iconify.design/2/2.2.0/iconify.min.js"></script>
</html>
