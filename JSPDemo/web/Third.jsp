<%-- 
    Document   : Third
    Created on : Dec 23, 2020, 12:33:23 PM
    Author     : chand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html><%@page errorPage="error.jsp" %>

<!DOCTYPE html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Third JSP</title>
    </head>
    <body>
       
        <%
            session.getAttribute("JUNKVALUE").toString();
            %>
    </body>
</html>
