<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
        <jsp:include page="/WEB-INF/partials/head.jsp">
            <jsp:param name="title" value="Viewing All The Ads" />
        </jsp:include>
    </head>
    <body>
        <%
            request.setAttribute("adId", request.getParameter("adId"));
            request.setAttribute("userId", request.getParameter("userId"));
        %>

        <jsp:include page="/WEB-INF/css/adInfoCss.jsp" />

        <!-- navbar -->
        <jsp:include page="/WEB-INF/partials/navbar.jsp" />


        <!-- container-1 -->
        <div id="adCon1" class="container">
            <c:forEach var="user" items="${users}">
            <div class="row">
                <div class="col-md-3">
                    <div class="row">
                        <div class="mx-auto">
                            <c:if test="${user.id == userId}">
                                <h3>${user.username}</h3>
                            </c:if>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="row">
                        <div class="mx-auto">
                            <c:if test="${user.id == userId}">
                                <h3>${user.email}</h3>
                            </c:if>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>

            <br><br><br>
            <c:forEach var="ad" items="${ads}">
                <div class="row">
                    <div class="col-md-4">
                        <c:if test="${ad.id == adId}">
                            <h2>Title:<c:out value="${ad.title}" /></h2><br>
                        </c:if>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <c:if test="${ad.id == adId}">
                            <h2>description</h2>
                            <hr>
                            <p>${ad.description}</p>
                        </c:if>
                    </div>
                </div>
            </c:forEach>
        </div>

    </body>
</html>
