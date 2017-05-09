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

    <link href="https://fonts.googleapis.com/css?family=Gentium+Book+Basic" rel="stylesheet">
    <style>
        h2 {
            font-family: 'Gentium Book Basic', serif;
        }
        #btn {
            background-color: aquamarine;
        }
    </style>
</head>
<body>
<h2>Please complete registration form!</h2>

<form:form method="POST" action="/AddUser">
    <table>
        <tr>
            <td><form:label path="firstName">First Name</form:label></td>
            <td><form:input path="firstName"/></td>
        </tr>
        <tr>
            <td><form:label path="lastName">Last Name</form:label></td>
            <td><form:input path="lastName"/></td>
        </tr>
        <tr>
            <td><form:label path="email">Email</form:label></td>
            <td><form:input path="email"/></td>
        </tr>
        <tr>
            <td><form:label path="password">Password</form:label></td>
            <td><form:password path="password"></form:password></td>    <!--Masking Password as user types-->
        </tr>
        <tr>
            <td colspan="2">
                <input id="btn" type="submit" value="Register"/>
            </td>
        </tr>
    </table>
</form:form>

</body>
</html>
