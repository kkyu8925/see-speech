<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Speech</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slick.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/fontawesome-free-5.15.3-web/css/all.min.css">

    <style>
        #topic-content-style {
            color: #ffffff;
            font-weight: 700;
            font-size: 20px;
        }

        .apiButton {
            margin-bottom: 0px;
        }

        .apiButton:hover {
            background-color: #f9f9ff;
        }
    </style>
</head>

<body>
<!-- ? Preloader Start -->
<div id="preloader-active">
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-inner position-relative">
            <div class="preloader-circle"></div>
            <div class="preloader-img pere-text">
                <img src="${pageContext.request.contextPath}/resources/img/logo/loder.png" alt="">
            </div>
        </div>
    </div>
</div>
<!-- Preloader end -->

<header>
    <!-- Header Start -->
    <div class="header-area header-transparent">
        <div class="main-header ">
            <div class="header-bottom  header-sticky">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <!-- Logo -->
                        <div class="col-xl-2 col-lg-2">
                            <div class="logo">
                                <a href="index.do"><img
                                        src="${pageContext.request.contextPath}/resources/img/logo/logo.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-xl-10 col-lg-10">
                            <div class="menu-wrapper d-flex align-items-center justify-content-end">
                                <!-- Main-menu -->
                                <div class="main-menu d-none d-lg-block">
                                    <nav>
                                        <ul id="navigation">
                                            <li class="active"><a href="index.do">Home</a></li>
                                            <li class="active"><a href="user.do">User</a></li>
                                            <!-- Button -->
                                            <li class="button-header"><a href="login.do" class="btn btn3">Log in</a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <!-- Mobile Menu -->
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->
</header>

