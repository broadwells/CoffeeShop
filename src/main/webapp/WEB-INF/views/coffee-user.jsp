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
            <td><form:password path="password"></form:password></td>
            <%--<td><input id="password" name="password" type="password" value=""/></td>--%>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Register"/>
            </td>
        </tr>
    </table>
</form:form>


<%--<script>--%>
<%----%>
<%--</script>--%>
</body>
</html>
