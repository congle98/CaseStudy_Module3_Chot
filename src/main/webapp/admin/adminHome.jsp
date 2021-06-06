
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Admin HOME</title>
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
                <a href="#"><i class="fas fa-graduation-cap"></i>Home</a>
            </div>
        </div>
        <div class="navi-list">
            <div class="navi-item"><a href="/Admin?action=createSupervisor">NEW SUPERVISOR</a></div>
            <div class="navi-item"><a href="/Admin?action=createTeacher">NEW TEACHER</a></div>
            <div class="navi-item"><a href="/Admin?action=createStudent">NEW STUDENT</a></div>
            <div class="navi-item"><a href="/Admin?action=createCourse">NEW COURSE</a></div>
            <div class="navi-item user-controller">ADM :${admin.id}<i class="fas fa-user-tie"></i>
                <div class="controller">
                    <div class="control-item"><a href="/Admin?action=logOut">LogOut</a></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="content-block">
    <div class="content">
        <div class="content-title">
            Danh sách User
        </div>
        <div class="main-content">
            <div class="table-title">
                Bảng giáo vụ
            </div>
                <table class="table table-hover">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col">Id giáo vụ</th>
                        <th scope="col">Tên giáo vụ</th>
                        <th scope="col">Email giáo vụ</th>
                        <th scope="col">Mật khẩu giáo vụ</th>
                        <th scope="col">Địa chỉ</th>
                        <th scope="col">link ảnh</th>
                        <th scope="col">Ngày sinh</th>
                        <th scope="col">Trạng thái</th>
                        <th colspan="2" scope="col">Thao tác</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${supervisorList}" var="s">
                        <tr>
                            <td scope="row">${s.id}</td>
                            <td>${s.name}</td>
                            <td>${s.email}</td>
                            <td>${s.password}</td>
                            <td>${s.address.name}</td>
                            <td>${s.url}</td>
                            <td>${s.dob}</td>
                            <td>${s.status.name}</td>

                            <td>
                                <a class="btn btn-outline-warning" href="/Admin?action=editSupervisor&id=${s.id}">Sửa</a>
                            </td>

                            <td>
                                <a class="btn btn-outline-danger" href="/Admin?action=deleteSupervisor&id=${s.id}">Xoá</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            <div style="margin-top: 70px">
                <div class="table-title">
                    Bảng giáo viên
                </div>
            <table class="table table-hover">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">Id giáo viên</th>
                    <th scope="col">Tên giáo viên</th>
                    <th scope="col">Email giáo viên</th>
                    <th scope="col">Mật khẩu giáo viên</th>
                    <th scope="col">Địa chỉ</th>
                    <th scope="col">link ảnh</th>
                    <th scope="col">Ngày sinh</th>
                    <th scope="col">Trạng thái</th>
                    <th colspan="2" scope="col">Thao tác</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${teacherList}" var="t">
                    <tr>
                        <td scope="row">${t.id}</td>
                        <td>${t.name}</td>
                        <td>${t.email}</td>
                        <td>${t.password}</td>
                        <td>${t.address.name}</td>
                        <td>${t.url}</td>
                        <td>${t.dob}</td>
                        <td>${t.status.name}</td>

                        <td>
                            <a class="btn btn-outline-warning" href="/Admin?action=editTeacher&id=${t.id}">Sửa</a>
                        </td>

                        <td>
                            <a class="btn btn-outline-danger" href="/Admin?action=deleteTeacher&id=${t.id}">Xoá</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>
            <div style="margin-top: 70px">
                <div class="table-title">
                    Bảng học sinh
                </div>
                <table class="table table-hover">
                    <thead class="thead-dark">
                    <tr>
                        <th scope="col">Id học sinh</th>
                        <th scope="col">Tên học sinh</th>
                        <th scope="col">Email học sinh</th>
                        <th scope="col">Mật khẩu </th>
                        <th scope="col">Địa chỉ</th>
                        <th scope="col">link ảnh</th>
                        <th scope="col">Ngày sinh</th>
                        <th scope="col">Trạng thái</th>
                        <th scope="col">Thuộc lớp</th>
                        <th colspan="2" scope="col">Thao tác</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${studentList}" var="s">
                        <tr>
                            <td scope="row">${s.id}</td>
                            <td>${s.name}</td>
                            <td>${s.email}</td>
                            <td>${s.password}</td>
                            <td>${s.address.name}</td>
                            <td>${s.url}</td>
                            <td>${s.dob}</td>
                            <td>${s.status.name}</td>
                            <td>${s.classOfAcademy.name}</td>

                            <td>
                                <a class="btn btn-outline-warning" href="/Admin?action=editStudent&id=${s.id}">Sửa</a>
                            </td>

                            <td>
                                <a class="btn btn-outline-danger" href="/Admin?action=deleteStudent&id=${s.id}">Xoá</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

        </div>
        <!-- <div class="pagi-list-block">
            <div class="pagi-list">
            <div class="pagi-student-list pagi-item">Học sinh</div>
            <div class="pagi-teacher-list pagi-item">Giáo vụ</div>
            <div class="pagi-supervisor-list pagi-item">Giáo viên</div>
            </div>
        </div> -->
    </div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</html>
