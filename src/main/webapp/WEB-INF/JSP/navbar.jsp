<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ESMSystem</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css" rel="stylesheet">
    <style type="text/css">
        .navbar {
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            z-index: 1000;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">
            <span class="navbar-logo">ESMSystem</span>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link text-white" href="#home">
                        <i class="bi bi-house"></i> Home
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="#about-us">
                        <i class="bi bi-person"></i> About
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="#features">
                        <i class="bi bi-lightning"></i> Features
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="#testimonials">
                        <i class="bi bi-chat-dots"></i> Clients Say
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="#contact-us">
                        <i class="bi bi-envelope"></i> Contact
                    </a>
                </li>
                <!-- <li class="nav-item">
                    <a class="nav-link text-white" href="login">
                        <i class="bi bi-star"></i> Reviews
                    </a>
                </li> -->
                <li class="nav-item">
                    <a class="nav-link text-white" href="login">
                        <i class="bi bi-box-arrow-in-right"></i> Login
                    </a>
                </li>
            </ul>
        </div>
    </nav>
    <!-- Bootstrap JS Bundle (including Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
