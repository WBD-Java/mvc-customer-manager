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
    <title>Create Customer</title>
    <style>
        body{
            width: 400px;
            margin: auto;
        }
        .message{
            color: green;
        }

        table{
            width: 85%;
        }

        input[type = text] {
            padding: 5px 10px 5px 10px;
            float: right;
        }

        input[type=submit] {
            margin: auto;
            padding: 5px 10px 5px 10px;
            color: black;
            text-align: center;
            border-radius: 4px;
        }
    </style>
</head>
<body>
<h1>Create new customer</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p><a href="/customers">Back to customer list</a></p>
<form  method="post">
    <fieldset>
        <legend>Customer Information</legend>
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" placeholder="enter name"></td>
            </tr><tr>
            <td>Email:</td>
            <td><input type="text" name="email" placeholder="enter email"></td>
        </tr>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="address" placeholder="enter address"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create Customer"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
