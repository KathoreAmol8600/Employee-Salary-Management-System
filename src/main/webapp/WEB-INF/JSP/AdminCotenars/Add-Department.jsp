<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2 class="text-center mb-4">Add Department</h2>
                <form name='frm' action='add-department' method='POST'>
                    <div class="mb-3">
                        <label for="DepId" class="form-label">Department ID</label>
                        <input type="number" class="form-control" name="DepId" id="DepId" placeholder="Enter Department ID" required>
                    </div>
                    <div class="mb-3">
                        <label for="DepName" class="form-label">Department Name</label>
                        <input type="text" class="form-control" name="DepName" id="DepName" placeholder="Enter Department Name" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Add Department</button>
                    <p class="text-danger mt-3">${msg}</p>
                </form>
            </div>
        </div>
    </div>
</body>
</html>