<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee List</title>
   <style type="text/css">
     *{
      padding: 0px;
      margin:0px;
      box-sizing: border-box;
     }.
   </style>
</head>
<body>

          <jsp:include page="/WEB-INF/JSP/AdminNavFooter/Adminnavbar.jsp" />
    <!-- hear going to show all employee  -->
       <div class="contenar">
          <jsp:include page="/WEB-INF/JSP/AdminCotenars/AllEmployee.jsp" /> 
       </div>
      
        <!-- this is the footer  -->
         <jsp:include page="/WEB-INF/JSP/footer.jsp" />
</body>
</html>
