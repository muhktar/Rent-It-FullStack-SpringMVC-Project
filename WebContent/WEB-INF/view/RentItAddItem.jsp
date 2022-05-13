<html>
<head>
<title>Rent It | Create Account</title>
    <link rel ="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/RentItcss/AddItem.css">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/images/RENT IT_free-file_small.png" />
  
</head>
    
<body>
  <a href="http://127.0.0.1:5500/RentItLandingPage.html">
    <img class="logo-small" src="${pageContext.request.contextPath}/resources/images/RENT IT_free-file_small.png" alt="logo" />
  </a>
    <img class="gif" src="https://media.giphy.com/media/1kh0QjVwEX3KMvtwwP/giphy.gif" alt="">

    <div class=" addBox">
        <h3>Add Item</h3>
		
		<form action="StudentList" method="GET">
		
			<input type="hidden" name="command" value="ADD" />
			
			<table>
				<tbody>
                    <tr>
                        <div class="profile-pic-div">
                            <img src="images/stickdance.gif" id="photo" >
                            <input type="file" name="pPic" id="file">
                            <label for="file" id="uploadBtn">Upload Photo</label>
                
                        </div>

                    </tr>
                
					<tr class="pName">
						<td><label>Name:</label></td>
						<td><input type="text" name="firstName" /></td>
					</tr>

					<tr class="pPrice">
						<td><label>Price:</label></td>
						<td><input type="text" name="lastName" /></td>
					</tr>

					
                    <tr class="pDesc">
						<td><label>Discription:</label></td>
						<td><input type="text" name="email" /></td>
					</tr>
                    
                    <tr class="pCat">
						<td><label>Category:</label></td>
						<td><input type="checkbox" id= electronics name="category" value="eLectronics" />
                            <label for="electronics">Electronics</label><br>
                            <input type="checkbox" id="tools" name="tools" value="Tools">
                            <label for="vehicle1"> Tools</label><br>
                        </td>
					</tr>

                    <tr class="pSubCat">
						<td><label>Sub-category:</label></td>
						<td><input type="checkbox" id= computer/laptops name="" value="" />
                            <label for="computer/laptops">Computer/Laptops</label><br>
                            <input type="checkbox" id= camera name="" value="" />
                            <label for="camera">Camera</label><br>
                            <input type="checkbox" id= cellPhones name="" value="" />
                            <label for="cellPhones">Cell Phones</label><br>
                            <input type="checkbox" id= accessories name="" value="" />
                            <label for="accessories">Accessories</label><br>
                            <input type="checkbox" id= gardeningTools name="" value="" />
                            <label for="gardeningTools">Gardening Tools</label><br>
							<input type="checkbox" id= autoTools name="" value="" />
                            <label for="autoTools">Automotive Tools</label><br>
							<input type="checkbox" id= constructionTools name="" value="" />
                            <label for="constructionTools">Construction Tools</label><br>
							<input type="checkbox" id= misc name="" value="" />
                            <label for="misc">Miscellaneous</label><br>
							
                        </td>
					</tr>
					
					<tr class="saveBtn" >
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>
					
				</tbody>
			</table>
		</form>
		
		<div style="clear: both;"></div>
		
		<p class="cancel">
			<a href="StudentList">Back to List</a>
		</p>

        
    </div>
</body>


<script src="ProfileScript.js"></script>
<script src="https://code.iconify.design/2/2.2.0/iconify.min.js"></script>
</html>




