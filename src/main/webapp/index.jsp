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
            <h2>Steps to creating an ad!</h2>
            <hr>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <div class="card mb-3" style="max-width: 20rem;">
                <div class="card-header">1: Register</div>
                <div class="card-body">
                    <h4 class="card-title">Registering is easy!!</h4>
                    <p class="card-text">
                        Just give us your social security and credit card numbers! Don't worry,
                        our site is the most secure of them all!
                    </p>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="card mb-3" style="max-width: 20rem;">
                <div class="card-header">2: Login</div>
                <div class="card-body">
                    <h4 class="card-title">Login and Start advertising your products/services to others</h4>
                    <p class="card-text">
                        Once logged in, you'll probably already be in massive debt without you even knowing!
                        So better start advertising your stuff in hopes to make money in some "Legal" way.
                    </p>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="card mb-3" style="max-width: 20rem;">
                <div class="card-header">3: Create an ad</div>
                <div class="card-body">
                    <h4 class="card-title">Display an ad to random Strangers!!</h4>
                    <p class="card-text">
                        All kinds of random strangers on this site are looking for random things!!!
                        So start you random adventure by creating as many ads a possible until our sever just shuts down.
                    </p>
                </div>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="card mb-3" style="max-width: 20rem;">
                <div class="card-header">4 Search Ads</div>
                <div class="card-body">
                    <h4 class="card-title">Random People you dont know post ads here too!</h4>
                    <p class="card-text">
                        Check what the others are posting!
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- buttons -->
<div id="container2" class="container">
    <div class="row">
        <div class="col-sm-6">
            <div class="row">
                <div class="mx-auto">
                    <h2>Information about:</h2>
                </div>
            </div>
            <hr>
        </div>
        <div class="col-sm-6">
            <div class="row">
                <div class="mx-auto">
                    <h2 id="about">ads</h2>
                </div>
            </div>
            <hr>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6 links">
            <a href="#para1btn" id="para1btn" class="active"><h2>Ads</h2></a><br>
            <a href="#para2btn" id="para2btn"><h2>Login</h2></a><br>
            <a href="#para3btn" id="para3btn"><h2>Registering</h2></a><br>
            <a href="#para4btn" id="para4btn"><h2>Personal Profile</h2></a>
        </div>
        <div class="col-sm-6 middleBorder">
            <p id="para1" class="">
                I dont know if people are even going to read this. You're probably just sitting class bored
                and have nothing better to do with your time but read on.
            </p>
            <p id="para2" class="hidden" >
                Feel free to login after registering for an account. The link to login can be found in the
                top right-hand corner of the page.
            </p>
            <p id="para3" class="hidden" >
                Registering is pretty self-explanatory The link to register can be found in the top right
                hand corner of the page. You must register before posting anything.
            </p>
            <p id="para4" class="hidden" >
                Your personal profile will include services/products that you have posted on our site.
            </p>
        </div>
    </div>
</div>



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<script>



    document.getElementById('para1btn').addEventListener('click', para1);
    document.getElementById('para2btn').addEventListener('click', para2);
    document.getElementById('para3btn').addEventListener('click', para3);
    document.getElementById('para4btn').addEventListener('click', para4);


    function para1(){

        document.getElementById('para2').className = 'hidden';
        document.getElementById('para3').className = 'hidden';
        document.getElementById('para4').className = 'hidden';
        document.getElementById('para1').classList.remove("hidden");
        document.getElementById('about').innerHTML = 'ads'

    }

    function para2(){

        document.getElementById('para1').className = 'hidden';
        document.getElementById('para3').className = 'hidden';
        document.getElementById('para4').className = 'hidden';
        document.getElementById('para2').classList.remove("hidden");
        document.getElementById('about').innerHTML = 'login'

    }

    function para3(){

        document.getElementById('para2').className = 'hidden';
        document.getElementById('para1').className = 'hidden';
        document.getElementById('para4').className = 'hidden';
        document.getElementById('para3').classList.remove("hidden");
        document.getElementById('about').innerHTML = 'registering'

    }

    function para4(){

        document.getElementById('para2').className = 'hidden';
        document.getElementById('para3').className = 'hidden';
        document.getElementById('para1').className = 'hidden';
        document.getElementById('para4').classList.remove("hidden");
        document.getElementById('about').innerHTML = 'personal profile'
    }

</script>

</body>
</html>
