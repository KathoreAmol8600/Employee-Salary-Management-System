<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        body {
            background: url('https://via.placeholder.com/1600x900') no-repeat center center fixed;
            background-size: cover;
            color: #333;
            padding-top: 60px;
        }
        #register {
            background: rgba(255, 255, 255, 0.9);
            border-radius: 8px;
            padding: 30px;
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
    </style>

    <title>Employee Registration</title>
</head>
<body>

    <div class="container">
        <div id="register">
            <h2 class="text-center" style="color: blue;">Register Employee</h2>
            <p style="color: red;">${msg}</p>
            <form name="addemployee" action="addemployee" method="post">
                <div class="mb-3">
                    <label for="firstname" class="form-label">Name</label>
                    <input type="text" class="form-control" id="firstname" name="EmpName" placeholder="Enter your name" required>
                </div>
                <div class="mb-3">
                    <label for="phoneNumber" class="form-label">Phone Number</label>
                    <input type="number" class="form-control" id="phoneNumber" name="EmpContact" placeholder="Enter your phone number" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" name="EmpEmail" placeholder="Enter your email" required>
                </div>
                <div class="mb-3">
                    <label for="EmpGender" class="form-label">Gender</label>
                    <select class="form-select" id="EmpGender" name="EmpGender" required>
                        <option value="" disabled selected>Select your gender</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="other">Other</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="EmpAddres" class="form-label">Address</label>
                    <input type="text" class="form-control" id="EmpAddres" name="EmpAddres" placeholder="Enter your address" required>
                </div>
                <div class="mb-3">
                    <label for="EmpAddres" class="form-label">BaseSalary</label>
                    <input type="number" class="form-control" id="basesalary" name="basesalary" placeholder="Enter Base Salary" required>
                </div>
                <div class="mb-3">
                    <label for="EmpDateOfJoining" class="form-label">Date of Joining</label>
                    <input type="date" class="form-control" id="EmpDateOfJoining" name="EmpDateOfJoining" required>
                </div>
                   
                <div class="mb-3">
                    <label for="EmpDepartmentId" class="form-label">Department</label>
                    <select class="form-select" id="EmpDepartmentId" name="EmpDepartmentId" required>
                        <option value="" disabled selected>Select your department</option>
                        <c:forEach var="department" items="${department}">
                            <option value="${department.depId}">${department.depName}</option>
                        </c:forEach>
                    </select>
                </div>
				<!-- <div class="mb-3">
					<label for="file" class="form-label">Upload Adhar pdf:</label> <input
						type="file" id="file" name="file" class="form-control"
						accept=".pdf" >
				</div> -->
			
                <div class="mb-3">
                    <label for="EmpPassword" class="form-label">Password</label>
                    <input type="password" class="form-control" id="EmpPassword" name="EmpPassword" placeholder="Enter your password" required>
                </div>
                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" id="terms" required>
                    <label class="form-check-label" for="terms">I agree to the terms and conditions</label>
                </div>
                <button type="submit" class="btn btn-primary">Register</button>
                <p style="color: red;" >${msg}</p>
            </form>
        </div>
    </div>
</body>
</html>
