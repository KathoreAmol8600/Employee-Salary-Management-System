<!doctype html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

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

    <title>Employee Registration</title>
</head>
<body>

    <div class="container">
        <div id="register">
            <h2 class="text-center" style="color: blue;">Register Employee</h2>
            <form name="addemployee" action="addemployee" method="post" novalidate>
                <div class="mb-3">
                    <label for="firstname" class="form-label">Name</label>
                    <input type="text" class="form-control" id="firstname" name="EmpName" placeholder="Enter your name" required>
                    <div class="invalid-feedback">
                        Please enter a valid name. Only alphabetic characters and a single space between two words are allowed.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="phoneNumber" class="form-label">Phone Number</label>
                    <input type="tel" class="form-control" id="phoneNumber" name="EmpContact" placeholder="Enter your phone number" pattern="[0-9]{10}" required>
                    <div class="invalid-feedback">
                        Please enter a valid 10-digit phone number.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" name="EmpEmail" placeholder="Enter your email" required>
                    <div class="invalid-feedback">
                        Please enter a valid email address.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="EmpGender" class="form-label">Gender</label>
                    <select class="form-select" id="EmpGender" name="EmpGender" required>
                        <option value="" disabled selected>Select your gender</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="other">Other</option>
                    </select>
                    <div class="invalid-feedback">
                        Please select your gender.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="EmpAddres" class="form-label">Address</label>
                    <input type="text" class="form-control" id="EmpAddres" name="EmpAddres" placeholder="Enter your address" required>
                    <div class="invalid-feedback">
                        Please enter your address.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="basesalary" class="form-label">Base Salary</label>
                    <input type="number" class="form-control" id="basesalary" name="basesalary" min="0" step="0.01" placeholder="Enter Base Salary" required>
                    <div class="invalid-feedback">
                        Please enter a valid base salary.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="EmpDateOfJoining" class="form-label">Date of Joining</label>
                    <input type="date" class="form-control" id="EmpDateOfJoining" name="EmpDateOfJoining" required>
                    <div class="invalid-feedback">
                        Please select the date of joining.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="EmpDepartmentId" class="form-label">Department</label>
                    <select class="form-select" id="EmpDepartmentId" name="EmpDepartmentId" required>
                        <option value="" disabled selected>Select your department</option>
                        <c:forEach var="department" items="${department}">
                            <option value="${department.depId}">${department.depName}</option>
                        </c:forEach>
                    </select>
                    <div class="invalid-feedback">
                        Please select your department.
                    </div>
                </div>
                <div class="mb-3">
                    <label for="EmpPassword" class="form-label">Password</label>
                    <input type="password" class="form-control" id="EmpPassword" name="EmpPassword" placeholder="Enter your password" minlength="6" required>
                    <div class="invalid-feedback">
                        Please enter a password with at least 6 characters.
                    </div>
                </div>
                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" id="terms" required>
                    <label class="form-check-label" for="terms">I agree to the terms and conditions</label>
                    <div class="invalid-feedback">
                        You must agree to the terms and conditions.
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Register</button>
            </form>
        </div>
    </div>

    <script>
        // JavaScript for enhanced email validation
        document.getElementById('email').addEventListener('input', function (e) {
            var value = e.target.value;
            var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

            if (!emailPattern.test(value) || /\s/.test(value) || value.endsWith('.') || !/@gmail\.com$/.test(value)) {
                e.target.setCustomValidity('Please enter a valid email address. Ensure it does not have leading or trailing spaces, ends with a valid domain, and follows the format username@domain.com.');
            } else {
                e.target.setCustomValidity('');
            }
        });

        // JavaScript for name validation
        document.getElementById('firstname').addEventListener('input', function (e) {
            var value = e.target.value;
            var regex = /^[A-Za-z]+(?: [A-Za-z]+)?$/;
            if (!regex.test(value)) {
                e.target.setCustomValidity('Please enter a valid name. Only alphabetic characters and a single space between two words are allowed.');
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
                        } else {
                            // Show SweetAlert2 based on the message
                            const successMsg = "${msg}"; // Assuming 'msg' is a success or failure message set in the backend
                            if (successMsg) {
                                if (successMsg.includes('successfully')) {
                                    Swal.fire("Success!", successMsg, "success");
                                } else {
                                    Swal.fire("Error!", successMsg, "error");
                                }
                            }
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
        })();
    </script>

</body>
</html>
