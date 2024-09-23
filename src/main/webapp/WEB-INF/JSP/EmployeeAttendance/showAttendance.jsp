<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
               <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Attendance Records</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        .container {
            margin-top: 30px;
        }
        .table-container {
            max-height: 350px; /* Adjust based on your needs */
            overflow-y: auto;
        }
        .table td, .table th {
            white-space: nowrap;
            text-overflow: ellipsis;
        }
        .table td {
            word-wrap: break-word;
            overflow: hidden;
        }
        #searchInput {
            margin-bottom: 20px;
        }
    </style>
    <script>
        function searchFunction() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("searchInput");
            filter = input.value.toLowerCase();
            table = document.getElementById("attendanceTableBody");
            tr = table.getElementsByTagName("tr");

            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td");
                if (td.length > 0) {
                    txtValue = "";
                    for (let j = 0; j < td.length; j++) {
                        txtValue += td[j].textContent || td[j].innerText;
                    }
                    tr[i].style.display = txtValue.toLowerCase().includes(filter) ? "" : "none";
                }
            }
        }
    </script>
</head>
<body>
    <div class="container">
       
        <div class="table-container">
            
       <form class="d-flex mb-3">
                <input class="form-control" type="search" placeholder="Search..." aria-label="Search" id="searchInput" onkeyup="searchFunction()">
            </form>
            <div class="table-wrapper">
                         <table class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>Index</th>
                            <th>Employee Name</th>
                            <th>Date</th>
                            <th>Status</th>
                            <th>HoursWorked</th>
                            <th>Edit</th>
                        </tr>
                    </thead>
                    <tbody id="employeeTableBody">
                        <c:forEach var="e" items="${attendance}" varStatus="status">
                            <tr>
                                <td><c:out value="${status.count + 0}" /></td>
                                <td>${e.empId}</td>
                                    <td>${e.date}</td>
                                    <td>${e. status}</td>
                                    <td>${e.hoursWorked}</td>
                                 <td>
                                    <!-- Edit button -->
                                    <a href="#edit=${e.empId}" class="btn btn-primary btn-sm">
                                        <i class="bi bi-pen"></i>
                                    </a>
                                    
                                    <a href="#delete=${e.empId}" class="btn btn-danger btn-sm delete-btn">
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


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>