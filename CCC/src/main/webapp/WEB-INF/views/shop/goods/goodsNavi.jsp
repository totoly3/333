<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String filePath = request.getContextPath(); %>
    
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="resources/css/goods/img/favicon.png" type="image/png">
    <title>CHAx3 GoodsShop</title>

    <!-- Bootstrap CSS -->
    <link href="resources/css/goods/css/bootstrap.css" rel="stylesheet">
    <link href="resources/css/goods/css/themify-icons.css" rel="stylesheet">
    <link href="resources/css/goods/css/flaticon.css" rel="stylesheet">
    <link href="resources/css/goods/vendors/fontawesome/css/all.min.css" rel="stylesheet">
    <link href="resources/css/goods/vendors/animate-css/animate.css" rel="stylesheet">
    <link href="resources/css/goods/vendors/popup/magnific-popup.css" rel="stylesheet">
    
    <!-- main css -->
    <link href="resources/css/goods/css/style.css" rel="stylesheet">
    <link href="resources/css/goods/css/responsive.css" rel="stylesheet">
    <link href="resources/css/goods/css/responsive.css" rel="stylesheet">
    
</head>
<body>

    <!--================ Start header Top Area =================-->
    <section class="header-top">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-6 col-lg-4">
                    <div class="float-left">
                        <ul class="header_social">
                            <li><a href="#"><i class="ti-facebook"></i></a></li>
                            <li><a href="#"><i class="ti-twitter"></i></a></li>
                            <li><a href="#"><i class="ti-instagram"></i></a></li>
                            <li><a href="#"><i class="ti-skype"></i></a></li>
                            <li><a href="#"><i class="ti-vimeo"></i></a></li>
                        </ul>   
                    </div>
                </div>
                <div class="col-6 col-lg-4 col-md-6 col-sm-6 logo-wrapper">
                    <a href="cart.ca" class="logo">
                        <!-- <img src="resources/css/goods/img/logo.png" alt=""> -->
                        <img src="resources/css/goods/img/chalogo3.jpg" alt="">
                        
                        <!-- <h1 style="color: rgb(253, 108, 169);">CHAx3</h1> -->
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 search-trigger">
                    <div class="right-button">
                        <ul>
                           <!-- <li><a id="search" href="javascript:void(0)"><i class="fas fa-search"></i></a></li> -->
                            <li><a id="search" href="javascript:void(0)"><i class="fas fa-search"></i></a></li>
                            <li><a href="cart.ca">Cart</a></li>
                            <li><a href="">Login</a></li>
                            <li><a href="">Wish</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="search_input" id="search_input_box">
            <div class="container">
                <form class="d-flex justify-content-between search-inner">
                    <input type="text" class="form-control" id="search_input" placeholder="Search Here">
                    <button type="submit" class="btn"></button>
                    <span class="ti-close" id="close_search" title="Close Search"></span>
                </form>
            </div>
        </div>
    </section>
    
    <script>
	    $("#search").click(function(){
			$(".search_input").css("display","block");
		})
		$("#close_search").click(function(){
    		$(".search_input").css("display","none");
    	})
    </script>
    
    <!--================ End header top Area =================-->

    <!-- Start header Menu Area -->
    <header id="header" class="header_area">
        <div class="main_menu">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
                        	<li class="nav-item active"><a class="nav-link" href="index.html">Home</a></li>
                        	<!-- 데코 드롭다운 -->
                       		<li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Decoration</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=1">Stiker</a></li>
                                    <li class="nav-item"><a class="nav-link" href="detail.go">Poster</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=3">Masking tape</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=4">Gift wrapping</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=5">Badge / Wapen</a></li>
                                </ul>
                            </li>
                            <!-- 다이어리 드롭다운 -->
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Diary/Planner</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=6">Diary</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=7">Planner</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=8">Calendar</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=9">Scheduler</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=10">Organizer</a></li>
                                </ul>
                            </li>
                            <!-- 노트 드롭다운 -->
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Note/Memo</a>
                                <ul class="dropdown-menu">
                                	<li class="nav-item"><a class="nav-link" href="list.go?menu=11">Post it</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=12">Memo paper</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=13">Basic Note</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=14">Hardcover Note</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=15">Spring Note</a></li>
                                </ul>
                            </li>
                            <!-- 사무용풍 드롭다운 -->
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Office Supplies</a>
                                <ul class="dropdown-menu">
                                	<li class="nav-item"><a class="nav-link" href="list.go?menu=16">Pen</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=17">Card / Envelope</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=18">File binder</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=19">Art tools</a></li>
                                </ul>
                            </li>
                            <!-- 패션 드롭다운 -->
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Fashion accessories</a>
                                <ul class="dropdown-menu">
                                	<li class="nav-item"><a class="nav-link" href="list.go?menu=20">Bag</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=21">Pouch / Wallet</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=22">Umbrella</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=23">Carrier</a></li>
                                </ul>
                            </li>
                            <!-- 디지털용품 드롭다운 -->
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Digital</a>
                                <ul class="dropdown-menu">
                                	<li class="nav-item"><a class="nav-link" href="list.go?menu=24">Phone</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=25">Tablet</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=26">PC / Laptop</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=27">Camera</a></li>
                                </ul>
                            </li>
                             <!-- 뷰티용품 드롭다운 -->
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Beauty</a>
                                <ul class="dropdown-menu">
                                	<li class="nav-item"><a class="nav-link" href="list.go?menu=28">Skin care</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=29">MAke up</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=30">Cleansing</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=31">Hair / body</a></li>
                                </ul>
                            </li>
                                                        
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!-- End header MEnu Area -->
    
    <br>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="resources/css/goods/js/jquery-2.2.4.min.js"></script>
<script src="resources/css/goods/js/popper.js"></script>
<script src="resources/css/goods/js/bootstrap.min.js"></script>
<script src="resources/css/goods/js/stellar.js"></script>
<script src="resources/css/goods/vendors/popup/jquery.magnific-popup.min.js"></script>
<script src="resources/css/goods/js/jquery.ajaxchimp.min.js"></script>
<script src="resources/css/goods/js/waypoints.min.js"></script>
<script src="resources/css/goods/js/mail-script.js"></script>
<script src="resources/css/goods/js/contact.js"></script>
<script src="resources/css/goods/js/jquery.form.js"></script>
<script src="resources/css/goods/js/jquery.validate.min.js"></script>
<script src="resources/css/goods/js/mail-script.js"></script>
<script src="resources/css/goods/js/theme.js"></script>
</body>
</html>