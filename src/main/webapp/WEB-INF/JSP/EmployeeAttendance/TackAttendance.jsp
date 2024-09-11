<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Attendance Input Form</title>
    <!-- Bootstrap CSS CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding: 20px;
        }
        .form-container {
            max-width: 600px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <div class="container form-container">
        <h2 class="mb-4">Enter Attendance</h2>
        <form action="submit_attendance.jsp" method="post">
            <div class="form-group">
                <label for="employeeSelect">Select Employee</label>
                <select class="form-control" id="employeeSelect" name="empId" required>
                    <!-- Options would be populated dynamically from the server -->
                    <option value="">Select an employee</option>
                    <option value="11">Alice Johnson</option>
                    <option value="12">Bob Smith</option>
                    <option value="13">Carol White</option>
                    <option value="14">Dave Clark</option>
                    <option value="15">Emily Davis</option>
                </select>
            </div>
            <div class="form-group">
                <label for="attendanceDate">Date</label>
                <input type="date" class="form-control" id="attendanceDate" name="date" required>
            </div>
            <div class="form-group">
                <label for="statusSelect">Status</label>
                <select class="form-control" id="statusSelect" name="status" required>
                    <option value="">Select status</option>
                    <option value="Present">Present</option>
                    <option value="Absent">Absent</option>
                    <option value="Leave">Leave</option>
                </select>
            </div>
            <div class="form-group">
                <label for="hoursWorked">Hours Worked</label>
                <input type="number" class="form-control" id="hoursWorked" name="hoursWorked" step="0.01" min="0" placeholder="Enter hours worked" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
           
            <a href="view_attendance.html" class="btn btn-secondary ml-2">View Attendance</a>
        </form>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
