<%-- 
    Document   : second
    Created on : Dec 23, 2020, 10:18:27 AM
    Author     : chand
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
             //   String pid = request.getAttribute("PID").toString();
                
                if(request.getAttribute("PID") == null){
                    out.println("<h1>Fresh Request</h1>");
                }else {
                    out.println("<h2> Included Request </h2>");
                }
            %>
            
            <br><br> Application/ServletContext  Parameter <%= application.getInitParameter("APP_PARAM") %>
            
                <br><br>
                                         <%-- Expression Scriptlet --%>
       Application Attribute Value is   <%= application.getAttribute("BOTTLE") %>        <br><br>
                                         <%-- Expression Scriptlet --%>
       Session Attribute Value is   <%= session.getAttribute("ATT1") %>
               <br><br><br>
       Request Parameter Value is   <%= request.getParameter("uid") %>
               <br><br><br>
       Request Attribute Value is   <%= request.getAttribute("PID") %>
               <br><br><br>
     <!--  <a href="home"> Go back to Home Page </a> -->
    </body>
</html>
