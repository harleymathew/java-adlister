<%--
  Created by IntelliJ IDEA.
  User: fer
  Date: 2019-06-17
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/register" method="post">
    <label for="username">Username</label>
    <input type="text" id="username" name="username">
    <label for="email">Email</label>
    <input type="text" id="email" name="email">
    <label for="password">Password</label>
    <input type="text" id="password" name="password">
    <button>Register</button>
</form>

</body>
</html>
