<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <!-- login head Start -->
    <%@include file="/WEB-INF/view/inc/loginhead.jsp" %>
    <!-- login head end -->
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

<!-- login js Start -->
<%@include file="/WEB-INF/view/inc/loginjs.jsp" %>
<!-- login js end -->

</body>
</html>