<%--
  Created by IntelliJ IDEA.
  User: CONG
  Date: 6/2/2021
  Time: 10:25 AM
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
    <link rel="stylesheet" href="/style/base.css">
    <link rel="stylesheet" href="/style/navigationBase.css">
    <link rel="stylesheet" href="/style/contentBase.css">
    <link rel="stylesheet" href="/style/formBase.css">
    <title>Create Teacher!</title>
</head>
<body>
<div class="navigation">
    <div class="container navi-items">
        <div class="logo-block">
            <div class="logo">
                <a href="/Admin?action=home"><i class="fas fa-graduation-cap"></i>Home</a>
            </div>
        </div>
        <div class="navi-list">
            <div class="navi-item user-controller">ADM :${admin.id}<i class="fas fa-user-tie"></i>
                <div class="controller">
                    <div class="control-item"><a href="/Admin?action=logOut">LogOut</a></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="content-block">
    <div class="form-product-1">
        <div class="form-product">
            <form method="post">
                <div class="form-group">
                    <label class="form-label" for="name">Nhập Tên</label>
                    <input name="name" id="name"  class="form-control" type="text" placeholder="tên">
                </div>

                <div class="form-group">
                    <label class="form-label" for="email">Nhập Email</label>
                    <input name="email" id="email"  class="form-control" type="text" placeholder="email">
                </div>

                <div class="form-group">
                    <label class="form-label" for="password">Nhập Mật Khẩu</label>
                    <input name="password" id="password" class="form-control"  type="text" placeholder="password">
                </div>

                <div class="form-group">
                    <label class="form-label" for="url">Nhập Link Ảnh</label>
                    <input name="url" id="url" class="form-control"  type="text" placeholder="link ảnh">
                </div>

                <div class="form-group">
                    <label class="form-label" for="dob">Ngày Sinh</label>
                    <input name="dob" id="dob" class="form-control"  type="date" placeholder="ngày sinh">
                </div>

                <div class="form-group">
                    <label class="form-label" for="address_id">Địa chỉ</label>
                    <select name="address_id" class="form-select" id="address_id">
                        <c:forEach items="${addressList}" var="address">
                            <option value="${address.id}">${address.name}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label class="form-label" for="status_id">Trạng Thái</label>
                    <select name="status_id" class="form-select" id="status_id">
                        <c:forEach items="${statusList}" var="status">
                            <option value="${status.id}">${status.name}</option>
                        </c:forEach>
                    </select>
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

