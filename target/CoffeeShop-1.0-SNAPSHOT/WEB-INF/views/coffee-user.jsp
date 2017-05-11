<%--
  Created by IntelliJ IDEA.
  User: broadwells
  Date: 5/8/17
  Time: 3:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri ="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Registration</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/css?family=Gentium+Book+Basic" rel="stylesheet">
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

<h2 class="user-prompt">Please complete registration form!</h2>
<form:form name="userInfo" method="POST" action="/adduser" onsubmit="return validateForm()">
    <div class="container">
        <div class="row">

            <div class="col-md-4">
                <h2>Your Information</h2>
                    <form:label path="firstName">First Name:</form:label>
                    <form:input path="firstName" /><br>
                    <form:label path="lastName">Last Name:</form:label>
                    <form:input path="lastName"/><br>
                    <form:label path="email">Email:</form:label>
                    <form:input path="email"/><br>
                    <form:label path="password">Password:</form:label>
                    <form:password path="password"></form:password><br>    <!--Masking Password as user types-->
                    <form:label path="confirmPassword">Confirm Password:</form:label>
                    <form:password path="confirmPassword"></form:password><br>
            </div>
            <div class="col-md-6">
                <h2>Your Favorite Coffee</h2>
                    <form:select name="coffee" path="coffeeChoice">
                        <form:option value="dark">Dark Roast</form:option>
                        <form:option value="capp">Cappuccino</form:option>
                        <form:option value="latte">Latte</form:option>
                        <form:option value="macch">Macchiato</form:option>
                    </form:select>
                    <br><br>
            </div>
            <div class="col-md-6">
                <h2>Coffee Shop Location</h2>
                    <form:select name="locate" path="shopLocate">
                        <form:option value="wallSt">123 Wall St</form:option>
                        <form:option value="sesameSt">789 Sesame St</form:option>
                        <form:option value="woodAve">456 Woodward Ave</form:option>
                    </form:select>
            </div>

        </div>
    </div>
    <br><br>

    <input class="btn" type="submit" value="Register" />


</form:form>




<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous">
</script>
<script>
    function validateForm() {
        var fName = document.forms["userInfo"]["firstName"].value;
        var lName = document.forms["userInfo"]["lastName"].value;
        var userEmail = document.forms["userInfo"]["email"].value;
        var passWord = document.forms["userInfo"]["password"].value;
        var confirmPass = document.forms["userInfo"]["confirmPassword"].value;

        if (fName === "" || lName === "" || userEmail === "" || passWord === "" || confirmPass === "") {
            alert("You must make sure all fields are completed!");
            return false;
        }
        if (!userEmail.includes("@")){
            alert("Please enter a valid email!");
            return false;
        }
        if (passWord !== confirmPass) {
            alert("Passwords do not match!");
            return false;
        }
    }
</script>
</body>
</html>
