<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>CCC::MainView</title>
    <!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>

        #mainViewDiv{
            width:100%;
            position: relative;
            /*header에서 영역을 보이는 것보다 아래까지 차지해서 위로 올리기 위함*/
            top: -205px;
            position:relative;
            /*z-index:1*/
        }


    </style>
</head>
<body>

    <div id="mainViewDiv">
        <img src="./resources/header2Img/main.jpg" alt="navi2"> 
    </div>
    
    <br clear="both">
    <!-- 더미추가용 버튼 -->
    <button id="createFileDummy" onclick="location.href='createFileDummy.do'">파일 더미를 만들자</button>
</body>
</html>