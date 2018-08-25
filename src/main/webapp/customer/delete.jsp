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
    <title>Delete Customer</title>
    <style>
        body {
            width: 400px;
            margin: auto;
        }
        table,th,td {
            width: 80%;
            text-align: left;
            margin: 5px auto;
            padding: 10px 20px 10px 20px;
        }

        input[type = submit] {
            margin: 5px auto;
            padding: 10px 20px 10px 20px;
            border: 1px solid #ccc;
            border-radius: 2px;
            color: black;
        }
    </style>
</head>
<body>
<h1>Delete Customer</h1>
<p><a href="/customers">Back to customer list</a></p>
<form method="post">
    <h2>Are you sure?</h2>
    <fieldset>
        <legend>Customer Information</legend>
        <table>
            <tr>
                <th>Name:</th>
                <td>${requestScope["customer"].getName()}</td>
            </tr>
            <tr>
                <th>Email:</th>
                <td>${requestScope["customer"].getEmail()}</td>
            </tr>
            <tr>
                <th>Address:</th>
                <td>${requestScope["customer"].getAddress()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete Customer"></td>
                <td><a href="/customers">Back to customer list</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
