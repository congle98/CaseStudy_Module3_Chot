<%--
  Created by IntelliJ IDEA.
  User: CONG
  Date: 6/2/2021
  Time: 4:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: CONG
  Date: 6/2/2021
  Time: 10:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%--
  Created by IntelliJ IDEA.
  User: CONG
  Date: 6/1/2021
  Time: 3:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="/style/fontawesome-free-5.15.3-web/css/all.css">
    <link rel="stylesheet" href="/style/loginBase.css">

    <title>Admin Login!</title>
</head>

<body>
<div class="content">
    <div class="form-login">
        <div class="form-title">
            <p><i class="fas fa-chalkboard-teacher"></i> Admin Login</p>
        </div>
        <div class="form-content">
            <form action="/Admin?action=login" method="post">
                <div class="mb-3">
                    <label for="exampleInputEmail1"  class="form-label">Email</label>
                    <input name = "email" type="email" class="form-control"  id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Password</label>
                    <input name = "password" type="password" class="form-control" id="exampleInputPassword1">
                </div>
                <div class="submit-block" style="margin-top: 30px">
                    <button type="submit" class="btn btn-primary btn-submit">Submit</button>
                </div>

            </form>
        </div>
    </div>
</div>



</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>

</html>
