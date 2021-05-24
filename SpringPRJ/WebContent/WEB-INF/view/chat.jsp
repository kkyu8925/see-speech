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
                                        <ul id="chat__ul">

                                            <li class="clearfix">
                                                        <span class="chat-img">
                                                            <img src="${pageContext.request.contextPath}/resources/img/chat/sim.png"
                                                                 alt="">
                                                        </span>
                                                <div class="chat-body clearfix">
                                                    <p>하이!</p>
                                                    <div class="chat_time init_chat_time"></div>
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
<script>
    let _date = new Date();
    let _hours = _date.getHours();
    let _min = _date.getMinutes();

    document.querySelector(".init_chat_time").innerHTML = _hours + ':' + _min;
</script>

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

        //음성인식 값 받아오기위한 객체 생성
        let recognition = annyang.getSpeechRecognizer();
        //최종 음성인식 결과값 저장 변수
        let final_transcript = "";
        //말하는 동안에 인식되는 값 가져오기(허용)
        recognition.interimResults = false;
        //음성 인식결과 가져오기
        recognition.onresult = function (event) {

            let _date = new Date();
            let _hours = _date.getHours();
            let _min = _date.getMinutes();

            final_transcript = "";
            for (let i = event.resultIndex; i < event.results.length; ++i) {
                if (event.results[i].isFinal) {
                    final_transcript += event.results[i][0].transcript;
                }
            }
            console.log("final :" + final_transcript);

            // 사용자 음성
            let resHTML = "";
            resHTML += '<li class="clearfix admin_chat">';
            resHTML += '<span class="chat-img">';
            resHTML += '<img src="${pageContext.request.contextPath}/resources/img/chat/chat-img.jpg">';
            resHTML += '</span>';
            resHTML += '<div class="chat-body clearfix">';
            resHTML += '<p>' + final_transcript + '</p>';
            resHTML += '<div class="chat_time">' + _hours + ':' + _min + '</div>';
            resHTML += '</div>';
            resHTML += '</li>';

            $("#chat__ul").append(resHTML);

            //Ajax 호출
            $.ajax({
                url: "/chat/msg.do",
                type: "post",
                dataType: "JSON",
                data: {"send_msg": final_transcript},
                success: function (json) {

                    _date = new Date();
                    _hours = _date.getHours();
                    _min = _date.getMinutes();

                    // console.log(json.res_msg);
                    resHTML = "";
                    resHTML += '<li class="clearfix">';
                    resHTML += '<span class="chat-img">';
                    resHTML += '<img src="${pageContext.request.contextPath}/resources/img/chat/sim.png">';
                    resHTML += '</span>';
                    resHTML += '<div class="chat-body clearfix">';
                    resHTML += '<p>' + json.res_msg + '</p>';
                    resHTML += '<div class="chat_time">' + _hours + ':' + _min + '</div>';
                    resHTML += '</div>';
                    resHTML += '</li>';
                    $("#chat__ul").append(resHTML);

                }
            })
        };

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
