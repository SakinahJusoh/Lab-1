<%-- 
    Document   : UseSessionObject
    Created on : 29 Mar 2024, 4:15:02 pm
    Author     : Sakinah Jusoh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.math.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Implicit JSP</title>
    </head>
    <body>
        <% session.setAttribute("user", "Fouad Abdulameer");%>
        <a href = "GetAttribute.jsp">Click here to get user name </a>
        <p><a href ="MathematicsOperations.jsp">Results of mathematics operation</a></p>
    </body>
</html>

