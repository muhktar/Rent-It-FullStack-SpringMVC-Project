<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" session="true" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Rent It | Login </title>
    <link rel ="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/RentItcss/loginStyle.css">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/RENT IT_free-file_small.png" />
</head> 

    
<body  style="background-image: url('${pageContext.request.contextPath}/resources/images/MoneyCart.jpg');">
  <a href='landing'; return false;>
    <img class="logo-small" src="${pageContext.request.contextPath}/resources/images/RENT IT_free-file_small.png" alt="logo" />
  </a>

    <div class=" loginbox">
        <span class="iconify" data-icon="carbon:user-avatar-filled" 
        style="color: #41f9eb; background-color: aliceblue;" data-width="88"></span>        
        <h1>Login Here</h1>
        	
        	<%
        	String error = (String) request.getAttribute("error");
 			if (error != null &&error.equals("true"))
 				{
 					out.println("<h4 style=\"color:red; font-family: perpetua;font-size: 15px;  position: absolute; top:19%; \">Invalid login credentials. Please try again!!</h4>");
 				}
			 %>
        	
        <form name='loginForm' action="<c:url value='j_spring_security_check' />" method='POST' >
            <p>Email</p>
            <input type="text" name="username" value= "" placeholder="Enter Email">
            <span id="email-error"><!--Invalid email--></span>
            <p>Password</p>
            <input type="password" name='password' placeholder="Enter Password">
            <span id="password-error"><!--Invalid password--></span>
            <input type="submit" name="submit" value="Login">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            <a href="#">Lost your password?</a><br>
            <a href="creatAcc">Don't have an account?</a> 
        </form>
        
        <img class= "gif" src="https://media.giphy.com/media/SBxw43bgIIDIqtH5JC/giphy.gif" alt="sisterhood gif">
        
    </div>
</body>



<script src="https://code.iconify.design/2/2.2.0/iconify.min.js"></script>
</html>