<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>

    <style>

        #navbar {
            margin: 0;
            padding: 0;
        }

        #navbar h1 {
            margin-left: 15rem;
        }

        #navbar input {
            padding: 0;
            margin: 0;
            border: 0;
            margin-top: 12.50px;
            background-color: transparent;
        }

    </style>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


</head>

<%
    request.setAttribute("url", request.getRequestURL());
%>

<nav id="navbar" class="navbar navbar-expand-md navbar-light bg-light">
    <div class="container">
        <a style="padding-bottom: 0; padding-top: 1.7rem;" class="navbar-brand" href="/">Adlister</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarColor01">

            <c:if test="${url.toString() == 'http://localhost:8080/'}">
                <div class="mx-auto">
                    <h1>Welcome to the Adlister!</h1>
                </div>
            </c:if>
            <c:if test="${url.toString() == 'http://localhost:8080/WEB-INF/ads/index.jsp'}">
                <div class="mx-auto">
                    <h1>Here Are all the ads!</h1>
                </div>
            </c:if>
            <c:if test="${url.toString() == 'http://localhost:8080/WEB-INF/login.jsp'}">
                <div class="mx-auto">
                    <h1 style="margin-right: -14rem;;">Login now!!!</h1>
                </div>
            </c:if>
            <c:if test="${url.toString() == 'http://localhost:8080/WEB-INF/profile.jsp'}">
                <div class="mx-auto">
                    <h1>Welcome, ${sessionScope.user.username}!</h1>
                </div>
            </c:if>

            <ul class="navbar-nav ml-auto">
                <c:if test="${sessionScope.user.username == null}">
                    <li class="nav-item">
                        <form method="get" action="/login">
                            <input id="url" name="url" type="hidden" value="${url}">
                            <a class="nav-link" href="/login"><input value="login" type="submit" /></a>
                        </form>
                    </li>
                </c:if>
                <c:if test="${sessionScope.user.username == null}">
                    <li class="nav-item">
                        <a class="nav-link" href="/register">Register</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.user.username != null}">
                    <li class="nav-item">
                        <a class="nav-link" href="/profile">profile</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.user.username != null}">
                    <li class="nav-item">
                        <a class="nav-link" href="/ads/create">create Ad</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.user.username != null}">
                    <li class="nav-item">
                        <a class="nav-link" href="/logout">Logout</a>
                    </li>
                </c:if>
                <li class="nav-item">
                    <a class="nav-link" href="/ads">ads</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<body>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</body>

