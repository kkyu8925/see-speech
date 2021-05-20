<%--
  Created by IntelliJ IDEA.
  User: data03
  Date: 2021-04-06
  Time: 오후 5:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/chatcore.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/chatstyle.css">

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
<!-- Preloader Start -->
<%@include file="/WEB-INF/view/inc/preloader.jsp" %>
<!-- Preloader end -->

<!-- header start -->
<%@include file="/WEB-INF/view/inc/header.jsp" %>
<!-- header end -->

<main>
    <!-- slider Area Start-->
    <%@include file="/WEB-INF/view/inc/section.jsp" %>
    <!-- slider Area end-->

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

<!-- footer&Scroll Up start -->
<%@include file="/WEB-INF/view/inc/footer.jsp" %>
<!-- footer&Scroll Up end -->

<!-- JS here -->
<script src="${pageContext.request.contextPath}/resources/js/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
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
<script src="${pageContext.request.contextPath}/resources/js/chatcore.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/chatscript.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/chatlayout-settings.js"></script>

</body>
</html>
