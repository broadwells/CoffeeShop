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
<div class="container">
<h2 class="user-prompt">Please complete registration form!</h2>
<form name="userInfo" method="POST" action="/adduser" onsubmit="return validateForm()">

    <fieldset>
        <legend>Personal information:</legend>
        <input type="text" name="firstName" placeholder="First Name"><br>
        <input type="text" name="lastName" placeholder="Last Name"><br>
        <input type="text" name="email" placeholder="Email"><br>
        <input type="password" name="password" placeholder="Password"><br>
        <input type="password" name="confirmPassword" placeholder="Confirm Password"><br>
    </fieldset>
    <br>
    <fieldset>
        <legend>Favorite Coffee:</legend>
        <select name="coffeeChoice">
            <option value="null">Select Coffee Type</option>
            <option value="dark">Dark Roast</option>
            <option value="capp">Cappuccino</option>
            <option value="latte">Latte</option>
            <option value="macch">Macchiato</option>
        </select>
    </fieldset>
    <br>
    <fieldset>
        <legend>Coffee Shop Location:</legend>
            <input type="radio" name="shop" value="1">123 Wall St<br>
            <input type="radio" name="shop" value="2">789 Sesame St<br>
            <input type="radio" name="shop" value="3">456 Woodward Ave<br>
    </fieldset>

    <br><br>

    <input class="btn" type="submit" value="Register"/>


</form>
</div>




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
