<%-- 
    Document   : Exercise2
    Created on : 30 Mar 2024, 8:27:59 pm
    Author     : Sakinah Jusoh
--%>

<%@page import="java.io.DataInputStream" %>
<%@page import="java.io.FileInputStream" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sales</title>
        <style>
            table{
                width: 100%;
                border-collapse: collapse;
                border-width: 2px;
                border-color: #696969;
                border-style: solid;
            }
            td{
                border-width: 2px;
                text-align: center;
                border-color: #000000;
                border-style: solid;
                padding: 3px;
            }
        </style>
    </head>
    <body>
        <h1>Read Sales and Calculate Discount</h1>

        <%

        String filePath = "C:/Users/Admin/OneDrive/Documents/umt/SEM IV/web development 2/S65380 Lab 1";

        // List to hold the data from the CSV file
            ArrayList<String[]> csvData = new ArrayList<>();

            // Read the CSV file and populate the list
            try (BufferedReader br = new BufferedReader(new FileReader(filePath))) { // Use try-with-resources
                String line;
                while ((line = br.readLine()) != null) {
                    String[] parts = line.split(",");
                    csvData.add(parts);
                }
            } catch (IOException e) {
                out.println("Error reading CSV file: " + e.getMessage());
            }
        %>

    <table>
            <thead>
                <tr>
                    <th>Customer</th>
                    <th>Cust. Type</th>
                    <th>Purchase</th>
                    <th>Discount</th>
                </tr>
            </thead>
            <tbody>
                <% for (int i = 0; i < csvData.size(); i++) { %>
                    <tr>
                        <%
                            String[] rowData = csvData.get(i);
                            if (rowData.length >= 3) {
                                String customer = rowData[0];
                                String customerType = rowData[1];
                                double purchase = Double.parseDouble(rowData[2]); // Convert to double for accurate calculations
                                double discount = 0.0;
                                if (customerType.equalsIgnoreCase("Cash")) {
                                    discount = purchase * 0.1; // 10% discount for cash customers
                                }
                        %>
                    
                    <td><%= customer %></td>
                        <td><%= customerType %></td>
                        <td><%= String.format("%.2f", purchase) %></td>  
                        <td><%= String.format("%.2f", discount) %></td>

                        <% } // end if
                            else {
                               out.println("<td colspan='4'>Invalid data in row " + (i+1) + "</td>");
                            }
                        %>
                    </tr>
                <% } %>
            </tbody>
        </table>
    </body>
</html>
