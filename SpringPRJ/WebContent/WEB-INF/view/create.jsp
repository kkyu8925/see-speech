<%--
  Created by IntelliJ IDEA.
  User: data03
  Date: 2021-04-06
  Time: 오후 5:11
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

        .table-row:hover {
            background-color: bisque;
        }

        .input_title {
            margin-bottom: 30px;
            width: 30%;
        }

        .plus_table_row {
            justify-content: center;
            font-weight: bold;
            color: mediumorchid;
            cursor: pointer;
        }

        .li_angle {
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>
    <script type="text/javascript">
        function createQuizHandler() {
            alert("문제생성")
        }
    </script>
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

    <div class="whole-wrap">
        <div class="container box_1170">
            <div class="section-top-border">
                <form>
                    <input class="form-control valid input_title" name="title" id="title" type="text"
                           onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter title'"
                           placeholder="Enter title">
                </form>

                <div class="progress-table-wrap">
                    <div class="progress-table" style="padding-bottom: 15px;">
                        <div class="table-head">
                            <div class="serial">#</div>
                            <div class="country">문제</div>
                            <div class="percentage">Button</div>
                        </div>

                        <div class="table-row">
                            <div class="serial">01</div>
                            <div class="country">Canada</div>
                            <div class="percentage">
                                <button class="boxed-btn list_button update_button">수정</button>
                                <button class="boxed-btn list_button delete_button">삭제</button>
                            </div>
                        </div>
                        <div class="table-row plus_table_row" onclick="createQuizHandler()">
                            <div class="serial"></div>
                            <div class="country">문제 추가하기</div>
                            <div class="percentage ">
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
                <button type="submit" class="boxed-btn practice_button">확인</button>
                <button type="submit" class="boxed-btn histroy_button" onclick="history.back()">이전</button>
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

</body>
</html>
