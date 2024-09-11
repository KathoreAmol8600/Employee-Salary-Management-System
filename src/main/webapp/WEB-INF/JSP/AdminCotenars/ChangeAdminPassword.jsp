<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>
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
            max-width: 600px;
            margin: auto;
            margin-top: 5%;
        }
        .form-container h2 {
            margin-bottom: 20px;
            color: #007bff;
        }
        .form-footer {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
        .error-message {
            color: red;
            font-size: 0.875em;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h2 class="text-center">Change Password</h2>
            <form id="changePasswordForm" action="admin-changePassword" method="POST">
                <div class="mb-3">
                    <label for="username" class="form-label">Username:</label>
                    <input type="text" id="username" name="username" class="form-control" placeholder="Enter your username" required>
                </div>
                <!--
                <div class="mb-3">
                    <label for="currentPassword" class="form-label">Current Password:</label>
                    <input type="password" id="currentPassword" name="currentPassword" class="form-control" placeholder="Enter your current password" required>
                </div>
                -->
                <div class="mb-3">
                    <label for="newPassword" class="form-label">New Password:</label>
                    <input type="password" id="newPassword" name="newPassword" class="form-control" placeholder="Enter your new password" required>
                </div>
                <div class="mb-3">
                    <label for="confirmPassword" class="form-label">Confirm New Password:</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" placeholder="Confirm your new password" required>
                </div>
                <button type="submit" class="btn btn-primary">Change Password</button>
                <p id="error-message" class="error-message"></p>
            </form>
            <div class="form-footer">
                <a href="home-admin" class="text-decoration-none">Cancel</a>
                <!--
                <a href="#" class="text-decoration-none">Update Details</a>
                -->
            </div>
        </div>
    </div>

    <script>
        document.getElementById('changePasswordForm').addEventListener('submit', function(event) {
            // Get the password and confirm password values
            const newPassword = document.getElementById('newPassword').value;
            const confirmPassword = document.getElementById('confirmPassword').value;
            const errorMessage = document.getElementById('error-message');

            // Check if the passwords match
            if (newPassword !== confirmPassword) {
                // Prevent form submission
                event.preventDefault();

                // Show error message
                errorMessage.textContent = 'Passwords do not match.';
            } else {
                // Clear any previous error messages
                errorMessage.textContent = '';
            }
        });
    </script>
</body>
</html>
