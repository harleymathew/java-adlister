<%--
  Created by IntelliJ IDEA.
  User: home
  Date: 2019-06-21
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Warning page</title>
</head>
<body>

    <c:url var="url" value="login"/>
    <h2>Invalid user name or password.</h2>



    <p>Please enter a user name or password that is authorized to access this
    application. Click here to <a href="${url}">Try Again</a></p>


</body>
</html>
