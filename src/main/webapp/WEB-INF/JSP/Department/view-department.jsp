<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
        crossorigin="anonymous">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css">

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

    <style>
        .table-container {
            margin-top: 50px;
            max-height: 400px; /* Adjust height as needed */
            overflow-y: auto;
        }
        h2 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 1.75rem;
        }
        .table {
            margin: 0 auto;
            background-color: #fff;
            border-radius: .375rem;
            overflow: hidden;
        }
        .table th, .table td {
            text-align: center;
            vertical-align: middle;
        }
        .table-hover tbody tr:hover {
            background-color: #f5f5f5;
        }
        .btn-sm {
            padding: .25rem .5rem;
            font-size: .875rem;
            line-height: 1.5;
            border-radius: .2rem;
        }
        .btn-edit {
            background-color: #007bff;
            color: #fff;
        }
        .btn-delete {
            background-color: #dc3545;
            color: #fff;
        }
        .btn-edit, .btn-delete {
            margin: 0 2px;
        }
        /* Style for the search input */
        #searchInput {
            margin-bottom: 20px;
        }
        .table td, .table th {
            white-space: nowrap; /* Prevent text from overflowing horizontally */
            text-overflow: ellipsis; /* Adds ellipsis for overflowed text */
        }
        .table td {
            word-wrap: break-word; /* Allows long words to break and wrap to the next line */
            overflow: hidden;
        }
    </style>
    <script>
        function searchFunction() {
            // Declare variables
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("searchInput");
            filter = input.value.toLowerCase();
            table = document.getElementById("departmentTableBody");
            tr = table.getElementsByTagName("tr");

            // Loop through all table rows, and hide those who don't match the search query
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td");
                if (td.length > 0) {
                    txtValue = "";
                    for (let j = 1; j < td.length - 1; j++) { // Exclude the first (No) and last (Actions) cells
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
    <title>All Departments</title>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center table-container">
            <div class="col-md-10">
                <div class="table-responsive">
                    <!-- Search Input -->
                    <input type="text" id="searchInput" class="form-control" placeholder="Search Departments..." onkeyup="searchFunction()">

                    <table class="table table-hover table-bordered">
                        <thead class="table-light">
                      
                            <tr>
                                <th>No</th>
                                <th>Department Id</th>
                                <th>Department Name</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody id="departmentTableBody">
                            <c:forEach var="d" items="${departmentre}" varStatus="status">
                                <tr>
                                    <td><c:out value="${status.count + 1}" /></td>
                                    <td>${d.depId}</td>
                                    <td>${d.depName}</td>
                                    <td>
                                        <!-- Edit button -->
                                        <a href="department-update=${d.depId}" class="btn btn-edit btn-sm">
                                            <i class="bi bi-pencil"></i> Edit
                                        </a>
                                        <!-- Delete button -->
                                        <a href="department-update=${d.depId}" class="btn btn-delete btn-sm delete-btn">
                                            <i class="bi bi-trash"></i> Delete
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>  
            </div>
        </div>
    </div>
</body>
</html>
