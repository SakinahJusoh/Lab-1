<%-- 
    Document   : Exercise1
    Created on : 30 Mar 2024, 8:22:53 pm
    Author     : Sakinah Jusoh
--%>

<%@page import="javax.swing.JOptionPane" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Area of Circle Calculator</title>
    </head>
    <body>
        <%
            String r;
            int rad;
            double area;
            r = JOptionPane.showInputDialog("Please enter the radius....!");
            rad = Integer.parseInt(r);
            
            area = Math.PI*(rad*rad);
            
            JOptionPane.showMessageDialog(null, "The area of circle = " + area);
            %>
    </body>
</html>
