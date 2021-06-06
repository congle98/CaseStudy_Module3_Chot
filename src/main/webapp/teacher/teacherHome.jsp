<%--
  Created by IntelliJ IDEA.
  User: CONG
  Date: 6/4/2021
  Time: 9:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>TEACHER HOME</title>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="/style/fontawesome-free-5.15.3-web/css/all.css">
    <link rel="stylesheet" href="/style/base.css">
    <link rel="stylesheet" href="/style/navigationBase.css">
    <link rel="stylesheet" href="/style/contentBase.css">
    <link rel="stylesheet" href="/style/formBase.css">

</head>
<body>

<div class="navigation">
    <div class="container navi-items">
        <div class="logo-block">
            <div class="logo">
                <a href="/Teacher?action=home"><i class="fas fa-graduation-cap"></i>Home</a>
            </div>
        </div>
        <div class="navi-list">
            <div class="navi-item"><a href="/Teacher?action=classManager">Classroom Management</a></div>
            <div class="navi-item user-controller">${teacher.name}<i class="fas fa-user-tie"></i>
                <div class="controller">
                    <div class="control-item"><a href="/Teacher?action=accountManager">Account Management</a></div>
                    <div class="control-item"><a href="/Teacher?action=logOut">LogOut</a></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="content-block">
    <div class="content"></div>
</div>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</html>
