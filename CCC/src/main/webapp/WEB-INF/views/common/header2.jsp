<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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

        .jini1{
            width:100%;
            z-index: 1;
        }
        


        #header_2{
            z-index: 5;
            position: relative;
            top: -75px;
            left: 30px;
        }

        #navi22222{
            z-index: 6;
            position: relative;
            top: -100px;
            left: 900px;
        }

        #header_4>ul {width:100%; height:100%; list-style-type:none; margin:auto; padding:0;}
        #header_4>ul>li {float:left; width:4%; height:100%; line-height:55px; text-align:center;}
        #header_4>ul>li a {text-decoration:none; color:rgb(255, 255, 255); font-size:12px; font-weight:600;}
        
        #header_4{
            z-index: 5;
            position: relative;
            top: -58px;
            left: 30px;
        }

        #navi44444{
            z-index: 6;
            position: relative;
            top: -100px;
            left: 1300px;
        }

    </style>
</head>
<body>
	
    <div id="jini1">
    	<img src="./resources/header2Img/navi2.jpg" alt="navi2">      
    </div>


    <div id="header">
        <div id="header_2">     <!--여기가 리스트 -->
           <ul id="navi11111">
               <li><a href="${ pageContext.request.contextPath }">H O M E</a></li>
               <li><a href="">N O T I C E</a></li>
               <li><a href="list.fr">F R E E - B O A R D</a></li>
               <li><a href="list.fr">T I P</a></li>
               <li><a href="list.ch">C H A R A C T E R</a></li>
               <li><a href="list.ch">W O R L D - C U P</a></li>
           </ul>
       </div>
   </div>

   <div id="header4">
        <div id="header_4">     <!--여기가 리스트 -->
            <ul id="navi44444">
                <li><a href=""><img src="./resources/header2Img/user1.png" width="20px;"></a></li>
                <li><a href="mainAdmin.ad"><img src="./resources/header2Img/key.png" width="25px;"></a></li>
                <li><a href="cart.ca"><img src="./resources/header2Img/cart.png" width="22px;"></a></li>
                <li><a href="mainAdmin.ad"><img src="./resources/header2Img/menu.png" width="14px;"></a></li>
            </ul>
        </div>
    </div>

    
    <br clear="both">
    
</body>
</html>