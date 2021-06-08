<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String SS_USER_TYPE = CmmUtil.nvl((String) session.getAttribute("SS_USER_TYPE"));

    List<Map<String, String>> rQuizList = ((List<Map<String, String>>) request.getAttribute("rQuizList"));
    List<String> rUserQuizTitleList = ((List<String>) request.getAttribute("rUserQuizTitleList"));

    if (rQuizList == null) {
        rQuizList = new ArrayList<>();
    }

    if (rUserQuizTitleList == null) {
        rUserQuizTitleList = new ArrayList<>();
    }

%>
<html>
<head>
    <!-- head Start -->
    <%@include file="/WEB-INF/view/inc/head.jsp" %>
    <!-- head end -->

    <style>
        .topic-content-style {
            color: #ffffff;
            font-weight: 700;
            font-size: 20px;
        }

        .apiButton {
            margin-bottom: 0;
        }

        .apiButton:hover {
            background-color: #f9f9ff;
        }

        .chatBox {
            margin-bottom: 40px;
        }

        .properties__caption h3 {
            text-align: center;
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

    <!-- 단어 학습하기 start -->
    <!-- Courses area start -->
    <div class="courses-area section-padding40 fix">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-7 col-lg-8">
                    <div class="section-tittle text-center mb-55">
                        <h2>단어 학습하기</h2>
                    </div>
                </div>
            </div>
            <div class="courses-actives">

                <%
                    int i = 0;
                    for (Map<String, String> rMap : rQuizList) {
                        if (rMap.get("quiz_sort").equals("0")) {
                            i++;
                %>

                <!-- Single -->
                <div class="properties pb-20">
                    <div class="properties__card">
                        <div class="properties__img overlay1">
                            <img src="${pageContext.request.contextPath}/resources/img/gallery/featured<%=(i%6)+1%>.png"
                                 alt="">
                        </div>
                        <div class="properties__caption">
                            <h3><%=rMap.get("quiz_title") %>
                            </h3>
                            <div class="properties__footer d-flex justify-content-between align-items-center">
                            </div>
                            <a href="listPage.do?quizTitle=<%=rMap.get("quiz_title") %>&quizSort=<%=rMap.get("quiz_sort") %>"
                               class="border-btn border-btn2 cursor_pointer">학습하기</a>
                        </div>
                    </div>
                </div>
                <!-- Single -->

                <%
                        }
                    }
                %>

            </div>
        </div>
    </div>
    <!-- Courses area End -->
    <!-- 단어 학습하기 end-->

    <!-- 문장 학습하기 start-->
    <!-- Courses area start -->
    <div class="courses-area section-padding40 fix">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-7 col-lg-8">
                    <div class="section-tittle text-center mb-55">
                        <h2>문장 학습하기</h2>
                    </div>
                </div>
            </div>
            <div class="courses-actives">

                <%
                    int j = 0;
                    for (Map<String, String> rMap : rQuizList) {
                        if (rMap.get("quiz_sort").equals("1")) {
                            j++;
                %>

                <!-- Single -->
                <div class="properties pb-20">
                    <div class="properties__card">
                        <div class="properties__img overlay1">
                            <img src="${pageContext.request.contextPath}/resources/img/gallery/featured<%=(j%6)+1%>.png"
                                 alt="">
                        </div>
                        <div class="properties__caption">
                            <h3><%=rMap.get("quiz_title") %>
                            </h3>
                            <div class="properties__footer d-flex justify-content-between align-items-center">
                            </div>
                            <a href="listPage.do?quizTitle=<%=rMap.get("quiz_title") %>&quizSort=<%=rMap.get("quiz_sort") %>"
                               class="border-btn border-btn2 cursor_pointer">학습하기</a>
                        </div>
                    </div>
                </div>
                <!-- Single -->

                <%
                        }
                    }
                %>

            </div>
        </div>
    </div>
    <!-- Courses area End -->
    <!-- 문장 학습하기 end -->

    <% if (SS_USER_TYPE.equals("ADMIN")) { %>

    <div class="row justify-content-center">
        <button class="boxed-btn" style="font-weight: bold;margin-top: 10px;"
                onclick="location.href='create.do'">생성하기
        </button>
    </div>

    <% } else { %>
    <!--? top subjects Area Start -->
    <div class="topic-area section-padding40">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-7 col-lg-8">
                    <div class="section-tittle text-center mb-55">
                        <h2>나의 문제 리스트</h2>
                    </div>
                </div>
            </div>
            <div class="row">

                <%
                    int userQuizTitleIdx = 0;
                    for (String userQuizTitle : rUserQuizTitleList) {
                        userQuizTitleIdx++;
                        if (userQuizTitleIdx == 9) {
                            break;
                        }
                %>
                <div class="col-lg-3 col-md-4 col-sm-6 cursor_pointer"
                     onclick="location.href='listPage.do?quizTitle=<%=userQuizTitle%>&quizSort=2'">
                    <div class="single-topic text-center mb-30">
                        <div class="topic-img">
                            <img src="${pageContext.request.contextPath}/resources/img/gallery/topic<%=(userQuizTitleIdx%8)+1%>.png"
                                 alt="">
                            <div class="topic-content-box">
                                <div class="topic-content">
                                    <h3 class="topic-content-style"><%=userQuizTitle%>
                                    </h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <% }%>

            </div>
            <div class="row justify-content-center">
                <button class="boxed-btn" style="font-weight: bold;margin-top: 10px;"
                        onclick="location.href='userQuizList.do'">전체보기
                </button>
            </div>
        </div>
    </div>
    <!-- top subjects End -->

    <% } %>


    <!-- ? services-area -->
    <div class="services-area services-area2 section-padding40">
        <div class="container">
            <div class="row justify-content-sm-center">
                <div class="chatBox col-lg-4 col-md-6 col-sm-8">
                    <div class="single-services mb-30 cursor_pointer apiButton" onclick="location.href='apiChat.do'">
                        <div class="features-icon">
                            <img src="${pageContext.request.contextPath}/resources/img/icon/icon2.svg" alt="">
                        </div>
                        <div class="features-caption">
                            <h3>심심이</h3>
                            <p>심심이와 대화를 해보세요!</p>
                        </div>
                    </div>
                </div>
                <div class="chatBox col-lg-4 col-md-6 col-sm-8">
                    <div class="single-services mb-30 cursor_pointer apiButton" onclick="location.href='userChat.do'">
                        <div class="features-icon">
                            <img src="${pageContext.request.contextPath}/resources/img/icon/icon1.svg" alt="">
                        </div>
                        <div class="features-caption">
                            <h3>단체 채팅하기</h3>
                            <p>당신의 실력을 보여주세요!</p>
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