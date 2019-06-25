<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <form method="get" action="">
        <div class="form-group">
            <label for="title">search ad</label>
            <input type="text" class="form-control" id="title" name="title" aria-describedby="title" placeholder="search">
            <input type="submit" >
        </div>
    </form>
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-12">
            <%
                String query = request.getParameter("title");
                request.setAttribute("search", request.getParameter("title"));
            %>
            <c:if test = "${search == null}">
                <h2><c:out value = "${ad.title}"/></h2>
                <p><c:out value = "${ad.description}"/><p>
                <form method="get" action="/adInfo">
                    <input id="userId" name="userId" type="hidden" placeholder="${ad.userId}" value="${ad.userId}">
                    <input id="adId" name="adId" type="hidden" placeholder="${ad.id}" value="${ad.id}">
                    <a href="/adInfo"><input type="submit" value="view ad"></a>
                </form>
                <hr>
            </c:if>
            <c:if test = "${search.toString() == ''}">
                <h2><c:out value = "${ad.title}"/></h2>
                <p><c:out value = "${ad.description}"/><p>
                <form method="get" action="/adInfo">
                    <input id="userId" name="userId" type="hidden" placeholder="${ad.userId}" value="${ad.userId}">
                    <input id="adId" name="adId" type="hidden" placeholder="${ad.id}" value="${ad.id}">
                    <a href="/adInfo"><input type="submit" value="view ad"></a>
                </form>
                <hr>
            </c:if>
            <c:if test="${search.length() != 0}">
                <c:if test = "${search != null}">
                    <c:if test = "${ad.title.toLowerCase().contains(search.toLowerCase())}">
                        <h2><c:out value = "${ad.title}"/></h2>
                        <p><c:out value = "${ad.description}"/><p>
                        <form method="get" action="/adInfo">
                            <input id="userId" name="userId" type="hidden" placeholder="${ad.userId}" value="${ad.userId}">
                            <input id="adId" name="adId" type="hidden" placeholder="${ad.id}" value="${ad.id}">
                            <a href="/adInfo"><input type="submit" value="view ad"></a>
                        </form>
                        <hr>
                    </c:if>
                </c:if>
            </c:if>
        </div>
    </c:forEach>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</body>
</html>