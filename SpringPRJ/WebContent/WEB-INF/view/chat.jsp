<%--
  Created by IntelliJ IDEA.
  User: data03
  Date: 2021-04-06
  Time: 오후 5:09
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

    <!-- chat CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/chatcss/core.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/chatcss/style.css">

    <style>
        .chat_head_box {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .chat_head_box i {
            padding-right: 20px;
        }

        .chat-footer {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .chat-footer i {
            color: blue;
            cursor: pointer;
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
<!-- Header Start -->
<header>
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
</header>
<!-- Header End -->
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

    <div class="main-container" style="padding-top: 0;">
        <div class="pd-ltr-20 xs-pd-20-10">
            <div class="min-height-200px">
                <div class="bg-white border-radius-4 box-shadow mb-30">
                    <div class="row no-gutters">
                        <div class="col-lg-9 col-md-8 col-sm-12">
                            <div class="chat-detail">
                                <div class="chat-profile-header clearfix">
                                    <div class="left">
                                        <div class="clearfix">
                                            <div class="chat-profile-name chat_head_box">
                                                <i class="fas fa-angle-left fa-2x" style="cursor: pointer;"
                                                   onclick="history.back()"></i>
                                                <h3>심심이</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="chat-box">
                                    <div class="chat-desc customscroll">
                                        <ul>
                                            <li class="clearfix admin_chat">
													<span class="chat-img">
														<img src="${pageContext.request.contextPath}/resources/img/chat/chat-img.jpg"
                                                             alt="">
													</span>
                                                <div class="chat-body clearfix ">
                                                    <p>It is to early to provide some kind of estimation here. We need
                                                        user stories.</p>
                                                    <div class="chat_time">09:40PM</div>
                                                </div>
                                            </li>
                                            <li class="clearfix admin_chat">
													<span class="chat-img">
														<img src="${pageContext.request.contextPath}/resources/img/chat/chat-img.jpg"
                                                             alt="">
													</span>
                                                <div class="chat-body clearfix">
                                                    <p>Maybe you already have additional info?</p>
                                                    <div class="chat_time">09:40PM</div>
                                                </div>
                                            </li>
                                            <li class="clearfix admin_chat">
													<span class="chat-img">
														<img src="${pageContext.request.contextPath}/resources/img/chat/chat-img.jpg"
                                                             alt="">
													</span>
                                                <div class="chat-body clearfix">
                                                    <p>It is to early to provide some kind of estimation here. We need
                                                        user stories.</p>
                                                    <div class="chat_time">09:40PM</div>
                                                </div>
                                            </li>
                                            <li class="clearfix">
													<span class="chat-img">
														<img src="${pageContext.request.contextPath}/resources/img/chat/sim.png"
                                                             alt="">
													</span>
                                                <div class="chat-body clearfix">
                                                    <p>We are just writing up the user stories now so will have
                                                        requirements for you next week. We are just writing up the user
                                                        stories now so will have requirements for you next week.</p>
                                                    <div class="chat_time">09:40PM</div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="chat-footer">
                                        <i class="fas fa-microphone-alt fa-4x"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
<!-- chat js -->
<script src="${pageContext.request.contextPath}/resources/chatjs/core.js"></script>
<script src="${pageContext.request.contextPath}/resources/chatjs/script.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/chatjs/layout-settings.js"></script>

</body>
</html>
