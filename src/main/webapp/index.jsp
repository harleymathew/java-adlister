<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<jsp:include page="/WEB-INF/css/indexCss.jsp" />

<!-- navbar -->
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<!-- container-1 -->
<div id="container1" class="container">
    <div class="row">
        <div class="col-sm-6">
            <h2>How to use the adlister</h2>
            <hr>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <div class="card mb-3" style="max-width: 20rem;">
                <div class="card-header">Step 1: Register</div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="card mb-3" style="max-width: 20rem;">
                <div class="card-header">Step 2: Login</div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="card mb-3" style="max-width: 20rem;">
                <div class="card-header">Step 3: Create an ad</div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="card mb-3" style="max-width: 20rem;">
                <div class="card-header">Step 4: Search Ads</div>
            </div>
        </div>
    </div>
</div>



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
