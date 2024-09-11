<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css">

    <!-- Custom CSS -->
    <style>
        .navbar-nav {
            margin-left: auto;
        }

        .sidebar {
            height: 100vh;
            background-color: #f8f9fa;
            padding-top: 20px;
            position: sticky;
            top: 0;
        }

        .sidebar a {
            font-size: 18px;
            color: #333;
            text-decoration: none;
            display: block;
            padding: 10px 15px;
        }

        .sidebar a:hover {
            background-color: #ddd;
            color: #000;
        }

        .main-content {
            padding: 20px;
        }

        .dropdown-menu {
            min-width: 250px;
        }

        .profile-card {
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

        .dropdown-toggle::after {
            display: none;
        }

        .profile-btn {
            position: relative;
        }

        .profile-btn:hover .profile-card {
            display: block;
        }
    </style>

    <title>Employee Dashboard</title>
</head>

<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-dark">
        <a class="navbar-brand text-white" href="#">
            <span class="navbar-logo">ESMSystem</span>
        </a>
        <button class="navbar-toggler text-white" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon text-white"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item profile-btn">
                    <a class="nav-link text-white" href="edit">
                        <i class="bi bi-person"></i> Profile
                    </a>
                    <div class="profile-card">
                        <img src="resources/Images/Iq_1.png" alt="Profile Picture">
                        <h6>Amol Kathore</h6>
                        <a href="logout" class="btn btn-primary btn-sm">Logout</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <nav class="col-md-3 col-lg-2 sidebar d-none d-md-block">
                <h4 class="text-center">Dashboard</h4>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Salary</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Leave</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Attendance</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Tax</a>
                    </li>
                </ul>
            </nav>

            <!-- Main content -->
            <main class="col-md-9 ms-sm-auto col-lg-10 main-content">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h2>Employee Dashboard</h2>
                </div>

                <!-- Add your main content here -->
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card mb-4">
                                <div class="card-body">
                                    <h5 class="card-title">Profile Overview</h5>
                                    <p class="card-text">Quick overview of the employee profile.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card mb-4">
                                <div class="card-body">
                                    <h5 class="card-title">Recent Activities</h5>
                                    <p class="card-text">A summary of recent activities.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card mb-4">
                                <div class="card-body">
                                    <h5 class="card-title">Notifications</h5>
                                    <p class="card-text">Latest notifications and alerts.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>
