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

<!-- Bootstrap Icons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css">

<!-- Custom CSS -->
<style>
.navbar-nav {
	margin-left: 480px;
}

.navbar-nav .nav-item {
	margin-left: 10px;
}

.navbar-nav .profile-card {
	display: none;
	padding: 15px;
	border: 1px solid #ddd;
	border-radius: 8px;
	background-color: #fff;
	text-align: center;
	position: absolute;
	top: 100%;
	right: 0;
	z-index: 1000;
}

.navbar-nav .profile-card img {
	border-radius: 50%;
	width: 100px;
	height: 100px;
	object-fit: cover;
}

.navbar-nav .profile-card h6 {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	margin: 10px 0;
}

.navbar-nav .profile-btn:hover .profile-card {
	display: block;
}

.container-fluid {
	height: 100vh;
	overflow: hidden;
}

main {
	padding: 20px;
}
</style>

<title>Admin Dashboard</title>
</head>

<body>

	<!-- Navbar -->


	<nav class="navbar navbar-expand-lg navbar-light bg-dark">
		<a class="navbar-brand text-white" href="#"> <span
			class="navbar-logo">ESMSystem</span>
		</a>
		<button class="navbar-toggler text-white" type="button"
			data-bs-toggle="collapse" data-bs-target="#navbarNav"
			aria-controls="navbarNav" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon text-white"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav me-auto">
				<li class="nav-item"><a class="nav-link text-white"
					href="home-admin"> <i class="bi bi-house"></i> Home
				</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="allEmployee"> <i class="bi bi-person"></i> Employee
				</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="inputfrom"> <i class="bi bi-calendar"></i>
						Attendance
				</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="salary_show"> <i class="bi bi-cash"></i>
						Salary
				</a></li>
				<li class="nav-item"><a class="nav-link text-white"
					href="leave.html"> <i class="bi bi-calendar-check"></i> Leave <span
						class="badge rounded-pill bg-danger badge-notification">5</span> <!-- Notification badge -->

				</a></li>



				<li class="nav-item profile-btn"><a class="nav-link text-white"
					href="editProfile"> <i class="bi bi-person"></i> Admin
				</a>
					<div class="profile-card">
						<img src="resources/Images/Iq_1.png" alt="Profile Picture" >
						<h6>${admin.firstname}</h6>
						<a href="logout" class="btn btn-primary btn-sm">Logout</a>
					</div></li>
			</ul>
		</div>
	</nav>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>

</html>
