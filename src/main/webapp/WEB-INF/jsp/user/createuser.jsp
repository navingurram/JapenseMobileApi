<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create User</title>
<link rel="stylesheet" href="css/admin.css">
<script src="https://kit.fontawesome.com/ae73087723.js"
	crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bcryptjs/2.4.3/bcrypt.js"></script>
	
</head>
<style>
.Container {
	width: 100%;
	height: 100vh;
}

.container2 {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
	grid-gap: 30px;
}

@media screen and (max-width: 1000px) {
	.container2 {
		grid-template-columns: 1fr;
	}
}
</style>


<style>
.Container {
	width: 100%;
	height: 100%;
	margin-top: 50px
}

.container2 {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
}

.TableContainer {
	margin-top: 20px;
	background: #fff;
	border-radius: 7px;
	border: 1.5px solid #e8e8e8;
	padding: 20px;
	overflow:scroll;
	cursor: pointer;
}

.MainTable {
	border-collapse: collapse;
	text-align: center;
	overflow: hidden;
	cursor: pointer;
	width: 100%;
}

.tableheading {
	border-bottom: 1px solid rgb(208, 208, 208);
	background-color: #36454f;
}

.tableheading th {
	padding: 1rem;
	text-transform: capitalize;
	letter-spacing: 0.1rem;
	font-size: 0.9rem;
	font-weight: 600;
	color: rgb(56, 56, 56);
}

.tablebody {
	padding: 1rem 1.8rem;
	font-weight: 500;
	font-size: 13.5px;
}

.iconmag {
position: absolute;
top: 12.5rem;
right: 14.5rem;
}
</style>

<body>
	<jsp:include page="../sidenav.jsp"></jsp:include>
	<section id="content">
		<jsp:include page="../header.jsp"></jsp:include>
		<main>
			<div class="Container">
				<h1
					style="margin-bottom: 30px; text-align: center; font-weight: 600; font-size: 30px">CREATE
					USER</h1>
				<div class="container2">
					<div
						style="display: flex; flex-direction: column; padding-left: 15px;">
						<label style="font-size: 13px; margin-bottom: 7px; font-weight: 500;">Enter
							Name</label> <input id="name" name="name" type="text" required="required"
							style="padding: 13px; border-radius: 5px; border: 1px solid #bfb8b8;">
					</div>
					<div
						style="display: flex; flex-direction: column; padding-left: 15px;">
						<label style="font-size: 13px; margin-bottom: 7px; font-weight: 500;">Enter
							Email</label> <input id="email" name="email" type="email" required="required"
							style="padding: 13px; border-radius: 5px; border: 1px solid #bfb8b8;">
					</div>
					<div
						style="display: flex; flex-direction: column; padding-left: 15px;">
						<label style="font-size: 13px; margin-bottom: 7px; font-weight: 500;">Enter
							Password</label> <input id="password" name="password" type="text"
							style="padding: 13px; border: 2px solid black; border-radius: 5px; border: 1px solid #bfb8b8;">
					</div>
<!-- 					<div -->
<!-- 						style="display: flex; flex-direction: column; padding-left: 15px;"> -->
<!-- 						<label style="font-size: 13px; margin-bottom: 7px; font-weight: 500;">Enter -->
<!-- 							Confirm Password</label> <input id="" name="" type="password" -->
<!-- 							required="require3" -->
<!-- 							style="padding: 10px; border-radius: 5px; border: 1px solid #bfb8b8;"> -->
<!-- 					</div> -->
					<div
						style="display: flex; flex-direction: column; padding-left: 15px;">
						<label style="font-size: 13px; margin-bottom: 7px; font-weight: 500;">Enter
							Mobile Number</label> <input id="mobileNumber" name="mobileNumber" type="number"
							required="require3"
							style="padding: 10px; border-radius: 5px; border: 1px solid #bfb8b8;">
					</div>
<!-- 					<div -->
<!-- 						style="display: flex; flex-direction: column; padding-left: 15px;"> -->
<!-- 						<label style="font-size: 13px; margin-bottom: 7px; font-weight: 500;">Email -->
<!-- 							Verification</label> <input id="" name="" type="text" readonly="readonly" -->
<!-- 							required="require3" -->
<!-- 							style="padding: 10px; border-radius: 5px; border: 1px solid #bfb8b8;"> -->
<!-- 					</div> -->
					<div
						style="display: flex; flex-direction: column; padding-left: 15px;">
						<label style="font-size: 13px; margin-bottom: 7px; font-weight: 500;">Role</label> 
						 <select id="roleName" name="roleName"
							style="padding: 10px; border-radius: 5px; border: 1px solid #bfb8b8;">
							<option value ="">Select ROLE</option>
							<option value="MODERATOR">MODERATOR (Update,Create,View)</option>
							<option value="CREATOR">CREATOR (Create,View)</option>
							<option value="VIEWER">VIEWER (View)</option>
						</select>
					</div>
				</div>
				
				
