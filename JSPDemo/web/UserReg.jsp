<%-- 
    Document   : UserReg
    Created on : Dec 23, 2020, 3:32:57 PM
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

        <form action="usrm" method="POST">
            <br> Enter UserID <input type="text" name="userid" >
            <br> Enter Password <input type="text" name="pwd" >
            <br> Enter Username <input type="text" name="user" >
            <br> Click here to <input type="submit" name="action" value="Create_User">
        </form>
    </body>
</html>
