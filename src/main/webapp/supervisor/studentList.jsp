<%--
  Created by IntelliJ IDEA.
  User: CONG
  Date: 6/5/2021
<%--
  Created by IntelliJ IDEA.
  User: CONG
  Date: 6/4/2021
  Time: 10:16 AM
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
    <style>
        .user-img {
            width: 80px ;
            height: 80px ;
        }
    </style>
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
    <div class="content">
        <div class="content-title">
            Bảng Danh Sách Các Học Viên
        </div>
        <div class="main-content">
            <div class="student-list">
                <table class="table table-hover">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col">Id Học Viên</th>
                        <th scope="col">Tên Học Sinh</th>
                        <th scope="col">Email Học Sinh</th>
                        <th scope="col">Ngày Sinh</th>
                        <th scope="col">Link Ảnh</th>
                        <th scope="col">Địa Chỉ</th>
                        <th scope="col">Thuộc Lớp</th>
                        <th scope="col">Tình GTrạng</th>
                        <th scope="col">Thao Tác</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${studentList}" var="student">
                        <tr>
                            <td scope="row">${student.id}</td>
                            <td>${student.name}</td>
                            <td>${student.email}</td>
                            <td>${student.dob}</td>
                            <td><img class="user-img" src="${student.url}" alt="not fount"></td>
                            <td>${student.address.name}</td>
                            <td>${student.classOfAcademy.name}</td>
                            <td>${student.status.name}</td>
                            <td><a class="btn btn-outline-danger" href="/Supervisor?action=showAchievementsStudent&id=${student.id}">view achievements</a></td>

                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</html>
>
