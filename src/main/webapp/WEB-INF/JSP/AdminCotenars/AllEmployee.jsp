<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Employees</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        * {
            padding: 0px;
            margin: 0px;
            box-sizing: border-box;
        }
        .row {
            height: 500px;
        }
        .table-container {
            max-height: 300px; /* Adjust based on your needs */
            overflow-y: auto;
        }
        .table td, .table th {
            white-space: nowrap; /* Prevent text from overflowing horizontally */
            text-overflow: ellipsis; /* Adds ellipsis for overflowed text */
        }
        .table td {
            word-wrap: break-word; /* Allows long words to break and wrap to the next line */
            overflow: hidden;
        }
        #searchInput {
            margin-bottom: 20px;
        }
    </style>
    <script>
        function searchFunction() {
            // Declare variables
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("searchInput");
            filter = input.value.toLowerCase();
            table = document.getElementById("employeeTableBody");
            tr = table.getElementsByTagName("tr");

            // Loop through all table rows, and hide those who don't match the search query
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td");
                if (td.length > 0) {
                    txtValue = "";
                    for (let j = 0; j < td.length - 1; j++) { // Exclude the last cell (Edit column)
                        txtValue += td[j].textContent || td[j].innerText;
                    }
                    if (txtValue.toLowerCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }

        document.addEventListener('DOMContentLoaded', function () {
            document.querySelectorAll('.delete-btn').forEach(function (button) {
                button.addEventListener('click', function (event) {
                    var confirmed = confirm('Are you sure you want to delete this item?');
                    if (!confirmed) {
                        event.preventDefault();
                    }
                });
            });
        });
    </script>
</head>
<body>
    <div class="row">
        <div class="container mt-5">
            <form class="d-flex mb-3">
                <input class="form-control me-2" type="search" placeholder="Search..." aria-label="Search" id="searchInput" onkeyup="searchFunction()">
            </form>
             <a href="employee_add" style="padding-left: 1000px">add Employee</a>
            <div class="table-container">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Index</th>
                            <th>Name</th>
                            <th>Contact</th>
                            <th>Email</th>
                            <th>Gender</th>
                            <th>Date Of Joining</th>
                            <th>Department</th>
                            <th>Salary</th>
                            <th>Edit</th>
                        </tr>
                    </thead>
                    <tbody id="employeeTableBody">
                        <c:forEach var="e" items="${emp}" varStatus="status"> 
                            <tr>
                                <td><c:out value="${status.count + 0}" /></td>
                                <td>${e.empName}</td>
                                <td>${e.empContact}</td>
                                <td>${e.empEmail}</td>
                                <td>${e.empGender}</td>
                                <td>${e.empDateOfJoining}</td>
                                <td>${e.empDepName}</td>
                                <td>${e.basesalary}</td>
                                <td>
                                    <!-- Edit button -->
                                    <a href="edit=${e.empId}" class="btn btn-primary btn-sm">
                                        <i class="bi bi-pen"></i>
                                    </a>
                                    
                                    <a href="delete=${e.empId}" class="btn btn-danger btn-sm delete-btn">
                                        <i class="bi bi-trash"></i>
                                    </a>
                                </td>
                            </tr> 
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
