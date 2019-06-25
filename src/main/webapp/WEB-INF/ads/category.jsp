<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h4>Category</h4>
        <form action="/ads/category" method="post">
            <div class="form-group">
                <label for="personal">Personal</label>
                <input id="personal" name="category" value="1" type="checkbox"><br><br>
                <label for="housing">Housing</label>
                <input id="housing" name="category" value="2" type="checkbox"><br><br>
                <label for="for-sale">For Sale</label>
                <input id="for-sale" name="category" value="3" type="checkbox"><br><br>
                <label for="vehicles">Vehicles</label>
                <input id="vehicles" name="category" value="4" type="checkbox"><br><br>
                <label for="charity">Charity</label>
                <input id="charity" name="category" value="5" type="checkbox"><br><br>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>