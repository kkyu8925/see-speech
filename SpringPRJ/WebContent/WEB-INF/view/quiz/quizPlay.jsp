<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    List<String> SS_QUIZ_CONT_LIST = (List<String>) session.getAttribute("SS_QUIZ_CONT_LIST");
    String quizContTitle = (String) request.getAttribute("quizContTitle");

    if (SS_QUIZ_CONT_LIST == null) {
        SS_QUIZ_CONT_LIST = new ArrayList<>();
    }
%>
<html>
<head>
    <!-- head Start -->
    <%@include file="/WEB-INF/view/inc/head.jsp" %>
    <!-- head end -->

    <style>
        .button_container {
            display: flex;
            justify-content: space-between;
        }

        .play_button {
            width: 47%;
        }

        .next_button {
            border-color: #4cd3e3;
            color: #4cd3e3;
        }

        .next_button:hover {
            background-color: #4cd3e3;
            border-color: #4cd3e3;
            color: white;
        }

        .mic_box {
            position: relative;
            margin-bottom: 100px;
            justify-content: center;
        }

        .context_box {
            justify-content: center;
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

    <!-- ? services-area -->
    <div class="services-area services-area2 section-padding40">
        <div class="container">

            <div class="row justify-content-sm-center">
                <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="single-services mb-30">
                        <div class="features-caption">
                            <h3>Speech</h3>
                            <p id="quizBox">${quizContTitle}</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-sm-center">
                <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="single-services mb-30">
                        <div class="features-caption">
                            <h3>See</h3>
                            <p id="sttBox"></p>
                        </div>
                    </div>
                </div>
            </div>

            <div id="micButtonBox" class="row justify-content-sm-center mic_box">
            </div>

            <div class="row justify-content-sm-center context_box">
                <div class="features-caption" style="display: flex">
                    <p id="quizCntTag">1</p>
                    <p>/</p>
                    <p>${SS_QUIZ_CONT_LIST.size()}</p>
                </div>
            </div>
            <div class="row justify-content-sm-center" style="margin-bottom: 20px">
                <div class="col-lg-4 col-md-6 col-sm-8 button_container">
                    <button class="boxed-btn play_button next_button" onclick="nextQuizHandler();">Next</button>
                    <button class="boxed-btn play_button" onclick="history.back()">Back</button>
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

<!-- annyang js & speechkitt -->
<script src="${pageContext.request.contextPath}/resources/js/annyang.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/speechkitt.js"></script>
<script>
    if (annyang) {
        // Add our commands to annyang
        annyang.addCommands({});

        //음성인식 값 받아오기위한 객체 생성
        let recognition = annyang.getSpeechRecognizer();
        //최종 음성인식 결과값 저장 변수
        let final_transcript = "";
        //말하는 동안에 인식되는 값 가져오기(허용)
        recognition.interimResults = false;
        //음성 인식결과 가져오기
        recognition.onresult = function (event) {
            final_transcript = "";
            for (let i = event.resultIndex; i < event.results.length; ++i) {
                if (event.results[i].isFinal) {
                    final_transcript += event.results[i][0].transcript;
                }
            }
            console.log("final :" + final_transcript);
            $("#sttBox").text(final_transcript);

        };

        // Tell KITT to use annyang
        SpeechKITT.annyang();

        // Define a stylesheet for KITT to use
        SpeechKITT.setStylesheet('${pageContext.request.contextPath}/resources/css/themes/flat.css');

        // Render KITT's interface
        SpeechKITT.vroom();
    }

    // make js quiz list
    let quizContList = [];

    <%
        for(String quizCont:SS_QUIZ_CONT_LIST) {
            if(!quizCont.equals(quizContTitle)) {
    %>

    quizContList.push("<%=quizCont %>");

    <%
            }
        }
     %>

    function nextQuizHandler() {
        let cnt = quizContList.length;

        if (cnt === 0) {
            alert("전부 학습하셨습니다!");
            location.href = "/index.do";
        } else {
            // 다음 문제
            document.querySelector("#quizBox").innerHTML = quizContList.pop();
            // 푼문제 수 증가
            let idx = Number(document.querySelector("#quizCntTag").innerHTML) + 1;
            document.querySelector("#quizCntTag").innerHTML = String(idx);
            // 답장 div 비우기
            document.querySelector("#sttBox").innerHTML = "";
        }

    }
</script>

</body>
</html>