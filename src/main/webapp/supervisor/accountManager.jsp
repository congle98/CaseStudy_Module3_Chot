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
        <a href="/Supervisor?action=home"><i class="fas fa-graduation-cap"></i>Home</a>
      </div>
    </div>
    <div class="navi-list">
      <div class="navi-item"><a href="/Supervisor?action=showStudents">Student Management</a></div>
      <div class="navi-item user-controller">${supervisor.name}<i class="fas fa-user-tie"></i>
        <div class="controller">
          <div class="control-item"><a href="/Supervisor?action=accountManager">Account Management</a></div>
          <div class="control-item"><a href="/Supervisor?action=logOut">LogOut</a></div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="content-block">
  <div class="form-product-1">
    <div class="form-product">
      <form method="post" >
        <div class="form-group">
          <label class="form-label" for="id">Id giáo vụ</label>
          <input class="form-control" name="id" id="id" readonly value="${supervisor.id}">
        </div>
        <div class="form-group">
          <label class="form-label" for="name">Tên giáo vụ</label>
          <input class="form-control" name="name" id="name" value="${supervisor.name}"></br>
        </div>
        <div class="form-group">
          <label class="form-label" for="email">Email</label>
          <input class="form-control" name="email" id="email" value="${supervisor.email}"></br>
        </div>
        <div class="form-group">
          <label class="form-label" for="password">Mật Khẩu</label>
          <input class="form-control" name="password" id="password" value="${supervisor.password}"></br>
        </div>
        <div class="form-group">
          <label class="form-label" for="url">Ảnh</label>
          <input class="form-control" name="url" id="url" value="${supervisor.url}"></br>
        </div>
        <div class="form-group">
          <label class="form-label" for="dob">Ngày sinh</label>
          <input class="form-control" name="dob" id="dob"  type="date" value="${supervisor.dob}"></br>
        </div>
        <div class="form-group">
          <label class="form-label" for="address_id">Địa chỉ</label>
          <select class="form-select" name="address_id"  id="address_id"  >
            <c:forEach items="${addressList}" var="address" >
              <option value="${address.id}"
                      <c:if test="${address.id == supervisor.address.id}">selected="true"</c:if>>${address.name}
              </option>
            </c:forEach>
          </select></br>
        </div>
        <div class="form-group">
          <div class="bnt-submit">
            <button type="submit" class="btn btn-outline-danger">Submit</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</html>

