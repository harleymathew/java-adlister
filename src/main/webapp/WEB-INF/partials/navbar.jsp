<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:url var="url" value="/login"/>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="${url}">Login</a></li>
           <!-- <li><a href="${url2}">href="/logout">Logout</a></li> -->
        </ul>
    </div><!-- /.navbar-collapse -->
          <!-- /.container-fluid -->
</nav>
