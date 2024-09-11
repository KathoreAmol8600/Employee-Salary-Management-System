<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Admin Details</title>
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
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <h2 class="text-center">Admin Details</h2>
            <form action="#" method="POST">
                <input type="hidden" name="adminId" value="admin">
                <div class="mb-3">
                    <label for="firstName" class="form-label">First Name:</label>
                    <input type="text" id="firstName" name="firstName" class="form-control" value="${admin.firstname}" required>
                </div>
                <div class="mb-3">
                    <label for="lastName" class="form-label">Last Name:</label>
                    <input type="text" id="lastName" name="lastName" class="form-control" value="${admin.lastname}" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email:</label>
                    <input type="email" id="email" name="email" class="form-control" value="${admin.email}" required>
                </div>
                <div class="mb-3">
                    <label for="contactNumber" class="form-label">Contact Number:</label>
                    <input type="text" id="contactNumber" name="contactNumber" class="form-control" value="${admin.con_num}" required>
                </div>
                <div class="mb-3">
                    <label for="dateOfBirth" class="form-label">Date of Birth:</label>
                    <input type="date" id="dateOfBirth" name="dateOfBirth" class="form-control" value="${admin.dateofbirth}" required>
                </div>
                <!-- Commented out sections -->
                <!--
                <div class="mb-3">
                    <label for="username" class="form-label">Username:</label>
                    <input type="text" id="username" name="username" class="form-control" value="" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password:</label>
                    <input type="password" id="password" name="password" class="form-control" value="${admin.password}" required>
                </div>
                -->
                <button type="submit" class="btn btn-primary">Update</button>
                <a href="home-admin" style="text-decoration: none;">Cancel</a>
            </form>
            <div class="form-footer">
                <a href="change-adminPassword" class="text-decoration-none">Change Password</a>
            </div>
          
            
        </div>
    </div>
</body>
</html>
