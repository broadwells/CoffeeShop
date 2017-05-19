<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: broadwells
  Date: 5/15/17
  Time: 9:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Java Bean Store</title>
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
<body>
<h3>Java Bean Merchandise</h3>

<table class="product">
    <col width="200">
    <col width="100">
    <col width="60">
    <tr>
        <th>Product</th>
        <th>Description</th>
        <th>Price</th>
    </tr>
    <c:forEach items="${item}" var="listItem">
        <tr>
            <td>
                    ${listItem.product}
            </td>
            <td>
                    ${listItem.quantity} <br> ${listItem.description}
            </td>
            <td>
                    ${listItem.price}
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
