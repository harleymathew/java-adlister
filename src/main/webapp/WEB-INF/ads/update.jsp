<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Update Your Ad" />
    </jsp:include>
</head>
<body>
<% request.setAttribute("adId", request.getParameter("adId"));%>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<%
    String title = request.getParameter("title");
    String description = request.getParameter("description");
    String updateAdFailure = request.getParameter("updateAdFailure");
    Long adId = Long.parseLong(request.getParameter("adId"));

%>
<div class="container">
    <h1>Update Your Ad, ${sessionScope.user.username}</h1>

    <%--adId = ${adId}--%>
    <c:forEach var="ad" items="${ads}">
        <%--ad.id = ${ad.id}--%>
        <c:if test="${ad.id == adId}">
            <form action="/ads/update" method="post">
                <h2 style="color: red;"><c:out value="${updateAdFailure}"></c:out></h2>

                <div class="form-group">
                    <input id="userId" name="userId" class="form-control" type="hidden" value="<c:out value="${ad.userId}"/>">
                </div>
                <div class="form-group">
                    <input id="adId" name="adId" class="form-control" type="hidden" value="<c:out value="${ad.id}"/>">
                </div>
                <div class="form-group">
                    <label for="title">Title</label>
                    <input id="title" name="title" class="form-control" type="text" value="<c:out value="${ad.title}"/>">
                </div>
                <div class="form-group">
                    <label for="description">Description</label>
                    <input id="description" name="description" class="form-control" type="text" value="<c:out value="${ad.description}"/>">
                </div>
                <input type="submit" class="btn btn-block btn-primary">
            </form>
        </c:if>
    </c:forEach>
</div>
</body>
</html>
