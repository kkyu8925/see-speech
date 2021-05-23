<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <!-- head Start -->
    <%@include file="/WEB-INF/view/inc/head.jsp" %>
    <!-- head end -->

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

        .chat-footer i {
            color: blue;
            cursor: pointer;
        }

        .chat-footer {
            position: relative;
        }

        #micButtonBox {
            position: relative;
            top: 15%;
            left: 47%;
        }
        @media only screen and (min-width: 426px) and (max-width: 576px) {
            #micButtonBox {
                left: 43%;
            }
        }
        @media only screen and (min-width: 400px) and (max-width: 425px) {
            #micButtonBox {
                left: 41%;
            }
        }
        @media only screen and (min-width: 300px) and (max-width: 399px) {
            #micButtonBox {
                left: 39%;
            }
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

<main style="overflow-x:hidden">
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
                                        <div id="micButtonBox"></div>
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

<!-- js file start -->
<%@include file="/WEB-INF/view/inc/jsfile.jsp" %>
<!-- js file end -->

<!-- chat js -->
<script src="${pageContext.request.contextPath}/resources/js/chatcore.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/chatscript.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/chatlayout-settings.js"></script>

<!-- annyang js & speechkitt -->
<script src="${pageContext.request.contextPath}/resources/js/annyang.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/speechkitt.js"></script>
<script>
    if (annyang) {
        // Add our commands to annyang
        annyang.addCommands({
            'hello': function () {
                alert('Hello world!');
            }
        });

        // Tell KITT to use annyang
        SpeechKITT.annyang();

        // Define a stylesheet for KITT to use
        SpeechKITT.setStylesheet('${pageContext.request.contextPath}/resources/css/themes/flat.css');

        // Render KITT's interface
        SpeechKITT.vroom();
    }
</script>

</body>
</html>
