<!DOCTYPE html>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Employee</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background: url('https://via.placeholder.com/1600x900') no-repeat center center fixed;
            background-size: cover;
            color: #333;
            padding-top: 60px;
        }
        #update-form {
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
        .invalid-feedback {
            display: none;
        }
        .was-validated .form-control:invalid,
        .was-validated .form-select:invalid {
            border-color: #dc3545;
            padding-right: calc(1.5em + .75rem);
            background-image: none;
        }
        .was-validated .form-control:invalid ~ .invalid-feedback,
        .was-validated .form-select:invalid ~ .invalid-feedback {
            display: block;
        }
    </style>
</head>
<body>
    <div class="container">
        <div id="update-form">
            <h2 class="text-center">Update Employee</h2>
            <form id="updateForm" action="update-employee" method="POST" novalidate>
                <div class="mb-3">
                    <label for="empId" class="form-label">Employee ID</label>
                    <input type="text" id="empId" name="empId" class="form-control" value="${employee.empId}" readonly>
                </div>
                <div class="mb-3">
                    <label for="empName" class="form-label">Name</label>
                    <input type="text" id="empName" name="empName" class="form-control" value="${employee.empName}" required>
                    <div class="invalid-feedback">
                        Please enter a valid name. Only alphabetic characters and a single space between two words are allowed.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="empContact" class="form-label">Phone Number</label>
                    <input type="tel" id="empContact" name="empContact" class="form-control" value="${employee.empContact}" pattern="[0-9]{10}" required>
                    <div class="invalid-feedback">
                        Please enter a valid 10-digit phone number.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="empEmail" class="form-label">Email</label>
                    <input type="email" id="empEmail" name="empEmail" class="form-control" value="${employee.empEmail}" required>
                    <div class="invalid-feedback">
                        Please enter a valid email address. Ensure it does not have leading or trailing spaces, ends with a valid domain, and follows the format username@domain.com.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="empGender" class="form-label">Gender</label>
                    <select id="empGender" name="empGender" class="form-select" required>
                        <option value="Male" ${employee.empGender == 'Male' ? 'selected' : ''}>Male</option>
                        <option value="Female" ${employee.empGender == 'Female' ? 'selected' : ''}>Female</option>
                        <option value="Other" ${employee.empGender == 'Other' ? 'selected' : ''}>Other</option>
                    </select>
                    <div class="invalid-feedback">
                        Please select your gender.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="empAddres" class="form-label">Address</label>
                    <input type="text" id="empAddres" name="empAddres" class="form-control" value="${employee.empAddres}">
                    <div class="invalid-feedback">
                        Please enter your address.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="basesalary" class="form-label">Base Salary</label>
                    <input type="number" id="basesalary" name="basesalary" class="form-control" min="0" step="0.01" value="${employee.basesalary}" required>
                    <div class="invalid-feedback">
                        Please enter a valid base salary.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="empDateOfJoining" class="form-label">Date of Joining</label>
                    <input type="date" id="empDateOfJoining" name="empDateOfJoining" class="form-control" value="${employee.empDateOfJoining}" required>
                    <div class="invalid-feedback">
                        Please select a valid date of joining (not in the future).
                    </div>
                </div>
               <div class="mb-3">
                    <label for="empDepartmentId" class="form-label">Department</label>
                    <select id="empDepartmentId" name="empDepartmentId" class="form-select" required>
                        <option value="" disabled selected>Select your department</option>
                        <c:forEach var="department" items="${department}">
                            <option value="${department.depId}" ${employee.empDepartmentId == department.depId ? 'selected' : ''}>${department.depName}</option>
                        </c:forEach>
                    </select>
                    <div class="invalid-feedback">
                        Please select your department.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="empPassword" class="form-label">Password</label>
                    <input type="password" id="empPassword" name="empPassword" class="form-control" value="${employee.empPassword}" minlength="6" required>
                    <div class="invalid-feedback">
                        Please enter a password with at least 6 characters.
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Update</button>
                <p style="color: red;">${msg}</p>
            </form>
        </div>
    </div>

    <script>
        // JavaScript for enhanced email validation
        document.getElementById('empEmail').addEventListener('input', function (e) {
            var value = e.target.value;
            var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

            if (!emailPattern.test(value) || /\s/.test(value) || value.endsWith('.') || !/@gmail\.com$/.test(value)) {
                e.target.setCustomValidity('Please enter a valid email address. Ensure it does not have leading or trailing spaces, ends with a valid domain, and follows the format username@domain.com.');
            } else {
                e.target.setCustomValidity('');
            }
        });

        // JavaScript for name validation
        document.getElementById('empName').addEventListener('input', function (e) {
            var value = e.target.value;
            var regex = /^[A-Za-z]+(?: [A-Za-z]+)?$/; // Allows only alphabetic characters and a single space
            if (!regex.test(value)) {
                e.target.setCustomValidity('Please enter a valid name. Only alphabetic characters and a single space between two words are allowed.');
            } else {
                e.target.setCustomValidity('');
            }
        });

        // JavaScript for base salary rounding
        document.getElementById('basesalary').addEventListener('input', function (e) {
            var value = parseFloat(e.target.value);
            if (!isNaN(value)) {
                e.target.value = Math.round(value);
            }
        });

        // JavaScript for date of joining validation (prevent future dates)
        document.getElementById('empDateOfJoining').addEventListener('input', function (e) {
            var value = new Date(e.target.value);
            var today = new Date();
            if (value > today) {
                e.target.setCustomValidity('The date of joining cannot be in the future.');
            } else {
                e.target.setCustomValidity('');
            }
        });

        // Bootstrap custom form validation
        (function () {
            'use strict';
            var forms = document.querySelectorAll('form');
            Array.prototype.slice.call(forms)
                .forEach(function (form) {
                    form.addEventListener('submit', function (event) {
                        if (!form.checkValidity()) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
        })();
    </script>
</body>
</html>
