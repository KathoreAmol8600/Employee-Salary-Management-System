<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Footer</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        footer {
            background-color: #343a40; /* Dark background color */
            color: #ffffff; /* White text color */
            padding: 10px 20px;
        }
        footer a {
            color: #ffffff; /* White color for links */
            text-decoration: none; /* Remove underline from links */
        }
        footer a:hover {
            text-decoration: underline; /* Underline on hover */
        }
        @media (max-width: 768px) {
            footer .d-flex {
                flex-direction: column;
                align-items: center;
            }
            footer .d-flex > div {
                margin-bottom: 10px;
            }
        }
    </style>
</head>
<body>

<footer class="bg-dark text-white text-center d-flex flex-wrap justify-content-between align-items-center">
    <div class="d-flex align-items-center">
        <p class="mb-0">&copy; 2024 Your Company. All rights reserved.</p>
    </div>
    <div class="d-flex align-items-center">
        <a href="#" class="mx-2">Privacy Policy</a>
        <span class="mx-2">|</span>
        <a href="#" class="mx-2">Terms of Service</a>
    </div>
    <div class="d-flex align-items-center">
        <a href="#" class="me-3"><i class="bi bi-facebook"></i></a>
        <a href="#" class="me-3"><i class="bi bi-twitter"></i></a>
        <a href="#"><i class="bi bi-linkedin"></i></a>
    </div>
</footer>

</body>
</html>
