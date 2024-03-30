<%-- 
    Document   : GetAttribute
    Created on : 29 Mar 2024, 4:18:22 pm
    Author     : Sakinah Jusoh
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Implicit JSP</title>
    </head>
    <body>
        <% 
            String name = (String) session.getAttribute("user");
            out.println("User Name is: " + name);
        %>
    </body>
</html>

