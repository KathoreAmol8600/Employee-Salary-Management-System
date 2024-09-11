
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
		<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>

<style>
 .navbar-nav {
	margin-left: 750px;
}

.nav-item {
	padding-left: 10px;
}

.carousel-item img {
	height: 500px; 
	object-fit: cover; 
}

#dropdownMenuButton {
	width: 165px;
	padding-right: 100px;
	background: linear-gradient(to right, rgba(300, 50, 400, 0.3),
		rgba(135, 24, 205, 0.5));
	color: black;
	font-size: 15px;
	margin: 5px;
	border-radius: 10px;
	border-top-right-radius: 0;
}



body {
	height: 180px;
}
#register{
   background: linear-gradient(
                to right,
                rgba(109, 99, 109, 0.1), 
                rgba(120, 55, 234, 0.5)  
            );
            border-radius: 20px;
}

@media ( max-width : 767.98px) {
	.navbar-nav {
		padding-left: 0;
		margin: 0;
		text-align: center;
	}
	.navbar-toggler {
		margin-left: auto;
		margin-right: auto;
	}
	#a {
		margin-top: 20px;
	}
}

@media ( min-width : 768px) {
	.col-md-4 {
		margin-top: 100px;
	}
}

.custom-container {
	padding: 0;
}
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css">


