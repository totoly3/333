<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    
    <!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 
    <style>
	    <!--아래 부분은 드롭다운추가한거 -->
	    .dropbtn {	  
		  color: black;
		  padding: 16px;
		  font-size: 16px;
		  border: none;
		  position:relative;z-index:1
		}
		 
		.dropdown {
		  position: relative;
		  display: inline-block;
		  background-color: #E42525;
		}
		 
		.dropdown-content {
		  display: none;
		  position: absolute;
		  background-color: skyblue;
		  min-width: 160px;
		  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		  z-index: 1;
		  
		}
		 
		.dropdown-content a {
		  color: black;
		  padding: 12px 16px;
		  text-decoration: none;
		  display: block;
		  
		}
		.dropdown-content a:hover {background-color: #2CA93D;}
		.dropdown:hover .dropdown-content {display: block;}
		.dropdown:hover .dropbtn {background-color: #E42525;}
		<!-- 윗부분은 드롭다운 추가 -->

        div {box-sizing:border-box;}
        #header {
            width:80%;
            height:100px;
            padding-top:20px;
            margin:auto;
        }
        #header>div {width:100%; margin-bottom:10px;}
        #header_2 {height:60%;}
        #header_2>ul {width:100%; height:100%; list-style-type:none; margin:auto; padding:0;}
        #header_2>ul>li {float:left; width:10%; height:100%; line-height:55px; text-align:center;}
        #header_2>ul>li a {text-decoration:none; color:rgb(255, 255, 255); font-size:12px; font-weight:600;}
        
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
        /* 조지니 네비바 style */
        .logoDiv{
            width:100%;
            z-index: 1;
        }

        #header_2{
            z-index: 5;
            position: relative;
            top: -75px;
            left: 30px;
            
        }
        #headerIconDiv>ul {width:100%; height:100%; list-style-type:none; margin:auto; padding:0;}
        #headerIconDiv>ul>li {float:left; width:4%; height:100%; line-height:55px; text-align:center;}
        #headerIconDiv>ul>li a {text-decoration:none; color:rgb(255, 255, 255); font-size:12px; font-weight:600;}
        #headerIconDiv{
            z-index: 5;
            position: relative;
            top: -58px;
            left: 30px;
            
        }
        #headerIconUl{
            z-index: 6;
            position: relative;
            top: -100px;
            left: 1300px;
            
        }

    </style>
</head>
<body>
	
	<!-- 알람 메세지 영역 -->
	<c:if test="${ not empty alertMsg }">
		<script>
			alert("${ alertMsg }");
		</script>
		<c:remove var="alertMsg" scope="session"/>
	</c:if>
	
    <div id="logoDiv">
    	<img src="./resources/header2Img/navi2.jpg" alt="navi2">
    </div>
    <div id="header">
        <div id="header_2">     <!--여기가 리스트 -->
			<ul>
				<li><a href="${ pageContext.request.contextPath }">H O M E</a></li>
				<li>
					<div class="dropdown">
						<button class="dropbtn">B O A R D</button>
						<div class="dropdown-content">
							<a href="list.no">N O T I C E</a>
							<a href="list.fr">F R E E - B O A R D</a>
							<a href="list.qu">Q U E S T I O N</a>
						</div>
					</div>
				<li>
					<div class="dropdown">
						<button class="dropbtn">C H A R A C T E R</button>
						<div class="dropdown-content">
							<a href="list.ch">캐릭터 게시판</a>
							<a href="list.alltimelistgo">역대수상작</a>
						</div>
					</div>
				</li>
				<li><a href="playground.fr">P L A Y - G R O U N D</a></li>
				<li><a href="goodsMain.go">G O O D S</a></li>
			</ul>
		</div>
   </div>
   <div id="headerIcon">
        <div id="headerIconDiv">     <!--여기가 리스트 -->
            <ul id="headerIconUl">
                <c:choose>
            		<c:when test="${empty loginUser }">
	                	<li><a href="loginform.me"><img src="./resources/header2Img/user1.png" width="20px;"></a></li>
            		</c:when>
            		<c:otherwise>
            			<li><a href="mypage.me"><img src="./resources/header2Img/user1.png" width="20px;"></a></li>
            		</c:otherwise>
                </c:choose>
                <li><a href="mainAdmin.ad"><img src="./resources/header2Img/key.png" width="25px;"></a></li>
                <!-- 굿즈 아이콘 새로 구할 것 -->
                <li><a href="goodsMain.go"><img src="./resources/header2Img/cart.png" width="22px;"></a></li>
                <li><a href="cart.ca"><img src="./resources/header2Img/cart.png" width="22px;"></a></li>
                <li><a href="mainAdmin.ad"><img src="./resources/header2Img/menu.png" width="14px;"></a></li>
            </ul>
        </div>
    </div>
    <br clear="both">
</body>
</html>