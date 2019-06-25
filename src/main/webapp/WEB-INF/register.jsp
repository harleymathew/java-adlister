<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>

    <style>

        #registerCon {
            margin-top: 12rem;
        }

    </style>

</head>
<body>

<!-- navbar -->
<jsp:include page="partials/navbar.jsp" />
<%
    request.setAttribute("url", request.getParameter("url"));
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String confirm_password = request.getParameter("confirm_password");
    String registrationFailure = request.getParameter("registrationFailure");
%>
<!-- container -->
<div id="registerCon" class="container">
    <div class="row">
        <div class="mx-auto">
            <h1>Please fill in your information.</h1>
            <hr>
        </div>
    </div>
    <form action="/register" method="post">
        <div class="row">
            <div class="col-md-3 offset-md-3">
                <h2 style="color: red;"><C:out value="${registrationFailure}"></C:out></h2>
                <form action="/login" method="POST">
                    <div class="form-group">
                        <label for="username">Username</label>
                        <input id="username" value="<C:out value="${username}"></C:out>" name="username" class="form-control" type="text">
                    </div>
            </div>
            <div class="col-md-3">
                <div class="form-group">
                    <label for="email">Email</label>
                    <input id="email" value="<C:out value="${email}"></C:out>" name="email" class="form-control" type="email">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="form-group">
                    <label for="password">Password</label>
                    <input id="password" value="<C:out value="${password}"></C:out>" name="password" class="form-control" type="password">
                </div>
                <div class="form-group">
                    <label for="confirm_password">Confirm Password</label>
                    <input id="confirm_password" value="<C:out value="${confirm_password}"></C:out>" name="confirm_password" class="form-control" type="password">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 offset-md-5">
                <input type="submit" style="width: 30%" class="btn btn-primary btn-block">
            </div>
        </div>
    </form>
</div>
</body>
</html>
