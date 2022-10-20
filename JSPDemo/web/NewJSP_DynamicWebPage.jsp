<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  session="true" %>
<!-- HTML Comment -->

<%--  JSP Comment --%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%  
                // Regular Scriptlet 
                session.setAttribute("ATT1", "Panasonic");
                
                request.setAttribute("PID", "20201223");
            
                application.setAttribute("BOTTLE", "Starbucks");
                
             //  request.getRequestDispatcher("second.jsp").forward(request, response); 
             //  request.getRequestDispatcher("second.jsp").include(request, response);
            %>
            <a href="second.jsp?PID=20201223"> click here to go to Second.jsp </a>
            
            <br><br> Application/ServletContext  Parameter <%= application.getInitParameter("CTX_PARAM") %>
            
            <br><br>Servlet / JSP Configuration Init Parameter 
            <br><br><br>
            CONFIG_INIT_PARAM1 = <%= config.getInitParameter("CONFIG_INIT_PARAM1") %>
            <br><br><br>
            <form action="second.jsp" method="GET">
                <input type="text" name="uid">
                <input type="submit" name="action" value="SendUID">
            </form>
    </body>
</html>
