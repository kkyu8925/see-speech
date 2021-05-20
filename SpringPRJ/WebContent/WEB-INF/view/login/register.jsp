<%--
  Created by IntelliJ IDEA.
  User: data03
  Date: 2021-04-06
  Time: 오후 5:12
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <!--===============================================================================================-->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/fontawesome-free-5.15.3-web/css/all.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/login/loginfonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/loginutil.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/loginmain.css">
    <!--===============================================================================================-->
</head>

<body>
<!-- Preloader Start -->
<%@include file="/WEB-INF/view/inc/preloader.jsp" %>
<!-- Preloader end -->

<div class="container-login100">
    <div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
        <form class="login100-form validate-form">
				<span class="login100-form-title p-b-37">
					Sign Up
				</span>

            <div class="wrap-input100 validate-input m-b-20" data-validate="Enter email">
                <input class="input100" type="email" name="email" placeholder="email" autocomplete="off">
                <span class="focus-input100"></span>
            </div>

            <div class="wrap-input100 validate-input m-b-25" data-validate="Enter password">
                <input class="input100" type="password" name="pw" placeholder="password">
                <span class="focus-input100"></span>
            </div>
            <div class="wrap-input100 validate-input m-b-25" data-validate="Enter password check">
                <input class="input100" type="password" name="pw" placeholder="password check">
                <span class="focus-input100"></span>
            </div>

            <div class="container-login100-form-btn" style="padding-top: 50px;">
                <button class="login100-form-btn">
                    Sign Up
                </button>
            </div>

            <div class="text-center" style="padding-top: 20px;">
                <a href="login.do" class="txt2 hov1">
                    Back
                </a>
            </div>
        </form>
    </div>
</div>

<!-- Jquery, Popper, Bootstrap -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<!-- preloader js -->
<script src="${pageContext.request.contextPath}/resources/js/login.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/loginmain.js"></script>

</body>
</html>
