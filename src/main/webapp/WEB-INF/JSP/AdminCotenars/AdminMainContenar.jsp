<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {}

        .card-img {
            height: 400px; /* Set your desired height */
            object-fit: cover; /* Ensure the image covers the area without distortion */
        }

        .dashboard-card {
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
            text-align: center;
            width: 80%; /* Reduce width by 30% */
            margin: 0 auto; /* Center the card horizontally */
        }

        .dashboard-card h4 {
            font-size: 1.5rem;
            margin-bottom: 10px;
        }

        .dashboard-card p {
            font-size: 1.25rem;
        }

        .dashboard-card i {
            font-size: 2rem;
            margin-bottom: 15px;
        }

        .tasks {
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <div class="card bg-dark text-white text-center">
        <img src="resources/Images/pexels-lumn-295771.jpg" class="card-img" alt="Background Image">
        <div class="card-img-overlay d-flex flex-column justify-content-center align-items-center">
            <div class="card-header bg-transparent border-8" style="margin-top: 100px">
                <h2>Quote of the Day</h2>
            </div>
            <div class="card-body text-center">
                <blockquote class="blockquote text-white">
                    <p>"The only way to do great work is to love what you do."</p>
                    <p>Steve Jobs</p>
                </blockquote>
            </div>
        </div>
    </div>

    <div class="container-fluid mt-4">
        <!-- First Row: Basic Cards -->
        <div class="row">
            <div class="col-md-4 d-flex justify-content-center">
                <div class="dashboard-card bg-light">
                    <i class="fas fa-users"></i>
                    <h4>Total Employees</h4>
                    <p class="lead mt-3"><strong>${countemployee}</strong></p>
                </div>
            </div>
			<div class="col-md-4 d-flex justify-content-center">
				<div class="dashboard-card bg-light text-black p-2">
					<i class="fas fa-sitemap fa-2x mb-1"></i>
					<h4>Total Departments</h4>
					<p>${totalDepartment}</p>
					<!-- Correctly reference totalDepartment -->
					<div class="d-flex justify-content-between mt-2">
						<a href="view-department" class="btn btn-primary">View
							Department</a> <a href="inputFrom-adddepartment"
							class="btn btn-secondary">Add Department</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 d-flex justify-content-center">
                <div class="dashboard-card bg-light text-black">
                    <i class="fas fa-history"></i>
                    <h4>Recent Changes</h4>
                    <p>No recent changes.</p>
                </div>
            </div>
        </div>

        <!-- Second Row: Vertical Layout for Employee Status -->
        <p style="text-align: center; font-weight: bold; font-size: 1.5rem; margin-top: 40px;">Today's Employee Status</p>
        <div class="row mt-4">
            <div class="col-md-4 d-flex justify-content-center">
                <div class="dashboard-card bg-light text-black">
                    <i class="fas fa-user-check"></i>
                    <h4>Present Employees</h4>
                    <p>${presentCount}</p>
                </div>
            </div>
            
            <div class="col-md-4 d-flex justify-content-center">
                <div class="dashboard-card bg-warning text-black">
                    <i class="fas fa-user-clock"></i>
                    <h4>On Leave Employees</h4>
                    <p>${onLeaveCount}</p> 
                </div>
            </div>
            <div class="col-md-4 d-flex justify-content-center">
                <div class="dashboard-card bg-danger text-white">
                    <i class="fas fa-user-times"></i>
                    <h4>Absent Employees</h4>
                    <p>${absentCount}</p> 
                </div>
            </div>
        </div>

        <!-- Third Row: Upcoming Events Card -->
        <div class="row mt-4">
            <div class="col-md-12 d-flex justify-content-center">
                <div class="dashboard-card text-black">
                    <i class="fas fa-calendar-alt"></i>
                    <h4>Upcoming Events</h4>
                    <ul class="list-unstyled">
                        <li>Team Meeting - September 10, 2024</li>
                        <li>Annual Review - October 5, 2024</li>
                        <li>Holiday Party - December 15, 2024</li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
    
    <div class="container my-3">
        <h2 class="text-center mb-4">Employee Requests to Admin for Changes</h2>
        <div id="testimonialsCarousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="card mb-4 bg-white text-black">
                        <div class="card-body text-center">
                            <p class="card-text">"Amazing service! I highly recommend them."</p>
                            Employee Name
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="card mb-4 bg-white text-black">
                        <div class="card-body text-center">
                            <p class="card-text">"Exceptional quality and support."</p>
                            Employee Name
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="card mb-4 bg-white text-black">
                        <div class="card-body text-center">
                            <p class="card-text">"I couldn't be happier with the results."</p>
                            Employee Name
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
</body>
</html>
