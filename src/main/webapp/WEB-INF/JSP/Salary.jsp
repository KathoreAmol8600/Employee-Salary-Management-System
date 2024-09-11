<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Attendance</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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
</head>

<body>
 
       <jsp:include page="/WEB-INF/JSP/AdminNavFooter/Adminnavbar.jsp" />
    
   <!--  main contenar -->
       <div class="contenar">
    <jsp:include page="/WEB-INF/JSP/Salary/Salary.jsp" />
        </div>
        
    <!--  footer -->
     <jsp:include page="/WEB-INF/JSP/footer.jsp" />
</body>
</html>
