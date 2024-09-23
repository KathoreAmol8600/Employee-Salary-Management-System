<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+eYfIATuW9t6PqNIYxD4fS6duATsK4d9BqD42HrhDsfHR+MDDz7pbrFZ53dm5C" crossorigin="anonymous">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css">
    <style>
        .profile-card {
            display: none;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #fff;
            text-align: center;
            position: absolute;
            top: 100%; /* Position below the button */
            right: 0;
            z-index: 1000;
            width: 200px; /* Set a fixed width for the dropdown */
        }

        .profile-card img {
            border-radius: 50%;
            width: 100px;
            height: 100px;
            object-fit: cover;
        }

        .profile-card h6 {
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            margin: 10px 0;
        }

        .profile-btn {
            position: relative;
        }

        .profile-btn:hover .profile-card,
        .profile-btn:focus-within .profile-card {
            display: block;
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">ESMSystem</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item dropdown profile-btn">
                    <a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button" aria-expanded="false">
                        <i class="bi bi-person"></i> Profile
                    </a>
                    <div class="profile-card dropdown-menu" aria-labelledby="navbarDropdown">
                        <img src="resources/Images/Iq_1.png" alt="Profile Picture">
                        <h6>${employee.empName}</h6>
                        <a href="logout" class="btn btn-primary btn-sm">Logout</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-8 col-sm-10">
                <div class="card">
                    <div class="card-body text-center">
                        <h5 class="card-title">Profile Overview</h5>
                        <img src="resources/Images/Iq_1.png" alt="Profile Picture" class="img-fluid rounded-circle" style="width: 150px; height: 150px;">
                        <h6 class="mt-3">${employee.empName}</h6>
                        <p>Email: ${employee.empEmail}</p>
                        <p>Contact: ${employee.empContact}</p>
                        <p>Department: ${employee.empDepartmentId}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-1dT40gX2L7mzHqT2Le3YlqUgS5E1u4Ff8gPmcWm3GqUqMfe3KVOsYxM0J8ZtdoM2" crossorigin="anonymous"></script>
</body>

</html>
