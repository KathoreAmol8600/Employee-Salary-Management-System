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
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-oj9OMI3zpwrF8OBIcWJt+vL5c66Pxsz54rD5I6nRcyDA1q6F7XaoeFhK2dj8xExQ"
	crossorigin="anonymous">

<!-- Custom CSS -->
<style>
.navbar-brand img {
	height: 40px;
}

.carousel-item img {
	height: 500px;
	object-fit: cover;
}

.card-body {
	height: 180px;
}

h2 {
	color: #333;
}

.card {
	transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.card:hover {
	transform: scale(1.05);
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.footer {
	background-color: #343a40;
	color: #fff;
	padding: 20px;
}

.carousel-caption h5 {
	font-size: 2rem;
}

/* Carousel Controls */
.carousel-control-prev-icon,
.carousel-control-next-icon {
	background-color: #000; /* Set background color for icons */
}

/* Testimonials Section */
.testimonial-card {
	border: none;
	border-radius: 10px;
	background-color: #f8f9fa;
	padding: 20px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.testimonial-card:hover {
	transform: scale(1.05);
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.testimonial-card img {
	border-radius: 50%;
	width: 60px;
	height: 60px;
	object-fit: cover;
}

.testimonial-text {
	font-style: italic;
	color: #6c757d;
}

.testimonial-author {
	font-weight: bold;
	color: #343a40;
}
</style>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css">

<title>Home Page</title>
</head>
<body>
	<!-- Navbar -->
	<jsp:include page="/WEB-INF/JSP/navbar.jsp" />

	<!-- Carousel -->
	<div id="home" class="carousel slide mt-4" data-bs-ride="carousel" data-bs-interval="3000">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="resources/Images/pexels-stephan-seeber-1054201.jpg"
					class="d-block w-100" alt="First slide">
				<div class="carousel-caption d-none d-md-block">
					<h5>First slide label</h5>
					<p>Some representative placeholder content for the first slide.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="resources/Images/pexels-ketut-subiyanto-4964956.jpg"
					class="d-block w-100" alt="Second slide">
				<div class="carousel-caption d-none d-md-block">
					<h5>Second slide label</h5>
					<p>Some representative placeholder content for the second slide.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="resources/Images/589841.jpg" class="d-block w-100"
					alt="Third slide">
				<div class="carousel-caption d-none d-md-block">
					<h5>Third slide label</h5>
					<p>Some representative placeholder content for the third slide.</p>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#home" data-bs-slide="prev">
			<span class="carousel-control-prev" aria-hidden="true"></span> 
			<span class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#home" data-bs-slide="next">
			<span class="carousel-control-next" aria-hidden="true"></span> 
			<span class="visually-hidden">Next</span>
		</button>
	</div>

	<!-- About Us Section -->
	<div id="about-us" class="container my-3">
		<div class="row bg-light p-4 rounded">
			<div class="col-md-6">
				<img src="resources/Images/pexels-victoria-emerson-6116312.jpg"
					alt="About Us" class="img-fluid rounded">
			</div>
			<div class="col-md-6">
				<h2>About Us</h2>
				<p>At ESMSyste, we are dedicated to revolutionizing employee
					salary management with cutting-edge technology and innovative
					solutions. Our mission is to transform payroll management by
					simplifying complex processes, ensuring precise calculations, and
					maintaining rigorous compliance with regulatory standards. We
					empower businesses to concentrate on their core activities while we
					handle the intricacies of payroll management. Our system is
					designed with a user-centric approach, featuring intuitive
					navigation and robust functionalities that streamline salary
					computations, tax withholdings, and detailed reporting. Supported
					by a passionate team of software developers and HR professionals,
					we are committed to delivering reliable, efficient, and tailored
					solutions that meet the unique needs of every organization. At
					ESMSyste,</p>
			</div>
		</div>
	</div>

	<!-- Features Section -->
	<div id="features" class="container my-3">
		<h2 class="text-center mb-4">Features</h2>
		<div class="row text-center">
			<!-- Card 1 -->
			<div class="col-md-4 mb-4">
				<div class="card">
					<div class="row g-0">
						<div class="col-md-6">
							<img src="resources/Images/pexels-rdne-8292798.jpg"
								class="d-block w-100" alt="Feature 1">
						</div>
						<div class="col-md-6">
							<div class="card-body">
								<h6 class="card-title">Automated Salary Calculations</h6>
								<p class="card-text">Our system automates complex salary
									calculations, including base pay, overtime, bonuses, and
									deductions.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Card 2 -->
			<div class="col-md-4 mb-4">
				<div class="card">
					<div class="row g-0">
						<div class="col-md-6">
							<img
								src="resources/Images/pexels-polina-tankilevitch-6927342.jpg"
								class="d-block w-100" alt="Feature 2">
						</div>
						<div class="col-md-6">
							<div class="card-body">
								<h6 class="card-title">Comprehensive Tax Management</h6>
								<p class="card-text">Manage all your tax-related needs with
									our comprehensive solution, ensuring compliance and accuracy.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Card 3 -->
			<div class="col-md-4 mb-4">
				<div class="card">
					<div class="row g-0">
						<div class="col-md-6">
							<img src="resources/Images/pexels-jakubzerdzicki-20232363.jpg"
								class="d-block w-100" alt="Feature 3">
						</div>
						<div class="col-md-6">
							<div class="card-body">
								<h6 class="card-title">Customizable Reporting and Analytics</h6>
								<p class="card-text">Generate customized reports and gain
									insights with our advanced analytics tools.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Testimonials Section -->
	<div id="testimonials" class="container my-5">
		<h2 class="text-center mb-4">What Our Clients Say</h2>
		<div id="testimonials-carousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
			<div class="carousel-inner">
				<!-- Testimonial 1 -->
				<div class="carousel-item active text-center">
					<img src="resources/Images/pexels-cottonbro-4125671.jpg" class="rounded-circle mb-3"
						alt="Client 1"
						style="width: 80px; height: 80px; object-fit: cover;">
						<p class="testimonial-author">Client 1</p>
					<p class="testimonial-text">"Fantastic service! Highly recommend."</p>
				</div>
				<!-- Testimonial 2 -->
				<div class="carousel-item text-center">
					<img src="resources/Images/pexels-amirsaeiddehghan-13110361.jpg" class="rounded-circle mb-3"
						alt="Client 2"
						style="width: 80px; height: 80px; object-fit: cover;">
								<p class="testimonial-author">Client 2</p>
					<p class="testimonial-text">"Very professional and reliable."</p>
				</div>
				<!-- Testimonial 3 -->
				<div class="carousel-item text-center">
					<img src="resources/Images/pexels-lucaspezeta-2878735.jpg" class="rounded-circle mb-3"
						alt="Client 3"
						style="width: 80px; height: 80px; object-fit: cover;">
											<p class="testimonial-author">Client 3</p>
						
					<p class="testimonial-text">"Great experience from start to finish."</p>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#testimonials-carousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#testimonials-carousel" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>

	<!-- Contact Us Section -->
	<div id="contact-us" class="container my-5">
		<h2 class="text-center mb-4">Contact Us</h2>
		<form action="/contact" method="post">
			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="name" class="form-label">Name</label>
					<input type="text" class="form-control" id="name" name="name" required>
				</div>
				<div class="col-md-6 mb-3">
					<label for="email" class="form-label">Email</label>
					<input type="email" class="form-control" id="email" name="email" required>
				</div>
				<div class="col-12 mb-3">
					<label for="message" class="form-label">Message</label>
					<textarea class="form-control" id="message" name="message" rows="4" required></textarea>
				</div>
				<div class="col-12">
					<button type="submit" class="btn btn-primary">Send Message</button>
				</div>
			</div>
		</form>
	</div>

	<!-- Footer -->
	<footer class="footer text-center">
		<p>&copy; 2024 Company Name. All rights reserved.</p>
	</footer>

	<!-- Bootstrap JS Bundle -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-s3E3qZFLVxXX8pOckDAkEFxO1Sokq9GeUzPpzn6B3g1y4ACr2KrQ5i5lV0cX47ho"
		crossorigin="anonymous"></script>
</body>
</html>
