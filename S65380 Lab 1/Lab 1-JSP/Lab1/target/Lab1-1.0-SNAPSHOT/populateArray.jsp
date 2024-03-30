<%-- 
    Document   : populateArray
    Created on : 30 Mar 2024, 7:56:18 pm
    Author     : Sakinah Jusoh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Populate Array</title>
        <style>
            #populate {
                font-family: Arial, Helvetica, sans-serif;
                text-align: center;
                border-collapse: collapse;
                width: 100%;
            }

            #populate td, #populate th {
                border: 1px #ddd;
                padding: 8px;
            }

            #populate tr {
                background-color: #fffde7;
            }

            #populate th {
                padding-top: 12px;
                padding-bottom: 12px;
                font-weight: bold;
                text-align: center;
                background-color: #ffe87c;
                color: black;
            }
        </style>
    </head>
    <body>
        <h1>Read Java array and populate it into HTML's table</h1>
        
        <%
            int array[][] = new int [3][3];
            
            array[0][0] = 2500;
            array[0][1] = 2100;
            array[0][2] = 2200;
            array[1][0] = 2000;
            array[1][1] = 1900;
            array[1][2] = 2400;
            array[2][0] = 1800;
            array[2][1] = 2200;
            array[2][2] = 2450;
        %>
        
        <table id="populate">
             <tr>
                <th>Salesman</th>
                <th>Jan</th>
                <th>Feb</th>
                <th>Mac</th>
            </tr>
            <tr>
                <td>Salesman 1</td>
                <td><%= array[0][0] %></td>
                <td><%= array[0][1] %></td>
                <td><%= array[0][2] %></td>
            </tr>
            <tr>
                <td>Salesman 2</td>
                <td><%= array[1][0] %></td>
                <td><%= array[1][1] %></td>
                <td><%= array[1][2] %></td>
            </tr>
            <tr>
                <td>Salesman 3</td>
                <td><%= array[2][0] %></td>
                <td><%= array[2][1] %></td>
                <td><%= array[2][2] %></td>
            </tr>
        </table>
        <footer>
            &copy; 2024-Sakinah Jusoh
        </footer>
    </body>

</html>
