<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css">

    <!-- Custom CSS -->
    <style>
     .row{
     height:500px;
     border: 1px solid black;
     }
    </style>

    <title>Admin Dashboard</title>
</head>
<body>
    <!-- Navbar -->
<%--      <jsp:include page="/WEB-INF/JSP/Admin/Adminnavbar.jsp" />
 --%>
    <div class="container-fluid">
        <div class="row">
           	 <div class="table-responsive" id="adminshow">
					<table class="table table-hover">
						<thead>
							<h2>Admin Profile</h2>
							<tr>
								<th>Index</th>
								<th>Firstname</th>
								<th>Lastname</th>
								<th>User Name</th>
								<th>Password</th>
								<th>Delete</th>
								<th>Update</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${not empty message}">
								<div class="alert alert-success">${message}</div>
							</c:if>
							<c:forEach var="d" items="${adminref}" varStatus="status">
								<tr>

									<td><c:out value="${status.count + 0}" /></td>
									<td>${d.firstname}</td>
									<td>${d.lastname}</td>
									<td>${d.username}</td>
									<td>${d.password}</td>
									<td><a style="text-decoration: none;"
										href="${pageContext.request.contextPath}/delete/${d.adminid}"
										onclick="return confirm('Are you sure you want to delete this record?');">Delete</a>
									</td>
									<td><a style="text-decoration: none;"
										href="${pageContext.request.contextPath}/update/${d.adminid}
									">Update</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div> 
        </div>

    <!--  footer -->
     <jsp:include page="/WEB-INF/JSP/footer.jsp" />
</body>
</html>

		
		