<!-- 				TABLE  -->

                      <div
						style="display: flex; flex-direction: column; padding-left: 15px;">
						<label style="font-size: 24px; margin-bottom: 7px;  margin-top: 39px; font-weight: 500;">Module : </label> 
						
					</div>

                <div class='TableContainer'>
					<div class="tablestyle">
						<table class='MainTable'>
							<thead class='tableheading'>
								<tr style="font-weight: 900;">
									<th style="width: 100px; font-weight: 800; color: white;">SrNo</th>
									<th style="font-weight: 800; color: white;">Name</th>
									<th style="font-weight: 800; color: white;">Action</th>
								</tr>
							</thead>
							<tbody class='tablebody'>
								
								
								<tr>
									<td style="font-weight: 500;">1</td>
									<td style="font-weight: 500;">Teacher</td>
									<td style="font-weight: 500;">
									<input type="checkbox" name="module" value="Teacher" id="module" class="module">
									</td>
								</tr>
								
								<tr>
									<td style="font-weight: 500;">2</td>
									<td style="font-weight: 500;">Student</td>
									<td style="font-weight: 500;">
									<input type="checkbox" name="module" value="Student" id="module" class="module">
									</td>
								</tr>
								
								<tr>
									<td style="font-weight: 500;">3</td>
									<td style="font-weight: 500;">Course</td>
									<td style="font-weight: 500;">
									<input type="checkbox" name="module" value="Course" id="module" class="module">
									</td>
								</tr>
								
								<tr>
									<td style="font-weight: 500;">4</td>
									<td style="font-weight: 500;">Batches</td>
									<td style="font-weight: 500;">
									<input type="checkbox" name="module" value="Batches" id="module" class="module">
									</td>
								</tr>
								
								<tr>
									<td style="font-weight: 500;">5</td>
									<td style="font-weight: 500;">Subscription</td>
									<td style="font-weight: 500;">
									<input type="checkbox" name="module" value="Subscription" id="module" class="module">
									</td>
								</tr>
								
								<tr>
									<td style="font-weight: 500;">6</td>
									<td style="font-weight: 500;">Study Material</td>
									<td style="font-weight: 500;">
									<input type="checkbox" name="module" value="StudyMaterial" id="module" class="module">
									</td>
								</tr>
								
								<tr>
									<td style="font-weight: 500;">7</td>
									<td style="font-weight: 500;">Allotment to StudyMaterial</td>
									<td style="font-weight: 500;">
									<input type="checkbox" name="module" value="AllotmenttoStudyMaterial" id="module" class="module">
									</td>
								</tr>
								
								<tr>
									<td style="font-weight: 500;">8</td>
									<td style="font-weight: 500;">Attendance of Students</td>
									<td style="font-weight: 500;">
									<input type="checkbox" name="module" value="AttendanceofStudents" id="module" class="module">
									</td>
								</tr>
								
								<tr>
									<td style="font-weight: 500;">9</td>
									<td style="font-weight: 500;">Enquiry</td>
									<td style="font-weight: 500;">
									<input type="checkbox" name="module" value="Enquiry" id="module" class="module">
									</td>
								</tr>
								
								<tr>
									<td style="font-weight: 500;">10</td>
									<td style="font-weight: 500;">Logs</td>
									<td style="font-weight: 500;">
									<input type="checkbox" name="module" value="Logs" id="module" class="module">
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				
				
<!-- 				Table END  -->
				<div
					style="display: flex; justify-content: center; margin-top: 30px">
					<button id="saveButton"
						style="cursor: pointer; font-weight: 700; font-size: 14px; background-color: #59f7f1; color: #ffffff; border-radius: 5px; padding: 15px; width: 100px; border: none">Save</button>
				</div>
			</div>
		</main>
	</section>
	<script src="js/adminscript.js"></script>
	
	<script>
	$(document).ready(function() {
	    $("#saveButton").click(function() {
	    	event.preventDefault(); 
	     
	    

	        var name = $("#name").val();
	        var email = $("#email").val();
	        var password = $("#password").val();
	        var mobileNumber = $("#mobileNumber").val();
	        var roleName = $("#roleName").val();
	        
	        // No need to bind change event here
	        
	        var selectedModules = [];
	        $(".module:checked").each(function(){
	            selectedModules.push($(this).val());
	        });
	        var moduleString = selectedModules.join(",");

	        var data = {
	            name: name,
	            email: email,
	            password: password,
	            mobileNumber: mobileNumber,
	            roleName: roleName,
	            module: moduleString,
	            flag : true,
	            authorities: [
	                {
	                  email: email,
	                  roleName: "ROLE_"+roleName
	                }
	              ]
	        };
	        
	        // Email validation
	        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
	        if (!emailPattern.test(email)) {
	            alert("Please enter a valid email address.");
	            return;
	        }

	        // Password validation (add more criteria if needed)
	        if (password.length < 6) {
	            alert("Password must be at least 6 characters long.");
	            return;
	        }

	        // Mobile number validation (add more criteria if needed)
	        var mobilePattern = /^\d{10}$/;
	        if (!mobilePattern.test(mobileNumber)) {
	            alert("Please enter a valid 10-digit mobile number.");
	            return;
	        }
	        
	        if(name===""){
	        	alert("Enter the name !!!")
	        	return
	        }
	        
	        if(roleName===""){
	        	alert("Enter the ROLE !!!")
	        	return
	        }
	        
	        if(moduleString===""){
	        	alert("Select the Module !!!")
	        	return
	        }
	        
	      //  console.log(data);

	        $.ajax({
				url : "/JapaneseAdminWebApp/createUser",
				type : "POST",
				contentType : "application/json",
				data : JSON.stringify(data),
				 success: function(response, textStatus, xhr) {
					 
				        if (xhr.status === 201) { // Check the status code directly from the xhr object
				            alert("Data Saved Successfully !!!");
				            window.location.href = "createuser";
				        } else if(xhr.status === 208) {
				            alert(response.message);
				        }
				    },
				    error: function(jqXHR, textStatus, errorThrown) {
				        if (jqXHR.responseJSON && jqXHR.responseJSON.statusCode === 4001) {
				            alert(jqXHR.responseJSON.message);
				        } else if (jqXHR.status === 403) {
				            alert("YOU DON'T HAVE THE PERMISSION !!!");
				        } else {
				            alert("SERVER IS NOT RESPONDING")
				        }
				    }
			});
	    });

	    // Move the change event binding here
	    $(".module").change(function(){
	        // This function will handle the change in checkbox selection
	    });
	});


	</script>
</body>
</html>