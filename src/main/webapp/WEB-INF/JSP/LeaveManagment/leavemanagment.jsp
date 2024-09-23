<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Leave Management</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .container {
            margin-top: 20px;
        }
        .actions button {
            margin: 0 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="my-4">Leave Management</h1>

        <!-- Example leave request table -->
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Employee Name</th>
                    <th scope="col">Leave Type</th>
                    <th scope="col">Description</th>
                    <th scope="col">Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Example Row -->
                <tr>
                    <td>John Doe</td>
                    <td>Sick Leave</td>
                    <td>Flu and fever for the past few days.</td>
                    <td class="actions">
                        <form action="LeaveActionServlet" method="post" style="display:inline;">
                            <input type="hidden" name="employeeName" value="John Doe">
                            <input type="hidden" name="leaveType" value="Sick Leave">
                            <input type="hidden" name="description" value="Flu and fever for the past few days.">
                            <input type="hidden" name="action" value="accept">
                            <button type="submit" class="btn btn-success">Accept</button>
                        </form>
                        <form action="LeaveActionServlet" method="post" style="display:inline;">
                            <input type="hidden" name="employeeName" value="John Doe">
                            <input type="hidden" name="leaveType" value="Sick Leave">
                            <input type="hidden" name="description" value="Flu and fever for the past few days.">
                            <input type="hidden" name="action" value="reject">
                            <button type="submit" class="btn btn-danger">Reject</button>
                        </form>
                    </td>
                </tr>
                <!-- Add more rows here -->
            </tbody>
        </table>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
