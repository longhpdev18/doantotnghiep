<%@ page pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html lang="en">

<head>

    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin</title>
    <!--CSS-->
    <link rel="stylesheet" href="./../assets/css/admin/index.css">
    <link rel="stylesheet" href="./../assets/css/admin/listProduct.css">
    <link rel="stylesheet" href="./../assets/css/admin/product.css">
    <!--CSS-->
    <link rel="stylesheet" href="./../assets/css/admin/2.css">

    <!-- BOXICON -->
    <script src="https://unpkg.com/boxicons@2.0.9/dist/boxicons.js"></script>
    <!-- FONT ANWESOME -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />
    <!--LINE AWSOME-->
    <link rel="stylesheet"
        href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>

<body>
    <div class="container">
        <div class="navigation active">
            <ul class="navigation-wp">
                <div class="nav-header">
                    <img src="./../assets/images/logo_white.png" alt="" class="header-brand">
                </div>
                <li>
                    <a href="./index" class="active">
                        <span class="icon">
                            <ion-icon name="home"></ion-icon>
                        </span>
                        <span class="title">Trang chủ</span>
                    </a>
                </li>
                <li>
                    <a href="./add">
                        <span class="icon">
                            <ion-icon name="add-circle-outline"></ion-icon>
                        </span>
                        <span class="title">Thêm sản phẩm</span>
                    </a>
                </li>
                <li>
                    <a href="./show">
                        <span class="icon">
                            <ion-icon name="list"></ion-icon>
                        </span>
                        <span class="title">Danh sách sản phẩm</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon">
                            <ion-icon name="chatbubbles"></ion-icon>
                        </span>
                        <span class="title">Tin nhắn</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon">
                            <ion-icon name="settings"></ion-icon>
                        </span>
                        <span class="title">Cài đặt</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon">
                            <ion-icon name="lock"></ion-icon>
                        </span>
                        <span class="title">Quên mật khẩu</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon">
                            <ion-icon name="log-in"></ion-icon>
                        </span>
                        <span class="title">Thoát</span>
                    </a>
                </li>
            </ul>
        </div>
        <!-- main -->
        <div class="main">
            <div class="topbar">
                <div class="topbar-left">
                    <div class="btn-menu">
                        <i class="fas fa-bars"></i>
                    </div>
                    <div class="topbar-brand">
                        <img src="./../assets/images/logo.png" alt="" class="topbar-brand-image">
                    </div>
                </div>
                <!-- search-->
                <div class="search">

                    <input type="text" placeholder="Tìm kiếm" class="search-input">
                    <button class="search-button">
                        <ion-icon name="search"></ion-icon>
                    </button>

                </div>
                <!-- userImg -->
                <div class="action">
                    <div class="user" onclick="menuToggle();">
                        <!--profile-->
                        <img src="https://scontent.fdad1-1.fna.fbcdn.net/v/t1.6435-9/127222247_1086079278516962_38767906172782592_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=FcF-DqXSBUYAX-u-j1Z&tn=8Xk759-Pc91XDR0g&_nc_ht=scontent.fdad1-1.fna&oh=39f0b948a1be6268de1169086e3e2d21&oe=6192E86C"
                            alt="" width="50px">
                    </div>
                    <div class="menu">
                        <h3>Tân Đặng <br><span>Page Admin</span></h3>
                        <ul>
                            <li><i class="far fa-user-circle"></i><a href="">My Profile</a></li>
                            <li><i class="far fa-edit"></i><a href="">Edit Profile</a></li>
                            <li><i class="far fa-envelope"></i><a href="">Inbox</a></li>
                            <li><i class="far fa-question-circle"></i><a href="">Help</a></li>
                            <li><i class="fas fa-sign-out-alt"></i><a href="">Logout</a></li>
                        </ul>
                    </div>
                </div>
                <!-- <div class="action">
                    <div class="profile" onclick="menuToggle();">
                        <img src="https://scontent.fdad1-1.fna.fbcdn.net/v/t1.6435-9/127222247_1086079278516962_38767906172782592_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=FcF-DqXSBUYAX-u-j1Z&tn=8Xk759-Pc91XDR0g&_nc_ht=scontent.fdad1-1.fna&oh=39f0b948a1be6268de1169086e3e2d21&oe=6192E86C" alt="">
                    </div>
                    <div class="menu">
                        <h3>Someone Famous <br><span>Website Designer</span></h3>
                        <ul>
                            <li><i class="far fa-user-circle"></i><a href="">My Profile</a></li>
                            <li><i class="far fa-edit"></i><a href="">Edit Profile</a></li>
                            <li><i class="far fa-envelope"></i><a href="">Inbox</a></li>
                            <li><i class="far fa-question-circle"></i><a href="">Help</a></li>
                            <li><i class="fas fa-sign-out-alt"></i><a href="">Logout</a></li>
                        </ul>
                    </div>
                </div> -->
            </div>

            <!--order details cards-->
           <jsp:include page="${page}"></jsp:include>
        </div>
    </div>
</body>
<!--Link icon-->
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
<script src="../assets/js/admin/hovered.js"></script>


</html>