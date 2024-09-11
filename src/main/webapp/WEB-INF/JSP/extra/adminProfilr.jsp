<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<style type="text/css">
* {
	padding: 0%;
	margin: 0%;
	box-sizing: border-box;
}

.col1 {
	background: linear-gradient(40deg, #a855f6, #f43f5e);
	/* background-color:black; */
	height: auto;
	width: 100%;
	border: 1px solid black;
}

.logo {
	width:  12%;
	float: left;
	height: 70px;
	border: 1px solid black;
}

.search_menu {
	width: 88%;
	height: auto;
	float: left;
	padding-left: 100px;
	padding-top: 20px;
	border: 1px solid black;
}

.menu {
	border: 1px solid black;
	width:70%;
	height:auto;
	float: left;
	padding-top: 13px;
}

.search {
	border: 1px solid black;
	width:30%;
	float: right;
	height:auto;
}
#m {
	padding: 10px;
	text-decoration: none;
	color: white;
}

#m:hover {
	color:maroon;
}

.col2{
    height: 500px;
	border: 1px solid black;
	  
}
.col3 {
	height: 100px;
	border: 1px solid black;
	background-color: black;

}



@media ( max-width :1147px) {
	
}

@media ( max-width :786px) {
	
}

@media ( max-width :480px) {
	.logo {
		width: 100%;
		float: none;
	}
	.search_menu {
		width: 100%;
		float: none;
		padding-left: 20px;
	}
	#m {
		font-size: 15px;
	}
}
@media(max-width:953px){

	.search{
		float: none;
		width:100%;
	}
	.menu{
		float: none;
		width:100%;
	}
}

@media ( max-width :320px) {
}
</style>

<title>Hello, world!</title>
</head>
<body>
	<div class="row">
		<!-- Column -->
		<div class="col1">
			<div class=logo>
				<nav class="navbar bg-body-tertiary">
					<div class="container-fluid">
						<a class="navbar-brand" href="#"> <img src="workspace/thirdtry1/src/main/webapp/resources/Images/pngwing.com.png" alt="Logo"
							width="30" height="24" class="d-inline-block align-text-top">
							ESMSystem
						</a>
					</div>
				</nav>
			</div>

			<div class=search_menu>
				<div class="search">
					<form class="d-flex" role="search">
						<input class="form-control me-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success" type="submit">Search</button>
					</form> 
				</div>

				<div class="menu">
					 <a id="m" href="#"> Home</a> <a id="m" href="#"> about</a> <a
						id="m" href="#"> service</a> <a id="m" href="#"> cariear</a> <a
						id="m" href="#"> contact</a> <a id="m" href="#"> 
						<select
						     id="admin" name="role">
							<option "value="Admin">My Profile</option>
							<option value="change_password">Change password</option>
							<option value="LogOut">LogOut</option>
					</select>
					</a>
				</div>

			</div>
		</div>
		
		<div class="col2">Column-2</div>
      
		<div class="col3">Column 3</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
</body>
</html>