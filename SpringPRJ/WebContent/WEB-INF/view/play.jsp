<%--
  Created by IntelliJ IDEA.
  User: data03
  Date: 2021-04-06
  Time: 오후 5:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        .button_container {
            display: flex;
            justify-content: space-between;
        }

        .play_button {
            width: 47%;
        }

        .next_button {
            border-color: #4cd3e3;
            color: #4cd3e3;
        }

        .next_button:hover, .next_button:focus {
            background-color: #4cd3e3;
            border-color: #4cd3e3;
            color: white;
        }

        .mic_box {
            justify-content: center;
            margin-bottom: 30px;
            color: blue;
            cursor: pointer;
        }

        .context_box {
            justify-content: center;
        }
    </style>
</head>

<body>
<!--? Preloader Start -->
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
<!-- Preloader Start -->

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


    <!-- ? services-area -->
    <div class="services-area services-area2 section-padding40">
        <div class="container">

            <div class="row justify-content-sm-center">
                <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="single-services mb-30">
                        <div class="features-caption">
                            <h3>Speech</h3>
                            <p>밥 맛있게 먹었어</p>
                            <p>"밤 마시께 머거써"</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-sm-center">
                <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="single-services mb-30">
                        <div class="features-caption">
                            <h3>See</h3>
                            <p>가나다라 마바사</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-sm-center mic_box">
                <i class="fas fa-microphone-alt fa-4x"></i>
            </div>
            <div class="row justify-content-sm-center context_box">
                <div class="features-caption">
                    <p>1 / 20</p>
                </div>
            </div>
            <div class="row justify-content-sm-center">
                <div class="col-lg-4 col-md-6 col-sm-8 button_container">
                    <button class="boxed-btn play_button next_button">Next</button>
                    <button class="boxed-btn play_button" onclick="history.back()">Back</button>
                </div>
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
