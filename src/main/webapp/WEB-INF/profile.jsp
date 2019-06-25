<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>

    <style>

        #profileCon1 {
            margin-top: 7rem;
        }

    </style>

</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div id="profileCon1" class="container">

    <div class="row">
        <div class="col-md-6">
            <h1>These are all your ads!</h1>
        </div>
        <div class="col-md-6">
            <form action="/profile/configurations">
                <input type="submit" value="Configure Profile" />
            </form>
        </div>
    </div><br><br><br>

    <c:forEach var="ad" items="${ads}">
        <div class="row">
            <c:if test="${ad.userId == sessionScope.user.id}">
                <div class="col-md-6">
                    <h2>${ad.title}</h2>
                    <p>${ad.description}</p>
                    <form method="get" action="/ads/update">
                        <input name="adId" id="adId" type="hidden" placeholder="${ad.id}" value="${ad.id}">
                        <a href="/ads/update" ><input type="submit" value="edit"></a>
                    </form>
                    <form method="get" action="/ads/delete">
                        <input name="idAd" id="idAd" type="hidden" placeholder="${ad.id}" value="${ad.id}">
                        <a href="/ads/delete" ><input type="submit" value="delete"></a>
                    </form>
                    <hr>
                </div>
            </c:if>
        </div>
    </c:forEach>
</div>

</body>
</html>
