<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Table</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        .container {
            display: flex; /* Use flexbox for layout */
            justify-content: space-between; /* Space out the table and form */
            align-items: flex-start; /* Align items to the top */
            margin-top: 30px; /* Margin at the top */
        }
        .table-container {
            flex: 1; /* Take up available space */
            margin-right: 20px; /* Space between the table and the form */
        }
        .form-container {
            flex: 1; /* Take up available space */
        }
        .table-wrapper {
            max-height: 400px; /* Fixed height for the table wrapper */
            overflow-y: auto; /* Enable vertical scrolling */
        }
        #searchInput {
            margin-bottom: 20px; /* Space below the search input */
        }
        .table td, .table th {
            white-space: nowrap; /* Prevent text from overflowing horizontally */
            text-overflow: ellipsis; /* Adds ellipsis for overflowed text */
        }
        .table td {
            word-wrap: break-word; /* Allows long words to break and wrap to the next line */
            overflow: hidden;
        }
        .form-section {
            margin-top: 30px; /* Space above the form section */
        }
    </style>
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
                            <th>BaseSalary</th>
                        </tr>
                    </thead>
                    <tbody id="employeeTableBody">
                        <c:forEach var="e" items="${emp}" varStatus="status">
                            <tr>
                                <td><c:out value="${status.count + 1}" /></td>
                                <td>${e.empId}</td>
                                <td>${e.empName}</td>
                                <td>${e.empDepName}</td>
                                <td>${e.basesalary}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Form Section -->
        <div class="form-container">
            <div class="form-section">
                <h4>Employee Details for Salary</h4>
                <form action="salary_slip" method="post" id="salaryForm">
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
                    <!-- Base Salary -->
                    <div class="form-group">
                        <label for="basesalary">Base Salary</label>
                        <input type="text" class="form-control" id="basesalary" disabled>
                    </div>
                    <!-- Select Start Date -->
                    <div class="form-group">
                        <label for="periodStart">Select Start Date</label>
                        <input type="date" class="form-control" id="periodStart" name="periodStart" required>
                    </div>
                    <!-- Select End Date -->
                    <div class="form-group">
                        <label for="periodEnd">Select End Date</label>
                        <input type="date" class="form-control" id="periodEnd" name="periodEnd" required>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary" id="saveAttendanceButton" disabled>Generate Slip</button>
                        <p style="color: blue;">${msg}</p>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <script>
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
            document.getElementById("basesalary").value = cells[4].textContent;
            document.getElementById("saveAttendanceButton").disabled = false;
        }

        function validateDates() {
            const startDate = document.getElementById("periodStart").value;
            const endDate = document.getElementById("periodEnd").value;
            const today = new Date();
            const todayString = today.toISOString().split('T')[0];

            if (!startDate || !endDate) {
                alert('Please select both start and end dates.');
                return false; // Prevent submission if dates are not provided
            }

            if (startDate >= endDate) {
                alert('Start date must be before the end date.');
                return false;
            }

            if (endDate > todayString) {
                alert('End date must be today or in the past.');
                return false;
            }

            return true;
        }

        document.addEventListener('DOMContentLoaded', function () {
            document.querySelectorAll('#employeeTableBody tr').forEach(row => {
                row.addEventListener('click', handleRowClick);
            });

            document.getElementById('salaryForm').addEventListener('submit', function(event) {
                if (!validateDates()) {
                    event.preventDefault(); // Prevent form submission if dates are invalid
                }
            });
        });
    </script>
</body>
</html>
