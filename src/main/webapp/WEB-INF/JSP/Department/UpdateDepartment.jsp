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
            <h2 class="text-center">Department Details</h2>
            <form action="update" method="POST">
                <input type="hidden" name="adminId" value="admin">
                <div class="mb-3">
                    <label for="firstName" class="form-label">Department id:</label>
                    <input type="text" id="firstName" name="firstName" class="form-control" value="${department.depId}" required>
                </div>
                <div class="mb-3">
                    <label for="lastName" class="form-label">Department Name:</label>
                    <input type="text" id="lastName" name="lastName" class="form-control" value="${department.depName}" required>
                </div>
            
                <button type="submit" class="btn btn-primary">Update</button>
                <a href="home-admin" style="text-decoration: none;">Cancel</a>
            </form>
        </div>
    </div>
</body>
</html>
