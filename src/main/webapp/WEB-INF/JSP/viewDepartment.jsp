<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

    <script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css">
      <style type="text/css">
    *{
    padding: 0px;
    margin: 0px;
    box-sizing: border-box;
    }
    .contenar{
    height: 650px;
    }
      </style>
    <title>Admin Profile</title>
</head>
<body>
<!-- Navbar -->
    <div class="contenar">
       <jsp:include page="/WEB-INF/JSP/AdminNavFooter/Adminnavbar.jsp" />
        <jsp:include page="/WEB-INF/JSP/Department/view-department.jsp" />
       </div>
        <!--  footer -->
     <jsp:include page="/WEB-INF/JSP/footer.jsp" />
</body>
</html>
