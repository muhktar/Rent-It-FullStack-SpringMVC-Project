<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- For table-->
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
  
        <title>Rent IT | Profile</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/RentItcss/ProfileStyle.css">
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/RENT IT_free-file_small.png" />
</head>


<body>
    <!--home profile cart and ect-->
    <div class="navbar">
        <img src="${pageContext.request.contextPath}/resources/images/RENT IT_free-file_small.png" class="smallLogo">
        <ul>
            <li><a href='landing'; return false;>Home</a></li>
            <div class="dropdown">
                
             <li><a href="#" class="dropbtn">Electronics</a></li>
               
                <div class="dropdown-content">
                    <a href="#">Computer/Laptops</a>
                    <a href="#">Cameras</a>
                    <a href="#">Cell Phones</a>
                    <a href="#">Accesories</a>
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
            <li><a href="#">Profile</a></li>
            <li><a href="#">Cart</a></li>
            <li><a href="logout">logout</a></li>
        </ul>
    </div>


    <!-- upload picture and add / delete items-->
    <img class="logo-small" src="${pageContext.request.contextPath}/resources/images/RENT IT_free-file_small.png" alt="logo" />
    
    <div class=" loginbox">
        <div class="profile-pic-div">
            <img src="${pageContext.request.contextPath}/resources/images/BossBaby.jpg" id="photo" >
            <input type="file" id="file">
            <label for="file" id="uploadBtn">Change Photo</label>

            
        </div>

        <form class="userName">
            
            <input class="fa fa-pencil fa-fw w3-margin-right w3-text-theme" type="button" name="" value= " BOSS BABY (ADMIN)"  >
            <input class="fa fa-pencil fa-fw w3-margin-right w3-text-theme" id="addItem" type="button" name="" value=" USER PAGE" > 
            <input class="fa fa-pencil fa-fw w3-margin-right w3-text-theme" id="deleteItem" type="button" onclick="window.location.href='createAcc'; return false;" name="" value="ADD USER" > 
            
        </form>
    </div>
    
<!--
    <form action="/action_page.php">
        <label for="img">Upload image:</label>
        <input type="file" id="img" name="img" accept="image/*">
        <input type="submit">
    </form> 
-->
   <!--Your Java Collection will go here -->
    
        <div class=" itembox" id="content">
			
            <!--  add our html table here -->	
			 <table class="table table-hover">
                <tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>DOB</th>
                    <th>Update/Delete</th>
				</tr>
				
				<!-- loop over and print our users -->
				<c:forEach var="tempUser" items="${users}">
				
					<!-- construct an "update" link with user id -->
					<c:url var="updateLink" value="/rentit/updateAcc">
						<c:param name="usersId" value="${tempUser.id}" />
					</c:url>					

					<!-- construct an "delete" link with customer id -->
					<c:url var="deleteLink" value="/rentit/delete">
						<c:param name="usersId" value="${tempUser.id}" />
					</c:url>
					
					<tr>
						<td> ${tempUser.firstName} </td>
						<td> ${tempUser.lastName} </td>
						<td> ${tempUser.email} </td>
						<td> ${tempUser.dateOfBirth} </td>
						<td>
							<!-- display the update link -->
							<a href="${updateLink}">Update</a>
							|
							<a href="${deleteLink}"
							   onclick="if (!(confirm('Are you sure you want to delete this user?'))) return false">Delete</a>
						</td>
					</tr>
				
				</c:forEach>

			</table>
		
		</div>
    

  <script src="${pageContext.request.contextPath}/resources/ProfileScript.js"></script>
</body>

</html>
