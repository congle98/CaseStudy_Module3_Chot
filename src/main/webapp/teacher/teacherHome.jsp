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
    <link rel="stylesheet" href="/style/homeBase.css">

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
<div class="content-home-block">
    <div class="carousel-block">
        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="/style/img/ca1.jpg" class="d-block w-100 carousel-img" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="/style/img/ca2.jpg" class="d-block w-100 carousel-img" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="/style/img/ca3.jpg" class="d-block w-100 carousel-img" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <div class="introduce-block">
        <div class="introduce-title">
            <h2>Trung tâm đào tạo lập trình viên hàng đầu việt nam</h2>
            <h4>Với hàng chục khoá học với các ngôn ngữ lập trình khác nhau khác, luôn bắt kịp xu hướng công nghệ</h4>
        </div>
        <div class="course-list">
            <div class="card" >
                <img src="/style/img/javaCard.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Khoá học java</h5>
                    <p class="card-text">Java là một nền tảng phát triển các ứng dụng phần mềm có vị trí rất lớn trong những năm cuối thế kỉ 20, đầu thế kỉ 21...</p>
                    <a href="https://vi.wikipedia.org/wiki/Java_(ng%C3%B4n_ng%E1%BB%AF_l%E1%BA%ADp_tr%C3%ACnh)" class="btn btn-primary card-btn">Tìm hiểu thêm</a>
                </div>
            </div>
            <div class="card" >
                <img src="/style/img/phpCard.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Khoá học php</h5>
                    <p class="card-text">PHP: Hypertext Preprocessor, thường được viết tắt thành PHP là một ngôn ngữ lập trình kịch bản được dùng viết các ứng dụng cho máy chủ..</p>
                    <a href="https://vi.wikipedia.org/wiki/PHP" class="btn btn-primary card-btn">Tìm hiểu thêm</a>
                </div>
            </div>
            <div class="card" >
                <img src="/style/img/pythonCard.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Khoá học python</h5>
                    <p class="card-text">Python là một ngôn ngữ lập trình bậc cao cho các mục đích lập trình đa năng do Guido van Rossum tạo ra và lần đầu ra mắt vào năm 1991..</p>
                    <a href="https://vi.wikipedia.org/wiki/Python_(ng%C3%B4n_ng%E1%BB%AF_l%E1%BA%ADp_tr%C3%ACnh)" class="btn btn-primary card-btn">Tìm hiểu thêm</a>
                </div>
            </div>
            <div class="card" >
                <img src="/style/img/dotnetCard.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Khoá học .net</h5>
                    <p class="card-text">NET Framework là một nền tảng lập trình và cũng là một nền tảng thực thi ứng dụng chủ yếu trên hệ điều hành Microsoft Windows..</p>
                    <a href="https://vi.wikipedia.org/wiki/ASP.NET" class="btn btn-primary card-btn">Tìm hiểu thêm</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</html>
