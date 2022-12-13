<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>CCC 메인 페이지</title>
	
    <!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<style>
	    div {box-sizing:border-box;}
	    #header {
	        width:80%;
	        height:100px;
	        padding-top:20px;
	        margin:auto;
	    }
	    #header>div {width:100%; margin-bottom:10px;}
	    #header_1 {height:40%;}
	    #header_2 {height:60%;}
	
	    #header_1>div{
	        height:100%;
	        float:left;
	    }
	    #header_1_left {width:30%; position:relative;}
	    #header_1_center {width:40%;}
	    #header_1_right {width:30%;}
	
	    #header_1_left>img {height:80%; position:absolute; margin:auto; top:0px; bottom:0px; right:0px; left:0px;}
	    #header_1_right {text-align:center; line-height:35px; font-size:12px; text-indent:35px;}
	    #header_1_right>a {margin:5px;}
	    #header_1_right>a:hover {cursor:pointer;}
	
	    #header_2>ul {width:100%; height:100%; list-style-type:none; margin:auto; padding:0;}
	    #header_2>ul>li {float:left; width:25%; height:100%; line-height:55px; text-align:center;}
	    #header_2>ul>li a {text-decoration:none; color:black; font-size:18px; font-weight:900;}
	
	    #header_2 {border-top:1px solid lightgray;}
	
	    #header a {text-decoration:none; color:black;}
	
	    /* 세부페이지마다 공통적으로 유지할 style */
	    .content {
	        background-color:rgb(247, 245, 245);
	        width:80%;
	        margin:auto;
	    }
	    .innerOuter {
	        border:1px solid lightgray;
	        width:80%;
	        margin:auto;
	        padding:5% 10%;
	        background-color:white;
	    }
	</style>
</head>
<body>
	<div id="header">
        <div id="header_1">
            <div id="header_1_left">
                <img src="https://w7.pngwing.com/pngs/99/281/png-transparent-swoosh-nike-logo-just-do-it-nike-angle-converse-adidas.png" alt="">
            </div>
            <div id="header_1_center"></div>
            <div id="header_1_right">
                <!-- 로그인 전 -->
                <a href="">회원가입</a>
                <a data-toggle="modal" data-target="#loginModal">로그인</a> <!-- 모달의 원리 : 이 버튼 클릭시 data-targer에 제시되어있는 해당 아이디의 div요소를 띄워줌 -->
                
                <!-- 로그인 후 -->
                <!-- 
                    <lable>홍길동님 환영합니다</label> &nbsp;&nbsp;
                    <a href="">마이페이지</a>
                    <a href="">로그아웃</a>
                -->
            </div>
        </div>
        <div id="header_2">
            <ul>
                <li><a href="${ pageContext.request.contextPath }">HOME</a></li>
                <li><a href="">공지사항</a></li>
                <li><a href="">자유게시판</a></li>
                <li><a href="list.ch">캐릭터게시판</a></li>
            </ul>
        </div>
    </div>

	<div style="text-align : center;">
		<img src="https://web-cf-image.cjenm.com/crop/660x950/public/share/metamng/programs/dts_pos_t_01.jpg?v=1670228345">			
	</div>
	
	
</body>
</html>