<title></title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-dark">
		<a class="navbar-brand text-white" href="#"> <img
			src="path/to/your/logo.png" alt="Logo" style="height: 40px;">
		</a>
		<button class="navbar-toggler text-white" type="button"
			data-toggle="collapse" data-target="#navbarNav"
			aria-controls="navbarNav" aria-expanded="true"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon text-white"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">

	<ul class="navbar-nav">
				<!-- <li class="nav-item dropdown">
				 <a
					class="nav-link dropdown-toggle text-white" href="#"
					id="loginDropdown" role="button" data-bs-toggle="dropdown"
					aria-expanded="false"> <i class="bi bi-box-arrow-in-right"></i>
						Login
				</a>
					<ul class="dropdown-menu" aria-labelledby="loginDropdown">
						<li><a class="dropdown-item" href="login">Admin</a></li>
						<li><a class="dropdown-item" href="#">Employee </a></li>
					</ul>
					</li> -->
				<!-- <!-- <li class="nav-item dropdown">
				<a
					class="nav-link dropdown-toggle text-white" href="#"
					id="registrationDropdown" role="button" data-bs-toggle="dropdown"
					aria-expanded="false"> <i class="bi bi-person-plus">
					</i>
						Register
				</a> 
					<ul class="dropdown-menu" aria-labelledby="registrationDropdown">
						<li><a class="dropdown-item" href="#">Employee</a></li>
					</ul></li> --> 
				<li class="nav-item"><a class="nav-link text-white" href="#">
						<i class="bi bi-house"></i> Home
				</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="#">
						<i class="bi bi-person"></i> About
				</a></li>
				<li class="nav-item"><a class="nav-link text-white" href="#">
						<i class="bi bi-gear"></i> Service
				</a></li>
				<li class="nav-item"><a class="nav-link disabled text-white"
					href="#"> <i class="bi bi-envelope"></i> Contact
				</a></li>
			</ul>
		</div>
	</nav>
	<!--             <img src="resources/Images/pexels-sora-shimazaki-5926397.jpg" alt="About Us" class="img-fluid">
	 -->
	<div class="container-fluid text-center">
		<div class="row">
			<div class="col-auto">
				<div class="dropdown">
					
					<button class="btn dropdown-toggle" type="button"
						id="dropdownMenuButton" data-bs-toggle="dropdown"
						aria-expanded="false">Admin</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<li><a class="dropdown-item" href="adminpro">Profile</a></li>
							<li><a class="dropdown-item" href="Rege_Admin">Add</a></li>
						<li><a class="dropdown-item" href="manage">manage</a></li>
						<li><a class="dropdown-item" href="adminlogout">Logout</a></li>
					</ul>
					<br>


				<button class="btn dropdown-toggle" type="button"
						id="dropdownMenuButton" data-bs-toggle="dropdown"
						aria-expanded="false">Employee</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<li><a class="dropdown-item" href="Rege_Employee">Add</a></li>
							<li><a class="dropdown-item" href="allEmployee">GetAllEmployee</a></li>
						<li><a class="dropdown-item" href="#">Manage</a></li>
					</ul>
					<br>
					
					<button class="btn dropdown-toggle" type="button"
						id="dropdownMenuButton" data-bs-toggle="dropdown"
						aria-expanded="false">Department</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<li><a class="dropdown-item" href="Rege_Employee">add</a></li>
						<li><a class="dropdown-item" href="viewDepartment">viewDepartment</a></li>
						<li><a class="dropdown-item" href="#">manage</a></li>
					</ul>
					<br>
					
					<button class="btn dropdown-toggle" type="button"
						id="dropdownMenuButton" data-bs-toggle="dropdown"
						aria-expanded="false">Attendance</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<li><a class="dropdown-item" href="#">Take</a></li>
						<li><a class="dropdown-item" href="#">manage</a></li>

					</ul>
					<br>
					<button class="btn dropdown-toggle" type="button"
						id="dropdownMenuButton" data-bs-toggle="dropdown"
						aria-expanded="false">Salary</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<li><a class="dropdown-item" href="#">Take</a></li>
						<li><a class="dropdown-item" href="#">manage</a></li>
					</ul>
					<br>

					<button class="btn dropdown-toggle" type="button"
						id="dropdownMenuButton" data-bs-toggle="dropdown"
						aria-expanded="false">Leave</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<li><a class="dropdown-item" href="#">Take</a></li>
						<li><a class="dropdown-item" href="#">manage</a></li>

					</ul>
					<br>

				<!-- 	<button class="btn dropdown-toggle" type="button"
						id="dropdownMenuButton" data-bs-toggle="dropdown"
						aria-expanded="false">Attendance</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<li><a class="dropdown-item" href="#">Take</a></li>
						<li><a class="dropdown-item" href="#">manage</a></li>

					</ul>
					<br>

					<button class="btn dropdown-toggle" type="button"
						id="dropdownMenuButton" data-bs-toggle="dropdown"
						aria-expanded="false">Attendance</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<li><a class="dropdown-item" href="#">Take</a></li>
						<li><a class="dropdown-item" href="#">manage</a></li>
					</ul>
					<br> -->
				</div>
			</div>


				<div class="col"> 
			<div class="container mt-1" id="register">
					<h2 class="text-center mb-4" style=" color:black;">Register Employee</h2>
					          <p style="color: red;" >${msg} </p>                                                                       
						<!-- <form name="addemployee"onsubmit="return validatePasswords()" action="addemployee" method="post"> -->
						<form name="addemployee" action="addemployee" method="post">
						<div class="mb-1">
							    <input
							   	 type="text" class="form-control" id="firstname" name="EmpName"
								 placeholder="Enter your name" >
								<br>
								
						        <input
                                 type="number" class="form-control" id="phoneNumber" name="EmpContact"
                                 placeholder="Enter your phone number" >
								<br>
								
								<input
								 type="email" class="form-control" id="email" name="EmpEmail"
								 placeholder="Enter your email" >
							     <br>
							     
							      <select class="form-select" id="EmpGender" name="EmpGender" >
				                    <option value="" disabled selected>Select your gender</option>
				                    <option value="male">Male</option>
				                    <option value="female">Female</option>
				                    <option value="other">Other</option>
				                </select>
				                 <br>
				                
							    <input
								 type="text" class="form-control" id="EmpAddres" name="EmpAddres"
								 placeholder="Enter your Address" >
								<br>

							<div class="mb-0">
								<input type="date" class="form-control" id="dateOfLeaving"
									name="EmpDateOfJoining" > <small
									class="form-text text-muted">Please enter the date of
									joining.</small>
							</div>
							 <br>
							
							<div class="mb-0">
								<input type="date" class="form-control" id="EmpDateOfLiving" 
									name="EmpDateOfLiving"> <small
									class="form-text text-muted">Please enter the date you
									will be leaving.</small>
							</div>
						     	<br>
						     	 <select class="form-select" id="EmpDepartmentId"
								name="EmpDepartmentId">
								<option value="" disabled selected>Select your
									department</option>
								<c:forEach var="department" items="${department}">
									<option value="${department.depId}">${department.depName}</option>
								</c:forEach>
							</select><br> <input
								 type="text" class="form-control" id="EmpUsername" name="EmpUsername"
								 placeholder="Enter your UserName" >
								<br>
								
							<input
								 type="password" class="form-control" id="EmpPassword" name="EmpPassword"
								 placeholder="Enter your Password" >
								<br>
								
						<!-- 	<input type="password" class="form-control" name="checkPassword"
								id="confirmPassword" placeholder="Confirm your password"
								>
								<br>  -->

							<br>
							<input type="checkbox" class="form-check-input" id="terms"
							  > <label class="form-check-label" for="terms" >
					  			I agree to the terms and conditions</label> <br>
								<button type="submit" class="btn btn-primary">Add Employee</button>
								      <p>${msg}</p>
						</div>    
							</form>
				</div>
		</div>
		</div>
	</div>
</body>
</html>