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

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>

<style>
.navbar-brand .navbar-logo {
    font-size: 24px;
    font-weight: bold;
    color: white;
    padding: 0 15px;
    display: flex;
    align-items: center;
}
.navbar-nav {
	margin-left: 510px;
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
	background: linear-gradient(to right, rgba(300, 50, 400, 0.3),
		rgba(135, 24, 205, 0.5));
	color: black;
	font-size: 15px;
	margin: 5px;
	border-radius: 10px;
	border-top-right-radius: 0;
}

.navbar-brand img {
	height: 40px;
	margin-right: 15px;
}

.card-body {
	height: 180px;
}
h2{
  color: black;
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
.card {
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.card:hover {
    transform: scale(1.05);
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css">


<title>Home Page</title>
</head>
<body>
    <jsp:include page="/WEB-INF/JSP/navbar.jsp" />

	<div id="carouselExampleCaptions" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
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
					<p>Some representative placeholder content for the second
						slide.</p>
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
			data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	
<br> 
	<div class="container md-2">
		<div class="row" style="background-color: white;">
			<div class="col-md-6">
				<img src="resources/Images/pexels-victoria-emerson-6116312.jpg" alt="About Us" class="img-fluid">
			</div>
			<div class="col-md-6">
				<h2>About Us</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eget ipsum nulla. Vivamus lectus dui, consectetur nec porta a, 
				vestibulum sed ipsum. Suspendisse consequat, elit sed tempus aliquet, est sapien auctor turpis, quis rutrum tellus urna ac nisi. Quisque vitae porttitor elit, nec ultrices arcu. Vestibulum metus arcu, placerat rutrum enim eu, vestibulum rutrum eros. Nam imperdiet lectus vitae tristique posuere. Etiam porttitor dolor id magna lacinia vehicula. Etiam semper ut ligula in 
				eleifend. Sed suscipit massa id diam feugiat, at laoreet turpis posuere. Duis dapibus ante justo.</p>
			</div>
		</div>
	</div>

<div class="container my-3">
	<div class="row text-center">
		<!-- Card 1 --> 
		<div class="col-md-4">
	
			<div class="card">
				<div class="row g-0">
					<div class="col-md-6">
					<img src="resources/Images/pexels-arunodhai-v-568948.jpg"
					class="d-block w-100" alt="First slide">
					</div>
					<div class="col-md-6">
						<div class="card-body">
							<h5 class="card-title">Feature 1</h5>
							<p class="card-text">Description of the first feature Nunc viverra dignissim finibus. Praesent eu justo in lectus ornare egestas eu sed massa. .</p>
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
					<img src="resources/Images/pexels-arunodhai-v-568948.jpg" class="d-block w-100" alt="First slide">
					</div>
					<div class="col-md-6">
						<div class="card-body">
							<h5 class="card-title">Feature 2</h5>
							<p class="card-text">Description of the secondNunc viverra dignissim finibus. Praesent eu justo in lectus ornare egestas eu sed massa.  feature.</p>
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
					<img src="resources/Images/pexels-arunodhai-v-568948.jpg"	class="d-block w-100" alt="First slide">
					</div>
					<div class="col-md-6">
						<div class="card-body">
							<h5 class="card-title">Feature 3</h5>
							<p class="card-text">Description of the third Nunc viverra dignissim finibus. Praesent eu justo in lectus ornare egestas eu sed massa.  feature.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<br><br>
	<div class="container my-3" >
		<h2 class="text-center mb-4">What Our Clients Say</h2>
		<div id="testimonialsCarousel" class="carousel slide "  data-bs-ride="carousel">
			<div class="carousel-inner" >
				<div class="carousel-item active" >
					<div class="card mb-4"  style="background-color: orange">
						<div class="card-body text-center">
							<p class="card-text">"Amazing service! I highly recommend them."</p>
							<footer class="blockquote-footer">Customer Name</footer>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="card mb-4" style="background-color: orange">
						<div class="card-body text-center">
							<p class="card-text">"Exceptional quality and support."</p>
							<footer class="blockquote-footer">Customer Name</footer>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="card mb-4 " style="background-color: orange	">
						<div class="card-body text-center">
							<p class="card-text">"I couldn't be happier with the results."</p>
							<footer class="blockquote-footer">Customer Name</footer>
						</div>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#testimonialsCarousel" role="button" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</a>
			<a class="carousel-control-next" href="#testimonialsCarousel" role="button" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</a>
		</div>
	</div>

	<div class="container my-3">
		<h2 class="text-center mb-4">Contact Us</h2>
		<form>
			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="name" class="form-label">Name</label>
					<input type="text" class="form-control" id="name" placeholder="Your Name">
				</div>
				<div class="col-md-6 mb-3">
					<label for="email" class="form-label">Email</label>
					<input type="email" class="form-control" id="email" placeholder="Your Email">
				</div>
			</div>
			<div class="mb-3">
				<label for="message" class="form-label">Message</label>
				<textarea class="form-control" id="message" rows="4" placeholder="Your Message"></textarea>
			</div>
			<button type="submit" class="btn btn-primary">Send Message</button>
		</form>
	</div>

    <jsp:include page="/WEB-INF/JSP/footer.jsp" />

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
		crossorigin="anonymous"></script>
</body>
</html>
