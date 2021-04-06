<%--
  Created by IntelliJ IDEA.
  User: data03
  Date: 2021-04-06
  Time: 오후 5:11
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
        #table_button_box {
            display: flex;
            justify-content: space-around;
            padding-bottom: 50px;
        }

        #table_button_box button {
            font-weight: bold;
        }

        .histroy_button {
            color: #1f2b7b;
            border-color: #1f2b7b;
        }

        .histroy_button:hover, .histroy_button:focus {
            background-color: #1f2b7b;
            border-color: #1f2b7b;
            color: white;
        }

        .practice_button {
            color: #4cd3e3;
            border-color: #4cd3e3;
        }

        .practice_button:hover, .practice_button:focus {
            background-color: #4cd3e3;
            border-color: #4cd3e3;
            color: white;
        }

        .delete_button {
            color: #f44a40;
            border-color: #f44a40;
        }

        .delete_button:hover, .delete_button:focus {
            background-color: #f44a40;
            border-color: #f44a40;
            color: white;
        }

        .nav_box {
            margin-top: 0;
            padding-bottom: 30px;
        }

        .page-link:focus {
            background-color: #fbf9ff;
        }

        .list_button {
            height: 40px;
            width: 70px;
            text-align: center;
            padding: 0;
        }

        .update_button {
            margin-right: 30px;
        }

        .table-row {
            cursor: pointer;
        }

        .table-row:hover {
            background-color: bisque;
        }

        .li_angle {
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>
    <script type="text/javascript">
        function onePracticeHandler() {
            let isConfirm = confirm("개별 학습하겠습니까?");
            if (isConfirm) {
                location.href = "play.do";
            } else {

            }
        }
    </script>
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

    <div class="whole-wrap">
        <div class="container box_1170">
            <div class="section-top-border">
                <h3 class="mb-30">제목</h3>
                <div class="progress-table-wrap">
                    <div class="progress-table" style="padding-bottom: 15px;">
                        <div class="table-head">
                            <div class="serial">#</div>
                            <div class="country">문제</div>
                            <div class="percentage">Button</div>
                        </div>
                        <div class="table-row">
                            <div class="serial">01</div>
                            <div class="country" onclick="onePracticeHandler()">Canada</div>
                            <div class="percentage ">
                                <button class="boxed-btn list_button update_button">수정</button>
                                <button class="boxed-btn list_button delete_button">삭제</button>
                            </div>
                        </div>
                        <div class="table-row">
                            <div class="serial">01</div>
                            <div class="country" onclick="onePracticeHandler()">Canada</div>
                            <div class="percentage ">
                                <button class="boxed-btn list_button update_button">수정</button>
                                <button class="boxed-btn list_button delete_button">삭제</button>
                            </div>
                        </div>
                        <div class="table-row">
                            <div class="serial">01</div>
                            <div class="country" onclick="onePracticeHandler()">Canada</div>
                            <div class="percentage ">
                                <button class="boxed-btn list_button update_button">수정</button>
                                <button class="boxed-btn list_button delete_button">삭제</button>
                            </div>
                        </div>
                        <div class="table-row">
                            <div class="serial">01</div>
                            <div class="country" onclick="onePracticeHandler()">Canada</div>
                            <div class="percentage ">
                                <button class="boxed-btn list_button update_button">수정</button>
                                <button class="boxed-btn list_button delete_button">삭제</button>
                            </div>
                        </div>
                        <div class="table-row">
                            <div class="serial">01</div>
                            <div class="country" onclick="onePracticeHandler()">Canada</div>
                            <div class="percentage ">
                                <button class="boxed-btn list_button update_button">수정</button>
                                <button class="boxed-btn list_button delete_button">삭제</button>
                            </div>
                        </div>
                        <div class="table-row">
                            <div class="serial">01</div>
                            <div class="country" onclick="onePracticeHandler()">Canada</div>
                            <div class="percentage ">
                                <button class="boxed-btn list_button update_button">수정</button>
                                <button class="boxed-btn list_button delete_button">삭제</button>
                            </div>
                        </div>
                        <div class="table-row">
                            <div class="serial">01</div>
                            <div class="country" onclick="onePracticeHandler()">Canada</div>
                            <div class="percentage ">
                                <button class="boxed-btn list_button update_button">수정</button>
                                <button class="boxed-btn list_button delete_button">삭제</button>
                            </div>
                        </div>
                        <div class="table-row">
                            <div class="serial">01</div>
                            <div class="country" onclick="onePracticeHandler()">Canada</div>
                            <div class="percentage ">
                                <button class="boxed-btn list_button update_button">수정</button>
                                <button class="boxed-btn list_button delete_button">삭제</button>
                            </div>
                        </div>
                        <div class="table-row">
                            <div class="serial">01</div>
                            <div class="country" onclick="onePracticeHandler()">Canada</div>
                            <div class="percentage ">
                                <button class="boxed-btn list_button update_button">수정</button>
                                <button class="boxed-btn list_button delete_button">삭제</button>
                            </div>
                        </div>
                        <div class="table-row">
                            <div class="serial">01</div>
                            <div class="country" onclick="onePracticeHandler()">Canada</div>
                            <div class="percentage ">
                                <button class="boxed-btn list_button update_button">수정</button>
                                <button class="boxed-btn list_button delete_button">삭제</button>
                            </div>
                        </div>
                        <div class="table-row">
                            <div class="serial">01</div>
                            <div class="country" onclick="onePracticeHandler()">Canada</div>
                            <div class="percentage ">
                                <button class="boxed-btn list_button update_button">수정</button>
                                <button class="boxed-btn list_button delete_button">삭제</button>
                            </div>
                        </div>
                        <div class="table-row">
                            <div class="serial">01</div>
                            <div class="country" onclick="onePracticeHandler()">Canada</div>
                            <div class="percentage ">
                                <button class="boxed-btn list_button update_button">수정</button>
                                <button class="boxed-btn list_button delete_button">삭제</button>
                            </div>
                        </div>
                        <div class="table-row">
                            <div class="serial">01</div>
                            <div class="country" onclick="onePracticeHandler()">Canada</div>
                            <div class="percentage ">
                                <button class="boxed-btn list_button update_button">수정</button>
                                <button class="boxed-btn list_button delete_button">삭제</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <nav class="blog-pagination justify-content-center d-flex nav_box">
                <ul class="pagination">
                    <li class="page-item">
                        <a href="#" class="page-link li_angle" aria-label="Previous">
                            <i class="ti-angle-left"></i>
                        </a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">1</a>
                    </li>
                    <li class="page-item active">
                        <a href="#" class="page-link">2</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link li_angle" aria-label="Next">
                            <i class="ti-angle-right"></i>
                        </a>
                    </li>
                </ul>
            </nav>

            <div id="table_button_box">
                <button type="submit" class="boxed-btn practice_button">랜덤학습</button>
                <button type="submit" class="boxed-btn histroy_button" onclick="history.back()">이전으로</button>
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
