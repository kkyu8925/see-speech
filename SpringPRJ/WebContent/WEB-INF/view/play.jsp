<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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

        .next_button:hover, .next_button:focus {
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
                            <p>밥 맛있게 먹었어</p>
                            <p>"밤 마시께 머거써"</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-sm-center">
                <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="single-services mb-30">
                        <div class="features-caption">
                            <h3>See</h3>
                            <p>가나다라 마바사</p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="micButtonBox" class="row justify-content-sm-center mic_box">

            </div>
            <div class="row justify-content-sm-center context_box">
                <div class="features-caption">
                    <p>1 / 20</p>
                </div>
            </div>
            <div class="row justify-content-sm-center" style="margin-bottom: 20px">
                <div class="col-lg-4 col-md-6 col-sm-8 button_container">
                    <button class="boxed-btn play_button next_button">Next</button>
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