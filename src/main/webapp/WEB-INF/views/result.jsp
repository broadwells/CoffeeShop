<%--
  Created by IntelliJ IDEA.
  User: broadwells
  Date: 5/8/17
  Time: 3:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Registered</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/css?family=Domine" rel="stylesheet">
    <link href="../resources/style.css" rel="stylesheet">
</head>
<body>
<header role="banner">
    <img class="center" src="../resources/logo.png" width="200" alt="Logo main logo">
    <nav id="navbar-primary" class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-primary-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
        </div><!-- /.container-fluid -->
    </nav>
</header><!-- header role="banner" -->

<h1 class="result">Welcome to the club, ${user.firstName}!</h1>
<p class="user-info">
    Your favorite coffee choice is ${user.coffeeType}
    <br>Java Bean shop location:
    <br> ${user.shopAddress}
    <br> Detroit, MI 48226
</p>



<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous">
</script>

</body>
</html>
