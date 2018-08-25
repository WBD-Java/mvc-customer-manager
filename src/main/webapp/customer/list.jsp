<%--
  Created by IntelliJ IDEA.
  User: Thanh Truc
  Date: 8/25/2018
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
    <style>
        body{
            width: 500px;
            margin: auto;
        }
        table{
            width: 100%;
        }
        table, th, td{
            border: 1px solid black;
            border-collapse: collapse;
        }

        th, td {
            padding: 5px;
            text-align: left;
        }
    </style>
</head>
<body>
<h1>Customer</h1>
<p><a href="/customers?action=create">New Customer</a></p>
<table >
    <caption><h2>Customers</h2></caption>
    <thead>
    <tr>
        <td>Name</td>
        <td>Email</td>
        <td>Address</td>
        <td>Edit</td>
        <td>Delete</td> 
    </tr>
    </thead>
    <tbody>
    <c:forEach items='${requestScope["customers"]}' var="customer">
        <tr>
            <td><a href="/customers?action=view&id=${customer.getId()}">${customer.getName()}</a></td>
            <td>${customer.getEmail()}</td>
            <td>${customer.getAddress()}</td>
            <td><a href="/customers?action=edit&id=${customer.getId()}">edit</a></td>
            <td><a href="/customers?action=delete&id=${customer.getId()}">delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
