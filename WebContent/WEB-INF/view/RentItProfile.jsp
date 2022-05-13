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
            <li><a href="#">Profile</a></li>
            <li><a href="#">Cart</a></li>
        </ul>
    </div>


    <!-- upload picture and add / delete items-->
    <img class="logo-small" src="images/RENT IT_free-file_small.png" alt="logo" />
    
    <div class=" loginbox">
        <div class="profile-pic-div">
            <img src="${pageContext.request.contextPath}/resources/images/stickdance.gif" id="photo" >
            <input type="file" id="file">
            <label for="file" id="uploadBtn">Change Photo</label>

            
        </div>

        <form class="userName">
            
            <input class="fa fa-pencil fa-fw w3-margin-right w3-text-theme" type="button" name="" value=" Change Lord7th" >
            <input class="fa fa-pencil fa-fw w3-margin-right w3-text-theme" id="addItem" type="button" name="" value=" Add Item" > 
            <input class="fa fa-pencil fa-fw w3-margin-right w3-text-theme" id="deleteItem" type="button" name="" value=" Delete Item" > 
            
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
				
			 <table class="table table-hover">
			 <thead>
				<tr>
                    <th>Itempic</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
				</tr>
				 </thead>
   				 <tbody>
				<c:forEach var="tempUser" items="${USER_LIST}">
					
                    
					<tr>
                        <td> 
                            <div class="Item-pic-div">
                                <img src="images/stickdance.gif" id="photo" >
                                <input type="file" id="file">
                                <label for="file" id="itemUploadBtn">Upload Photo</label>
                            </div>

                             <ul class="itemDesc">
                                <input class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"  type="button" name="" value=" Name" > <br>
                                <input class="fa fa-pencil fa-fw w3-margin-right w3-text-theme" type="button" name="" value=" $Price /day" > <br>
                                <input class="fa fa-pencil fa-fw w3-margin-right w3-text-theme" type="button" name="" value="Description" > <br>
                                <input class="fa fa-pencil fa-fw w3-margin-right w3-text-theme" type="button" name="" value="Edit" > <br>

                             </ul>
                             
                        </td>
						<td>
                            <div class="Item-pic-div">
                                <img src="images/stickdance.gif" id="photo" >
                                <input type="file" id="file">
                                <label for="file" id="itemUploadBtn">Upload Photo</label>
                            </div>

                             <ul class="itemDesc">
                                <input class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"  type="button" name="" value=" Name" > <br>
                                <input class="fa fa-pencil fa-fw w3-margin-right w3-text-theme" type="button" name="" value=" $Price /day" > <br>
                                <input class="fa fa-pencil fa-fw w3-margin-right w3-text-theme" type="button" name="" value="Description" > <br>
                                <input class="fa fa-pencil fa-fw w3-margin-right w3-text-theme" type="button" name="" value=" Edit" > <br>

                             </ul>

                        </td>
						<td> ${tempUser.lastName} </td>
						<td> ${tempUser.email} </td>
                        
					</tr>

                   
				</c:forEach>
				</tbody>
			</table>
		
		</div>
    

  <script src="${pageContext.request.contextPath}/resources/ProfileScript.js"></script>
</body>

</html>

