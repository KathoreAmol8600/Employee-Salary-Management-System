<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Employee</title>
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
        <div class="form-container" >
            <h2 class="text-center">Update Employee</h2>
            <form id="updateForm" action="update-employee"  method="POST">
              <label for="empId" class="form-label">Employee ID:</label>
                    <input type="text" id="empId" name="empId" class="form-control" value="${employee.empId}" readonly>
                <div class="mb-3">
                    <label for="empName" class="form-label">Name:</label>
                    <input type="text" id="empName" name="empName" class="form-control" value="${employee.empName }" required>
                </div>
                <div class="mb-3">
                    <label for="empContact" class="form-label">Contact:</label>
                    <input type="text" id="empContact" name="empContact" class="form-control" value="${employee.empContact}" required>
                </div>
                <div class="mb-3">
                    <label for="empEmail" class="form-label">Email:</label>
                    <input type="email" id="empEmail" name="empEmail" class="form-control" value="${employee.empEmail}" required>
                </div>
                <div class="mb-3">
                    <label for="empGender" class="form-label">Gender:</label>
                    <select id="empGender" name="empGender" class="form-select" required>
                        <option value="Male" ${employee.empGender == 'Male' ? 'selected' : ''}>Male</option>
                        <option value="Female" ${employee.empGender == 'Female' ? 'selected' : ''}>Female</option>
                       
                    </select>
                </div>
                <div class="mb-3">
                    <label for="empAddres" class="form-label">Address:</label>
                    <input type="text" id="empAddres" name="empAddres" class="form-control" value="${employee.empAddres}">
                </div>
               <%--  <div class="mb-3">
                    <label for="empDateOfJoining" class="form-label">Date of Joining:</label>
                    <input type="date" id="empDateOfJoining" name="empDateOfJoining" class="form-control" value="${employee.empDateOfJoining}" required>
                </div> --%>
                
          <%--   <div class="mb-3">
                    <label for="empDepartment" class="form-label">Department Name:</label>
                    <input type="text" id="empDepartment" name="empDepartment" class="form-control" value="${employee.empDepName}" required>
                </div>  --%>
              <%--   <div class="mb-3">
                    <label for="empUsername" class="form-label">Username:</label>
                    <input type="text" id="empUsername" name="empUsername" class="form-control" value="${employee.empUsername}">
                </div>
                <div class="mb-3">
                    <label for="empPassword" class="form-label">Password:</label>
                    <input type="password" id="empPassword" name="empPassword" class="form-control" value="${employee.empPassword}" required>
                </div>  --%>
                <button type="submit" class="btn btn-primary">Update</button>
                <p style="color: red">${msg}</p>
            </form>
        </div>
    </div>

   
</body>
</html>
