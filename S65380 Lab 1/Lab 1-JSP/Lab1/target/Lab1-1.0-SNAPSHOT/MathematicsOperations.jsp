<%-- 
    Document   : MathematicsOperations
    Created on : 29 Mar 2024, 4:29:11 pm
    Author     : Sakinah Jusoh
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
            int num1 = 25;
            int num2 = 10;
            int addition_output;
            int multiply_output;
            double squareroot = 0.00;
            
            java.util.Formatter myFormat = new java.util.Formatter();
            
            addition_output = num1 + num2;
            multiply_output = num1 * num2;
            
            squareroot = (double) (Math.sqrt(num1));
            
            out.println("<p>Addition num1 and num2 is " + addition_output + "</p>");
            out.println("<p>Multiplication num1 and num2 is " + multiply_output + "</p>");
            
            out.println("<p></P>");
            out.println("squareroot of " + num1 + " is " + myFormat.format("%.2f", squareroot) + "</P>");
        %>
    </body>
</html>
