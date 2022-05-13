<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" session="true" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Security Basic Demo (XML)</title>
	
</head>
<body  style="background-image: url('${pageContext.request.contextPath}/resources/images/CartBag.jpg');background-size: cover;
    background-position:center; margin: 0;
    padding: 10%;font-family: perpetua; " >
    <div align="center">
        <h1>${title}</h1>
        <h2>${message}</h2>
        <img src="${pageContext.request.contextPath}/resources/images/RENT IT_free-file.png" class="smallLogo">
        
        
            <h2>Good Bye : ${pageContext.request.userPrincipal.name} |
                <a href="<c:url value="landing" />" > Home</a></h2> 
               
    </div>
</body>
</html>