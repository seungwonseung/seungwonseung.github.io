<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회사소개</title>
    <%@include file="../head.jsp"%>

    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>

    <!-- 스타일 초기화 : reset.css 또는 normalize.css -->
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">
    <!-- 웹 폰트 -->
    <link rel="stylesheet" href="../css/font.css">

    <!-- css 모듈화 -->
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/hd.css">
    <link rel="stylesheet" href="../css/ft2.css">
    <link rel="stylesheet" href="../css/change_img.css">
    <link rel="stylesheet" href="../css/slidebox.css">

    <style>
        /* 본문 영역 스타일 */
        .contents {
            clear: both;
            min-height: 100vh;
        }

        .contents::after {
            content: "";
            clear: both;
            display: block;
            width: 100%;
        }

        .page {
            clear: both;
            width: 100vw;
            min-height: 100vh;
            position: relative;
            overflow: hidden;
        }

        .page::after {
            content: "";
            display: block;
            width: 100%;
            clear: both;
        }

        .page_wrap {
            clear: both;
            width: 1200px;
            height: auto;
            margin: 0 auto;
        }

        .page_tit {
            font-size: 48px;
            text-align: center;
            padding-top: 1em;
            color: #333;
            padding-bottom: 2.4rem;
        }

        .back_bread {
            height: 100px;
            background-image: url("../img/login.jpg");
            background-repeat: no-repeat;
        }

        .breadcrumb {
            clear: both;
            width: 1200px;
            height: 100%;
            margin: 0 auto;
            text-align: right;
            color: #fff;
            line-height: 60px;
        }

        .breadcrumb a {
            color: #fff;
        }

        .tab_box { clear:both; width: 800px; height: 42px;
            position:absolute;  left: 50%;
            z-index:1; margin-left: -200px;}

        .tab_box ul{
            margin: 0 auto;
        }

        .tab_box li {
            width: 25%;
            height: 42px;
            line-height: 42px;
            float: left;
        }

        .tab_box li:hover {
            width: 25%;
            height: 42px;
            line-height: 42px;
            float: left;
        }

        .tab_box li label {
            display: block;
            width: 100%;
            text-align: center;
            background-color: rgba(127, 179, 250, 0.5);
        }

        .tab_box li label:hover {
            background-color: rgb(90, 149, 245);
            color: white;
            font-size: 20px;
        }

        .com_content {
            width: 600px;
        }

        .con_tit {
            font-size: 37px;
            line-height: 1.1;
            font-weight: 550;
        }

        .cont {
            font-size: 23px;
            margin-top: 50px;
            color: #585858;
        }

        .com_img {
            width: 500px;
            position: absolute;
            top: 150px;
            left: 1000px;
            float: right;
        }

        .highlight{
            color: rgb(153, 219, 233);
        }


        .ra1 {display: none;}
        .ra1:not(:checked) + .page {display: none;} /*버튼이 체크 되있지 않으면*/
        .ra1:checked + .page {display: block;}
        .ra1:checked #map {display: block;}
        /*.ra1:checked + #tab2 {height: 800px;} 버튼이 체크 되어 있으면*/

        .back_bread{
            height: 165px;
        }

        .maparea{
            float: right;
        }

        #map1 h3 {
            margin-top: 1.5rem;
            font-size: 2.5rem;
            font-weight: 600;
            margin-bottom: 4.167rem;
        }

        #map1 .tit {
            letter-spacing: 2px;
            font-size: 1.5rem;
            color: rgb(117, 120, 123);
            font-family: roboto;
            font-weight: 700;
            margin-bottom: 0.833rem;
        }

        #map1 p {
            display: block;
            margin-block-start: 1em;
            margin-block-end: 1em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
        }

        #map1 .page_wrap {
            clear: both;
            width: 1000px;
            height: auto;
            margin: 0 auto;
        }



        /*.maparea { }*/
    </style>
</head>
<body>
    <div class="wrap">
        <header class="hd">
            <%@include file="../header.jsp"%>
        </header>
        <div class="contents">
            <div class="back_bread">
                <div class="breadcrumb">
                    <p><a href="">HOME</a> &gt; <a href="">TeenTalk 소개</a></p>
                </div>
            </div>
            <div class="tab_box">
                <ul>
                    <li><label for="com">TeenTalk 소개</label></li>
                    <li><label for="map1">오시는길</label></li>
                </ul>
                <!-- <ul>
                    <li><a href="#com">회사개요</a></li>
                    <li><a href="#greet">인사말</a></li>
                    <li><a href="#history">회사연혁</a></li>
                    <li><a href="#map">오시는길</a></li>
                </ul> -->
            </div>

            <input type="radio" name="ra1" class="ra1" id="com" checked/>
            <section class="page" id="com">
                <div class="page_wrap">
                    <h2 class="page_tit">TeenTalk은?</h2>
                    <div class="com_content">
                        <h3 class="con_tit">학생과 선생님들이 함께</h3>
                        <h3 class="con_tit">정보를 나누며 쉬어갈 수 있는</h3>
                        <h3 class="con_tit"><span class="highlight">소통의 광장</span>이 되겠습니다.</h3>
                        <p class="cont">TeenTalk은 학생들 뿐만 아니라, <br> 선생님들도 함께 할 수 있는 커뮤니티 사이트 입니다.<br><br>

                            학생들에겐 다른 친구들과 소통이 가능한 게시판들과 <br> 선생님들에게서
                            입시를 위한 진로 상담도 가능합니다.<br><br>

                            방문하는 선생님들에겐 학생들에게 <br>많은 도움을 줄 수 있는 진로 상담과
                            입시 정보 게시판 및 자유 게시판을 제공 해드리고 있습니다. <br><br>

                            학생들에겐 가장 관심이 많을 입시 관련 정보와 다른 친구들과 함께 얘기하고
                            정보를 나눌 수 있는 공간을 제공하고 있습니다.</p>
                    </div>
                    <img src="../img/ogu2.png" alt="" class="com_img">
                </div>
            </section>

            <input type="radio" name="ra1" class="ra1" id="map1"/>
            <section class="page" id="map1">
                <div class="page_wrap">
                    <h2 class="page_tit">오시는길</h2>
                    <div class="maparea">
                        <div id="map" style="width:500px;height:400px;"></div>
                        <!-- 보안성을 위해 자바스크립트에서 실행후 불러옴-->
                        <script type="text/javascript" src="../api/kakaoMap.js"></script>
                    </div>
                        <h3>TEENTALK 본사</h3>
                        <div class="address">
                            <p class="tit">ADDRESS</p>
                            <p class="cnt">서울시 금천구 가산로 9길 54</p>
                            <p class="cnt">[가산디지털단지 6번 출구 도보 15분 이내]</p>
                        </div>
                        <div class="tel">
                            <p class="tit">TEL</p>
                            <p class="cnt">1577-0902</p>
                        </div>
                        <div class="fax">
                            <p class="tit">FAX</p>
                            <p class="cnt">02-866-9309</p>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <footer class="ft">
            <%@include file="../footer2.jsp"%>
        </footer>
    </div>
    <!-- 화면 보이기-->
    <script src="../js/load.js">
    </script>
</body>
</html>
