<%-- 
    Document   : UserRegJSP
    Created on : Dec 23, 2020, 3:35:24 PM
    Author     : chand
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
           <sql:setDataSource var="myDBAccess"  user="hr" password="hr"
                               url="jdbc:oracle:thin:@//localhost:1521/XEPDB1"
                               driver="oracle.jdbc.OracleDriver"/>
            
            <sql:update dataSource="${myDBAccess}" var="count">
                INSERT INTO HR.AUTHENTICATIONTBL(USERID,PASSWORD,USERNAME) VALUES('<%=request.getParameter("userid") %>','<%=request.getParameter("pwd")%>','<%=request.getParameter("user")%>')
            </sql:update>
                
                <h1> Record Inserted Successfully </h1> ${count}
    </body>
</html>
