<%--
  Created by IntelliJ IDEA.
  User: Thanh Truc
  Date: 8/25/2018
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        body {
            width: 400px;
            margin: auto;
        }

        table , th, td{
            width: 100%;
            margin: 10px auto;
            padding: 10px 20px 10px 20px;
        }
    </style>
    <title>View Customer</title>
</head>
<body>
<h1>Customer Details</h1>
<p><a href="/customers">Back to customer list</a></p>
<fieldset>
    <table>
        <tr>
            <th>Name:</th>
            <td>${requestScope["customer"].getName()}</td>
        </tr><tr>
        <th>Email:</th>
        <td>${requestScope["customer"].getEmail()}</td>
    </tr>
        <tr>
            <th>Address:</th>
            <td>${requestScope["customer"].getAddress()}</td>
        </tr>
    </table>
</fieldset>

</body>
</html>
