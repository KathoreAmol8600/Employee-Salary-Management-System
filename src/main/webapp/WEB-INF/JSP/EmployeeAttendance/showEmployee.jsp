<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Table</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- SweetAlert CSS and JS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
    
    <style>
        /* Your existing CSS */
        .container {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            margin-top: 30px;
        }
        .table-container {
            flex: 1;
            margin-right: 20px;
        }
        .form-container {
            flex: 1;
        }
        .table-wrapper {
            max-height: 400px;
            overflow-y: auto;
        }
        #searchInput {
            margin-bottom: 20px;
        }
        .table td, .table th {
            white-space: nowrap;
            text-overflow: ellipsis;
        }
        .table td {
            word-wrap: break-word;
            overflow: hidden;
        }
        .form-section {
            margin-top: 30px;
        }
    </style>
    
    <script>
        // Your existing JavaScript functions
        function searchFunction() {
            const input = document.getElementById("searchInput");
            const filter = input.value.toLowerCase();
            const table = document.getElementById("employeeTableBody");
            const tr = table.getElementsByTagName("tr");

            for (let i = 0; i < tr.length; i++) {
                const td = tr[i].getElementsByTagName("td");
                let txtValue = "";
                for (let j = 0; j < td.length; j++) {
                    txtValue += td[j].textContent || td[j].innerText;
                }
                tr[i].style.display = txtValue.toLowerCase().includes(filter) ? "" : "none";
            }
        }

        function handleRowClick(event) {
            const row = event.currentTarget;
            const cells = row.getElementsByTagName("td");
            document.getElementById("employeeId").value = cells[1].textContent;
            document.getElementById("employeeName").value = cells[2].textContent;
            document.getElementById("employeeDepartment").value = cells[3].textContent;
            document.getElementById("saveAttendanceButton").disabled = false;
        }

        document.addEventListener('DOMContentLoaded', function () {
            document.querySelectorAll('.delete-btn').forEach(button => {
                button.addEventListener('click', event => {
                    if (!confirm('Are you sure you want to delete this item?')) {
                        event.preventDefault();
                    }
                });
            });

            document.querySelectorAll('#employeeTableBody tr').forEach(row => {
                row.addEventListener('click', handleRowClick);
            });

            document.getElementById("saveAttendanceButton").disabled = true;
        });
    </script>
</head>
<body>
    <div class="container">
        <!-- Table Section -->
        <div class="table-container">
            <form class="d-flex mb-3">
                <input class="form-control" type="search" placeholder="Search..." aria-label="Search" id="searchInput" onkeyup="searchFunction()">
            </form>
            <div class="table-wrapper">
                <table class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>Index</th>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Department</th>
                        </tr>
                    </thead>
                    <tbody id="employeeTableBody">
                        <c:forEach var="e" items="${emp}" varStatus="status">
                            <tr>
                                <td><c:out value="${status.count + 0}" /></td>
                                <td>${e.empId}</td>
                                <td>${e.empName}</td>
                                <td>${e.empDepName}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Form Section -->
        <div class="form-container">
            <div class="form-section">
                <a href="AttendanceList" id="showAttendanceLink">Show Attendance</a>
                <h4>Employee Details for Attendance</h4>
                <form action="AttendanceSave" method="get">
                    <div class="form-group">
                        <label for="employeeId" class="form-label">Employee ID:</label>
                        <input type="text" id="employeeId" name="EmpId" class="form-control" readonly>
                    </div>
                    <div class="form-group">
                        <label for="employeeName">Name</label>
                        <input type="text" class="form-control" id="employeeName" disabled>
                    </div>
                    <div class="form-group">
                        <label for="employeeDepartment">Department</label>
                        <input type="text" class="form-control" id="employeeDepartment" disabled>
                    </div>
                    <div class="form-group">
                        <label for="selectDate">Select Date</label>
                        <input type="date" class="form-control" id="selectDate" name="Date" required>
                    </div>
                    <div class="form-group">
                        <label for="selectStatus">Status</label>
                        <select class="form-control" id="selectStatus" name="Status" required>
                            <option value="present">Present</option>
                            <option value="absent">Absent</option>
                            <option value="leave">Leave</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="hoursWorked">Hours Worked</label>
                        <input type="number" class="form-control" id="hoursWorked" min="0" max="8" name="HoursWorked" required>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary" id="saveAttendanceButton" disabled>Save Attendance</button>
                        <p style="color: blue;">${msg }</p>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Show SweetAlert if there's a success message -->
    <script>
        const successMsg = "${msg }"; // Assuming 'msg' is a success message set in the backend
        if (successMsg) {
            swal("Success!", successMsg, "success");
        }
    </script>
</body>
</html>
