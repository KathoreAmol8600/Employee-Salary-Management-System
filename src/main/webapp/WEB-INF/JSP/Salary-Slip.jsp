<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

       <jsp:include page="/WEB-INF/JSP/AdminNavFooter/Adminnavbar.jsp" />
    
   <!--  main contenar -->
       <div class="contenar">
    <jsp:include page="/WEB-INF/JSP/Salary/salarySlip.jsp" />
        </div>
        
    <!--  footer -->
     <jsp:include page="/WEB-INF/JSP/footer.jsp" />
</body>
</html>