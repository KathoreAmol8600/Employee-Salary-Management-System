<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login / Registration</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background: url('https://via.placeholder.com/1600x900') no-repeat center center fixed;
            background-size: cover;
            color: #333;
        }
        .form-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 8px;
            max-width: 500px;
            margin: auto;
            margin-top: 5%;
        }
        .form-container h2 {
            margin-bottom: 20px;
            color: #007bff;
        }
        .form-container .form-group {
            margin-bottom: 15px;
        }
        .form-container button {
            width: 100%;
        }
        .error-message {
            color: red;
            font-size: 0.875rem;
        }
        .signup-option {
            text-align: center;
            margin-top: 20px;
        }
        .signup-option a {
            color: #007bff;
            text-decoration: none;
        }
        .signup-option a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h2 class="text-center">Login / Registration</h2>
            <form id="loginForm" action="admindashbord" method="POST">
                <div class="mb-3">
                    <label for="role" class="form-label">Login Role:</label>
                    <select id="role" name="role" class="form-select" required>
                        <option value="ADMIN">Admin</option>
                        <option value="EMPLOYEE">Employee</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="username" class="form-label">Username:</label>
                    <input type="text" id="username" name="username" class="form-control" placeholder="Enter your Email/Mobile" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password:</label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required>
                </div>
                <!-- <div class="mb-3">
                    <label for="checkPassword" class="form-label">Re-enter Password:</label>
                    <input type="password" id="checkPassword" name="checkPassword" class="form-control" placeholder="Re-enter your password" required>
                </div> -->
                <button type="submit" class="btn btn-primary">Submit</button>
                <!-- <p id="error-message" class="error-message mt-2"></p> -->
                <p style="color: red">${msg}</p>
            </form>

            <div class="signup-option">
                <p>Don't have an account?</p>
                <a href="Rege_Employee">Sign Up Here</a>
            </div>
        </div>
    </div>

    <script>
        document.getElementById('loginForm').addEventListener('submit', function(event) {
            var password = document.getElementById('password').value;
            var checkPassword = document.getElementById('checkPassword').value;
            var errorMessage = document.getElementById('error-message');

            if (password !== checkPassword) {
                errorMessage.textContent = "Passwords do not match!";
                event.preventDefault(); // Prevent form submission
            } else {
                errorMessage.textContent = ""; // Clear any previous error message
            }
        });
    </script>
</body>
</html>
