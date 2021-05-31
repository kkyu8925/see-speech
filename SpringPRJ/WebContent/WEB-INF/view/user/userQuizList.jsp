<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <!-- head Start -->
    <%@include file="/WEB-INF/view/inc/head.jsp" %>
    <!-- head end -->

    <style>
        .delete_box {
            border-radius: 15px;
            font-weight: bold;
            width: 30px;
            height: 30px;
            position: absolute;
            top: 10px;
            right: 40px;
            z-index: 2;
            font-size: large;
            text-align: center;
            color: white;
            cursor: pointer;
        }
    </style>
    <script type="text/javascript">
        function deleteBoxClickHandler() {
            confirm("삭제 하시겠습니까?")
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

    <!-- Courses area start -->
    <div class="courses-area section-padding40 fix">
        <div class="container">
            <div class="row justify-content-center">

                <div class="col-xl-7 col-lg-8">
                    <div class="section-tittle text-center mb-55">
                        <h2>나의 문제 리스트</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="properties properties2 mb-30">
                        <div class="delete_box" onclick="deleteBoxClickHandler()">X</div>
                        <div class="properties__card">
                            <div class="properties__img overlay1">
                                <img src="${pageContext.request.contextPath}/resources/img/gallery/featured1.png"
                                     alt="">
                            </div>
                            <div class="properties__caption">
                                <h3 style="text-align: center;">문제1</h3>
                                <div class="properties__footer d-flex justify-content-between align-items-center"></div>

                                <a href="create.do" class="border-btn border-btn2 cursor_pointer">학습하기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="properties properties2 mb-30">
                        <div class="delete_box" onclick="deleteBoxClickHandler()">X</div>
                        <div class="properties__card">
                            <div class="properties__img overlay1">
                                <img src="${pageContext.request.contextPath}/resources/img/gallery/featured2.png"
                                     alt="">
                            </div>
                            <div class="properties__caption">
                                <h3 style="text-align: center;">문제2</h3>
                                <div class="properties__footer d-flex justify-content-between align-items-center"></div>
                                <a href="create.do" class="border-btn border-btn2 cursor_pointer">학습하기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="properties properties2 mb-30">
                        <div class="delete_box" onclick="deleteBoxClickHandler()">X</div>
                        <div class="properties__card">
                            <div class="properties__img overlay1">
                                <img src="${pageContext.request.contextPath}/resources/img/gallery/featured3.png"
                                     alt="">
                            </div>
                            <div class="properties__caption">
                                <h3 style="text-align: center;">문제3</h3>
                                <div class="properties__footer d-flex justify-content-between align-items-center"></div>
                                <a href="create.do" class="border-btn border-btn2 cursor_pointer">학습하기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="properties properties2 mb-30">
                        <div class="delete_box" onclick="deleteBoxClickHandler()">X</div>
                        <div class="properties__card">
                            <div class="properties__img overlay1">
                                <img src="${pageContext.request.contextPath}/resources/img/gallery/featured4.png"
                                     alt="">
                            </div>
                            <div class="properties__caption">
                                <h3 style="text-align: center;">문제4</h3>
                                <div class="properties__footer d-flex justify-content-between align-items-center"></div>
                                <a href="create.do" class="border-btn border-btn2 cursor_pointer">학습하기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="properties properties2 mb-30">
                        <div class="delete_box" onclick="deleteBoxClickHandler()">X</div>
                        <div class="properties__card">
                            <div class="properties__img overlay1">
                                <img src="${pageContext.request.contextPath}/resources/img/gallery/featured5.png"
                                     alt="">
                            </div>
                            <div class="properties__caption">
                                <h3 style="text-align: center;">문제5</h3>
                                <div class="properties__footer d-flex justify-content-between align-items-center"></div>
                                <a href="create.do" class="border-btn border-btn2 cursor_pointer">학습하기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-xl-7 col-lg-8">
                    <div class="section-tittle text-center" style="margin-bottom: 40px;margin-top: 25px">
                        <button type="submit" class="boxed-btn" onclick="location.href='create.do'"
                                style="font-weight: bold;">생성하기
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Courses area End -->
</main>

<!-- footer&Scroll Up start -->
<%@include file="/WEB-INF/view/inc/footer.jsp" %>
<!-- footer&Scroll Up end -->

<!-- js file start -->
<%@include file="/WEB-INF/view/inc/jsfile.jsp" %>
<!-- js file end -->

</body>
</html>