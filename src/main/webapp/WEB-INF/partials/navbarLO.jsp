<%--
  Created by IntelliJ IDEA.
  User: home
  Date: 2019-06-24
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="url" value="login"/>
<c:url var="url2" value="/index.jsp"/>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <!-- <li><a href="${url}">Login</a></li> -->
            <li><a href="${url2}">>Logout</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
    <!-- /.container-fluid -->
</nav>