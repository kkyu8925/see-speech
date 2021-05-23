<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <!-- head Start -->
    <%@include file="/WEB-INF/view/inc/head.jsp" %>
    <!-- head end -->

    <style>
        .form__button {
            font-weight: bold;
        }

        .delete_userButton {
            color: #f44a40;
            border-color: #f44a40;
        }

        .delete_userButton:hover, .delete_userButton:focus {
            background-color: #f44a40;
            border-color: #f44a40;
            color: white;
        }

        .update_pwButton {
            color: #4cd3e3;
            border-color: #4cd3e3;
        }

        .update_pwButton:hover, .update_pwButton:focus {
            background-color: #4cd3e3;
            border-color: #4cd3e3;
            color: white;
        }

        .userInfo_buttonBox {
            display: flex;
            justify-content: space-between;
            padding-top: 10px;
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

    <div class="whole-wrap">
        <div class="container box_1170">
            <div class="section-top-border">
                <div class="row">
                    <div class="col-lg-8 col-md-8">
                        <h3 class="mb-30">User</h3>
                        <blockquote class="generic-blockquote">
                            Email@email.com
                        </blockquote>
                        <div class="userInfo_buttonBox">
                            <button type="submit" class="boxed-btn form__button update_pwButton">암호수정</button>
                            <button type="submit" class="boxed-btn form__button delete_userButton">계정삭제</button>
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

</body>
</html>