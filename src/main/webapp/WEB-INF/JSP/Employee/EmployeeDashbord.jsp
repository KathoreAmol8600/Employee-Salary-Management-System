<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-+eYfIATuW9t6PqNIYxD4fS6duATsK4d9BqD42HrhDsfHR+MDDz7pbrFZ53dm5C"
          crossorigin="anonymous">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css">
    <style>
        body {
            background-color: #f0f2f5;
        }

        .sidebar {
            height: 100vh;
            background-color: #343a40;
            padding-top: 20px;
        }

        .sidebar a {
            font-size: 18px;
            color: #adb5bd;
            text-decoration: none;
            padding: 10px 15px;
        }

        .sidebar a:hover {
            background-color: #495057;
            color: #fff;
        }

        .main-content {
            padding: 20px;
        }

        .card {
            border-radius: 8px;
        }

        .card-header {
            background-color: #007bff;
            color: white;
        }

        .profile-info {
            display: none;
        }

        .profile-icon {
            cursor: pointer;
            text-align: center;
            margin-bottom: 20px;
            color: white;
        }

        .profile-icon img {
            width: 100px;
            border-radius: 50%;
        }

        h5 {
            padding-left: 20px;
            color: black;
        }

        .btn-primary {
            transition: background-color 0.3s, border-color 0.3s;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
    </style>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">ESMSystem</a>
        <div class="navbar-text ms-auto" style="padding-left: 450px">Welcome ${employee.empName}</div>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNav" aria-controls="navbarNav"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a href="logout" class="btn btn-primary btn-sm" style="margin-left: 430px">Logout</a></li>
            </ul>
        </div>
    </nav>

    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <nav class="col-md-3 col-lg-2 sidebar d-none d-md-block">
                <div class="profile-icon" onclick="showContent('profile')">
                    <img src="resources/Images/Iq_1.png" alt="Employee Icon">
                    <h6>${employee.empName}</h6>
                </div>
                <ul class="nav flex-column">
                    <li class="nav-item"><a class="nav-link" href="#" onclick="showContent('home')">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="#" onclick="showContent('salary')">Salary</a></li>
                    <li class="nav-item"><a class="nav-link" href="#" onclick="showContent('attendance')">Attendance</a></li>
                    <li class="nav-item"><a class="nav-link" href="#" onclick="showContent('leave')">Leave</a></li>
                </ul>
            </nav>

            <!-- Main content -->
            <main class="col-md-9 ms-sm-auto col-lg-10 main-content">
                <div id="contentArea">
                    <!-- Home Section -->
                    <div id="homeInfo" class="profile-info" style="display: block;">
                        <div class="row">
                            <div class="col-lg-6 mb-4">
                                <div class="card">
                                    <div class="card-header">
                                        <h5 class="card-title">Today's Tasks</h5>
                                    </div>
                                    <div class="card-body">
                                        <ul class="list-unstyled">
                                            <li>Complete project report</li>
                                            <li>Review team submissions</li>
                                            <li>Prepare for upcoming meeting</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 mb-4">
                                <div class="card">
                                    <div class="card-header">
                                        <h5 class="card-title">Completed Tasks</h5>
                                    </div>
                                    <div class="card-body">
                                        <ul class="list-unstyled">
                                            <li>Finalized budget proposal</li>
                                            <li>Submitted project updates</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card mb-4">
                            <div class="card-header">
                                <h5 class="card-title">Quick Overview</h5>
                            </div>
                            <div class="card-body">
                                <ul class="list-unstyled">
                                    <li><strong>Upcoming Meetings:</strong> Team sync at 3 PM</li>
                                    <li><strong>New Notifications:</strong> 2 new messages</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Profile Info -->
                    <div id="profileInfo" class="profile-info">
                        <div class="card mb-4">
                            <div class="card-header">
                                <h5 class="card-title">Employee Profile Overview</h5>
                            </div>
                            <div class="card-body">
                                <p>EmpID: <span id="empId">E12345</span></p>
                                <p>Name: <span id="empName">${employee.empName}</span></p>
                                <p>Contact: <span id="empContact">${employee.empContact}</span></p>
                                <p>Email: <span id="empEmail">${employee.empEmail}</span></p>
                                <p>Gender: <span id="empGender">${employee.empGender}</span></p>
                                <p>Address: <span id="empAddress">${employee.empAddres}</span></p>
                                <p>Date of Joining: <span id="empDoj">${employee.empDateOfJoining}</span></p>
                                <p>Department ID: <span id="empDeptId">${employee.empDepartmentId}</span></p>
                                <p>Base Salary: <span id="empSalary">${employee.basesalary}</span></p>
                            </div>
                            <a href="edit=${employee.empId}" class="btn btn-primary btn-sm">Update</a>
                        </div>
                    </div>

                    <!-- Salary Info -->
                    <div id="salaryInfo" class="profile-info">
                        <div class="card mb-4">
                            <div class="card-header">
                                <h5 class="card-title">Salary Information</h5>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <p><strong>Base Salary:</strong> <span id="baseSalary">${employee.basesalary}</span></p>
                                        <p><strong>Bonus:</strong> <span id="bonus">5000</span></p>
                                        <p><strong>Deductions:</strong> <span id="deductions">2000</span></p>
                                    </div>
                                    <div class="col-md-6">
                                        <p><strong>Total Salary:</strong> <span id="totalSalary">${employee.basesalary + 5000 - 2000}</span></p>
                                        <p><strong>Last Payment Date:</strong> <span id="lastPaymentDate">2024-09-15</span></p>
                                        <p><strong>Next Payment Date:</strong> <span id="nextPaymentDate">2024-10-15</span></p>
                                    </div>
                                </div>
                                <hr>
                                <h6>Salary History</h6>
                                <ul class="list-unstyled">
                                    <li>January 2024: $55,000</li>
                                    <li>February 2024: $55,000</li>
                                    <li>March 2024: $55,000</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Attendance Info -->
                    <div id="attendanceInfo" class="profile-info">
                        <div class="card mb-4">
                            <div class="card-header">
                                <h5 class="card-title">Attendance Records</h5>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Date</th>
                                                <th>Status</th>
                                                <th>Remarks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>2024-09-01</td>
                                                <td>Present</td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td>2024-09-02</td>
                                                <td>Absent</td>
                                                <td>Sick Leave</td>
                                            </tr>
                                            <tr>
                                                <td>2024-09-03</td>
                                                <td>Present</td>
                                                <td></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <hr>
                                <h6>Attendance Summary</h6>
                                <p><strong>Total Days:</strong> 22</p>
                                <p><strong>Days Present:</strong> 18</p>
                                <p><strong>Days Absent:</strong> 4</p>
                            </div>
                        </div>
                    </div>

                    <!-- Leave Info -->
                    <div id="leaveInfo" class="profile-info">
                        <div class="card mb-4">
                            <div class="card-header d-flex justify-content-between align-items-center">
                                <h5 class="card-title">Leave Records for ${employee.empName}</h5>
                                <a class="btn btn-primary" href="#addLeave">Request Leave</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Leave Date</th>
                                                <th>Type</th>
                                                <th>Status</th>
                                                <th>Remarks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>2024-09-22</td>
                                                <td>Sick Leave</td>
                                                <td><span class="badge bg-danger">Approved</span></td>
                                                <td>Medical Appointment</td>
                                            </tr>
                                            <tr>
                                                <td>2024-09-21</td>
                                                <td>Vacation</td>
                                                <td><span class="badge bg-success">Completed</span></td>
                                                <td>Family Trip</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <hr>
                                <h6>Summary</h6>
                                <p><strong>Total Leaves Taken:</strong> 2</p>
                                <p><strong>Leaves Remaining:</strong> 8</p>
                            </div>
                        </div>
                    </div>

                </div>
            </main>
        </div>
    </div>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-1dT40gX2L7mzHqT2Le3YlqUgS5E1u4Ff8gPmcWm3GqUqMfe3KVOsYxM0J8ZtdoM2"
            crossorigin="anonymous"></script>

    <script>
        function showContent(section) {
            // Hide all sections
            var sections = document.querySelectorAll('.profile-info');
            sections.forEach(function (element) {
                element.style.display = 'none';
            });

            // Show the selected section
            var content = document.getElementById(section + 'Info');
            if (content) {
                content.style.display = 'block';
            }

            // Show homeInfo by default if section is not specified
            if (section === 'home') {
                document.getElementById('homeInfo').style.display = 'block';
            }
        }

        // Show home info by default
        document.addEventListener('DOMContentLoaded', function () {
            showContent('home');
        });
    </script>
</body>

</html>
