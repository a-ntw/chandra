<%-- 
    Document   : error
    Created on : Dec 23, 2020, 2:30:51 PM
    Author     : chand
--%>
<%@page isErrorPage="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>This is my error page!</h1>
        
        <%= exception.getStackTrace() %>
        <br>
        
        <%= exception.getMessage()%>
        <br>
        
        <a href="/JSPDemo/Third.jsp"> Go Back  </a>
        
    </body>
</html>