<main>
    <!--? slider Area Start-->
    <section class="slider-area slider-area2">
        <div class="slider-active">
            <!-- Single Slider -->
            <div class="single-slider slider-height2">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-8 col-lg-11 col-md-12">
                            <div class="hero__caption hero__caption2">
                                <h1 data-animation="bounceIn" data-delay="0.2s">See & Speech</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 단어 학습하기 start -->
    <!-- Courses area start -->
    <div class="courses-area section-padding40 fix">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-7 col-lg-8">
                    <div class="section-tittle text-center mb-55">
                        <h2>단어 학습하기</h2>
                    </div>
                </div>
            </div>
            <div class="courses-actives">
                <!-- Single -->
                <div class="properties pb-20">
                    <div class="properties__card">
                        <div class="properties__img overlay1">
                            <img src="${pageContext.request.contextPath}/resources/img/gallery/featured1.png" alt="">
                        </div>
                        <div class="properties__caption">
                            <h3>동물</h3>
                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                <div class="restaurant-name">
                                    <div class="rating">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half"></i>
                                    </div>
                                </div>

                            </div>

                            <a href="listPage.do" class="border-btn border-btn2 cursor_pointer">학습하기</a>
                        </div>
                    </div>
                </div>
                <!-- Single -->
                <!-- Single -->
                <div class="properties pb-20">
                    <div class="properties__card">
                        <div class="properties__img overlay1">
                            <img src="${pageContext.request.contextPath}/resources/img/gallery/featured2.png" alt="">
                        </div>
                        <div class="properties__caption">
                            <h3>동물</h3>
                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                <div class="restaurant-name">
                                    <div class="rating">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half"></i>
                                    </div>
                                </div>

                            </div>

                            <a href="listPage.do" class="border-btn border-btn2 cursor_pointer">학습하기</a>
                        </div>
                    </div>
                </div>
                <!-- Single -->
                <!-- Single -->
                <div class="properties pb-20">
                    <div class="properties__card">
                        <div class="properties__img overlay1">
                            <img src="${pageContext.request.contextPath}/resources/img/gallery/featured3.png" alt="">
                        </div>
                        <div class="properties__caption">
                            <h3>동물</h3>
                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                <div class="restaurant-name">
                                    <div class="rating">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half"></i>
                                    </div>
                                </div>

                            </div>

                            <a href="listPage.do" class="border-btn border-btn2 cursor_pointer">학습하기</a>
                        </div>
                    </div>
                </div>
                <!-- Single -->
                <!-- Single -->
                <div class="properties pb-20">
                    <div class="properties__card">
                        <div class="properties__img overlay1">
                            <img src="${pageContext.request.contextPath}/resources/img/gallery/featured4.png" alt="">
                        </div>
                        <div class="properties__caption">
                            <h3>동물</h3>
                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                <div class="restaurant-name">
                                    <div class="rating">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half"></i>
                                    </div>
                                </div>

                            </div>

                            <a href="listPage.do" class="border-btn border-btn2 cursor_pointer">학습하기</a>
                        </div>
                    </div>
                </div>
                <!-- Single -->
            </div>
        </div>
    </div>
    <!-- Courses area End -->
    <!-- 단어 학습하기 end-->

    <!-- 문장 학습하기 start-->
    <!-- Courses area start -->
    <div class="courses-area section-padding40 fix" style="padding-top:0px;">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-7 col-lg-8">
                    <div class="section-tittle text-center mb-55">
                        <h2>문장 학습하기</h2>
                    </div>
                </div>
            </div>
            <div class="courses-actives">
                <!-- Single -->
                <div class="properties pb-20">
                    <div class="properties__card">
                        <div class="properties__img overlay1">
                            <img src="${pageContext.request.contextPath}/resources/img/gallery/featured1.png" alt="">
                        </div>
                        <div class="properties__caption">
                            <h3>동물</h3>
                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                <div class="restaurant-name">
                                    <div class="rating">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half"></i>
                                    </div>
                                </div>

                            </div>

                            <a href="listPage.do" class="border-btn border-btn2 cursor_pointer">학습하기</a>
                        </div>
                    </div>
                </div>
                <!-- Single -->
                <!-- Single -->
                <div class="properties pb-20">
                    <div class="properties__card">
                        <div class="properties__img overlay1">
                            <img src="${pageContext.request.contextPath}/resources/img/gallery/featured2.png" alt="">
                        </div>
                        <div class="properties__caption">
                            <h3>동물</h3>
                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                <div class="restaurant-name">
                                    <div class="rating">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half"></i>
                                    </div>
                                </div>

                            </div>

                            <a href="listPage.do" class="border-btn border-btn2 cursor_pointer">학습하기</a>
                        </div>
                    </div>
                </div>
                <!-- Single -->
                <!-- Single -->
                <div class="properties pb-20">
                    <div class="properties__card">
                        <div class="properties__img overlay1">
                            <img src="${pageContext.request.contextPath}/resources/img/gallery/featured3.png" alt="">
                        </div>
                        <div class="properties__caption">
                            <h3>동물</h3>
                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                <div class="restaurant-name">
                                    <div class="rating">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half"></i>
                                    </div>
                                </div>

                            </div>

                            <a href="listPage.do" class="border-btn border-btn2 cursor_pointer">학습하기</a>
                        </div>
                    </div>
                </div>
                <!-- Single -->
                <!-- Single -->
                <div class="properties pb-20">
                    <div class="properties__card">
                        <div class="properties__img overlay1">
                            <img src="${pageContext.request.contextPath}/resources/img/gallery/featured4.png" alt="">
                        </div>
                        <div class="properties__caption">
                            <h3>동물</h3>
                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                <div class="restaurant-name">
                                    <div class="rating">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half"></i>
                                    </div>
                                </div>

                            </div>

                            <a href="listPage.do" class="border-btn border-btn2 cursor_pointer">학습하기</a>
                        </div>
                    </div>
                </div>
                <!-- Single -->
            </div>
        </div>
    </div>
    <!-- Courses area End -->
    <!-- 문장 학습하기 end -->

    <!--? top subjects Area Start -->
    <div class="topic-area section-padding40" style="padding-top: 0px; padding-bottom:50px">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-7 col-lg-8">
                    <div class="section-tittle text-center mb-55">
                        <h2>나의 문제 리스트</h2>
                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-lg-3 col-md-4 col-sm-6 cursor_pointer" onclick="location.href='listPage.do'">
                    <div class="single-topic text-center mb-30">
                        <div class="topic-img">
                            <img src="${pageContext.request.contextPath}/resources/img/gallery/topic1.png" alt="">
                            <div class="topic-content-box">
                                <div class="topic-content">
                                    <h3 id="topic-content-style">Programing</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 cursor_pointer" onclick="location.href='listPage.do'">
                    <div class="single-topic text-center mb-30">
                        <div class="topic-img">
                            <img src="${pageContext.request.contextPath}/resources/img/gallery/topic2.png" alt="">
                            <div class="topic-content-box">
                                <div class="topic-content">
                                    <h3 id="topic-content-style">Programing</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 cursor_pointer" onclick="location.href='listPage.do'">
                    <div class="single-topic text-center mb-30">
                        <div class="topic-img">
                            <img src="${pageContext.request.contextPath}/resources/img/gallery/topic3.png" alt="">
                            <div class="topic-content-box">
                                <div class="topic-content">
                                    <h3 id="topic-content-style">Programing</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 cursor_pointer" onclick="location.href='listPage.do'">
                    <div class="single-topic text-center mb-30">
                        <div class="topic-img">
                            <img src="${pageContext.request.contextPath}/resources/img/gallery/topic4.png" alt="">
                            <div class="topic-content-box">
                                <div class="topic-content">
                                    <h3 id="topic-content-style">Programing</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 cursor_pointer" onclick="location.href='listPage.do'">
                    <div class="single-topic text-center mb-30">
                        <div class="topic-img">
                            <img src="${pageContext.request.contextPath}/resources/img/gallery/topic5.png" alt="">
                            <div class="topic-content-box">
                                <div class="topic-content">
                                    <h3 id="topic-content-style">Programing</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 cursor_pointer" onclick="location.href='listPage.do'">
                    <div class="single-topic text-center mb-30">
                        <div class="topic-img">
                            <img src="${pageContext.request.contextPath}/resources/img/gallery/topic6.png" alt="">
                            <div class="topic-content-box">
                                <div class="topic-content">
                                    <h3 id="topic-content-style">Programing</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 cursor_pointer" onclick="location.href='listPage.do'">
                    <div class="single-topic text-center mb-30">
                        <div class="topic-img">
                            <img src="${pageContext.request.contextPath}/resources/img/gallery/topic7.png" alt="">
                            <div class="topic-content-box">
                                <div class="topic-content">
                                    <h3 id="topic-content-style">Programing</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 cursor_pointer" onclick="location.href='listPage.do'">
                    <div class="single-topic text-center mb-30">
                        <div class="topic-img">
                            <img src="${pageContext.request.contextPath}/resources/img/gallery/topic8.png" alt="">
                            <div class="topic-content-box">
                                <div class="topic-content">
                                    <h3 id="topic-content-style">Programing</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="row justify-content-center" style="padding-top:15px">
                <button class="boxed-btn" style="font-weight: bold;" onclick="location.href='userList.do'">전체보기</button>
            </div>
        </div>
    </div>
    <!-- top subjects End -->

    <!-- ? services-area -->
    <div class="services-area services-area2 section-padding40" style="padding-top: 0;">
        <div class="container">
            <div class="row justify-content-sm-center">
                <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="single-services mb-30 cursor_pointer apiButton" onclick="location.href='chat.do'">
                        <div class="features-icon">
                            <img src="${pageContext.request.contextPath}/resources/img/icon/icon2.svg" alt="">
                        </div>
                        <div class="features-caption">
                            <h3>심심이</h3>
                            <p>심심이와 대화를 해보세요!</p>
                        </div>
                    </div>
                </div>
                <!-- <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="single-services mb-30">
                        <div class="features-icon">
                            <img src="/resources/img/icon/icon1.svg" alt="">
                        </div>
                        <div class="features-caption">
                            <h3>심심이랑 연습하기</h3>
                            <p>The automated process all your website tasks.</p>
                        </div>
                    </div>
                </div> -->

            </div>
        </div>
    </div>

</main>
<footer>
    <div class="footer-wrappper footer-bg">
        <!-- footer-bottom area -->
        <div class="footer-bottom-area">
            <div class="container">
                <div class="footer-border">
                    <div class="row d-flex align-items-center">
                        <div class="col-xl-12 ">
                            <div class="footer-copy-right text-center">
                                <p>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                                    All rights reserved | This template is made with <i class="fa fa-heart"
                                                                                        aria-hidden="true"></i> by <a
                                        href="https://colorlib.com" target="_blank">Colorlib</a>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End-->
    </div>
</footer>
<!-- Scroll Up -->
<div id="back-top">
    <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
</div>

<!-- JS here -->
<script src="${pageContext.request.contextPath}/resources/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="${pageContext.request.contextPath}/resources/js/vendor/jquery-1.12.4.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.min.js"></script>
<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="${pageContext.request.contextPath}/resources/js/slick.min.js"></script>
<!-- Progress -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.barfiller.js"></script>
<!-- counter , waypoint,Hover Direction -->
<script src="${pageContext.request.contextPath}/resources/js/hover-direction-snake.min.js"></script>
<!-- Jquery Plugins, main Jquery -->
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>