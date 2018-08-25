<%--
  Created by IntelliJ IDEA.
  User: Thanh Truc
  Date: 8/25/2018
  Time: 2:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Customer</title>
    <style>
        body{
            width: 400px;
            margin: auto;
        }
        .message{
            color: blue;
        }
        table th, td {
            width: 80%;
        }

        input[type = text] {
            margin: 5px 10px 5px 10px;
            padding: 10px 20px 10px 20px;
            border-radius: 2px;
            float: right;
        }

        input[type = submit] {
            margin: 5px 10px 5px 10px;
            padding: 10px 20px 10px 20px;
            border-radius: 2px;
            text-align: center;
            color: black;
            border-radius: 4px;
        }
    </style>
</head>
<body>
<h1>Edit Customer</h1>

<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>

<p><a href="/customers">Back list Customer</a></p>

<form method="post">
    <fieldset>
        <legend>Customer Information</legend>
        <table>
            <tr>
                <th>Name:</th>
                <td><input type="text" name="name" value="${requestScope["customer"].getName()}"></td>
            </tr>
            <tr>
                <th>Name:</th>
                <td><input type="text" name="email" value="${requestScope["customer"].getEmail()}"></td>
            </tr>
            <tr>
                <th>Name:</th>
                <td><input type="text" name="address" value="${requestScope["customer"].getAddress()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update Customer"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
