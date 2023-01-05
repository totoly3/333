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
    
    <!-- css 링크 -->
    <%-- <link href="${pageContext.request.contextPath}/resources/css/goods/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/goods/css/bootstrap.css" rel="stylesheet"> --%>

	
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
                            <li><a id="search" href="javascript:void(0)"><i class="fas fa-search"></i></a></li>
                            <li><a href="">Cart</a></li>
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
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=sticker">Stiker</a></li>
                                    <li class="nav-item"><a class="nav-link" href="detail.go">Poster</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=masking">Masking tape</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=gift">Gift wrapping</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=badge">Badge / Wapen</a></li>
                                </ul>
                            </li>
                            <!-- 다이어리 드롭다운 -->
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Diary/Planner</a>
                                <ul class="dropdown-menu">
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=diary">Diary</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=planner">Planner</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=calendar">Calendar</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=scheduler">Scheduler</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=organizer">Organizer</a></li>
                                </ul>
                            </li>
                            <!-- 노트 드롭다운 -->
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Note/Memo</a>
                                <ul class="dropdown-menu">
                                	<li class="nav-item"><a class="nav-link" href="list.go?menu=postit">Post it</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=memo">Memo paper</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=basic">Basic Note</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=hardcover">Hardcover Note</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=spring">Spring Note</a></li>
                                </ul>
                            </li>
                            <!-- 사무용풍 드롭다운 -->
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Office Supplies</a>
                                <ul class="dropdown-menu">
                                	<li class="nav-item"><a class="nav-link" href="list.go?menu=pen">Pen</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=card">Card / Envelope</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=binder">File binder</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=art">Art tools</a></li>
                                </ul>
                            </li>
                            <!-- 패션 드롭다운 -->
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Fashion accessories</a>
                                <ul class="dropdown-menu">
                                	<li class="nav-item"><a class="nav-link" href="list.go?menu=bag">Bag</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=pouch">Pouch / Wallet</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=umbrella">Umbrella</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=carrier">Carrier</a></li>
                                </ul>
                            </li>
                            <!-- 디지털용품 드롭다운 -->
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Digital</a>
                                <ul class="dropdown-menu">
                                	<li class="nav-item"><a class="nav-link" href="list.go?menu=phone">Phone</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=tablet">Tablet</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=pc">PC / Laptop</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=camera">Camera</a></li>
                                </ul>
                            </li>
                             <!-- 뷰티용품 드롭다운 -->
                            <li class="nav-item submenu dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Beauty</a>
                                <ul class="dropdown-menu">
                                	<li class="nav-item"><a class="nav-link" href="list.go?menu=skin">Skin care</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=make">Make up</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=cleansing">Cleansing</a></li>
                                    <li class="nav-item"><a class="nav-link" href="list.go?menu=hair">Hair / body</a></li>
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

    <!--================Fullwidth block Area =================-->

    <section class="fullwidth-block area-padding-bottom">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 col-lg-6 col-xl-5">
                    <div class="single-blog">
                        <div class="thumb">
                            <!-- 사진 -->
                            <img class="img-fluid" src="resources/css/goods/img/Ardium-Pop-illustration-message-card-envelope-set-01__90557.jpg" alt="">
                        </div>
                        <div class="short_details">
                            <div class="meta-top d-flex">
                                <a href="#">Decoration & Sticker</a>
                            </div>
                            <a class="d-block" href="single-blog.html">
                                <h4>'HAVE A NICE DAY' removable deco sticker pack 리무버블 스티커 팩 세트</h4>
                            </a>
                            <div class="meta-bottom d-flex" >
                                <a href="#">March 12 , 2019 . </a>
                                <a class="dark_font" href="#">By Alen Mark</a>
                            </div>
                        </div>
                    </div>    
                </div>

                <div class="col-md-6 col-lg-6 col-xl-4">
                    <div class="single-blog style_two">
                        <div class="thumb">
                            <!-- 사진 -->
                            <img class="img-fluid" src="resources/css/goods/img/Ardium-Square-paper-point-deco-sticker-18__75048.jpg" alt="">
                        </div>
                        <div class="short_details text-center ">

                            <div class="meta-top d-flex justify-content-center">
                                <a href="#">Decoration & Sticker</a>
                            </div>
                            <a class="d-block" href="single-blog.html">
                                <h4>Puppy picture gift wrapping package - 인더무드 스티커 팩 </h4>
                            </a>
                            <div class="meta-bottom d-flex justify-content-center">
                                <a href="#">March 12 , 2019 . </a>
                                <a href="#">By Alen Mark</a>
                            </div>
                        </div>
                    </div>    
                </div>

                <div class="col-lg-12 col-xl-3">
                    <div class="row">
                        <div class="col-12 col-md-6 col-lg-6 col-xl-12">
                            <div class="single-blog style-three m_b_30">
                                <div class="thumb">
                                    <img class="img-fluid" src="resources/css/goods/img/Ardium-Pop-illustration-message-card-envelope-set-10__81148.jpg" alt="">
                                </div>
                                <div class="short_details">

                                    <div class="meta-top d-flex justify-content-center">
                                        <a href="#">Note & Memo</a>
                                    </div>
                                    <a class="d-block" href="single-blog.html">
                                        <h4>Congraturation - 응원 메시지를 담은 떡메모지 세트 (100 pages)</h4>
                                    </a>
                                </div>
                            </div>

                        </div>
                        <div class="col-12 col-md-6 col-lg-6 col-xl-12">
                            <div class="single-blog style-three">
                                <div class="thumb">
                                    <img class="img-fluid" src="resources/css/goods/img/Ardium-Square-paper-point-deco-sticker-19__51207.jpg" alt="">
                                </div>
                                <div class="short_details">

                                    <div class="meta-top d-flex justify-content-center">
                                        <a href="#">Lifestyle</a>
                                    </div>
                                    <a class="d-block" href="single-blog.html">
                                        <h4>The abundantly brought after day fish there image</h4>
                                    </a>
                                </div>
                            </div>    
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <!--================Fullwidth block Area end =================-->


    <!--================ First block section start =================-->      

    <section class="first_block">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-xl-6">
                    <div class="single-blog row no-gutters style-four border_one">
                        <div class="col-12 col-sm-5">
                            <div class="thumb">
                                <img class="img-fluid" src="resources/css/goods/img/Dash-And-Dot-Lovey-dovey-hologram-deco-sticker-seal-07-12-17__71508.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-12 col-sm-7">
                            <div class="short_details">
                                <div class="meta-top d-flex">
                                    <a href="#">Tours & Travel</a>
                                </div>
                                <a class="d-block" href="single-blog.html">
                                    <h4>Brought all day domi
                                        nion appear from
                                        subdue dominion
                                    firmament over face</h4>
                                </a>
                                <div class="meta-bottom d-flex" >
                                    <a href="#">March 12 , 2019 . </a>
                                    <a class="dark_font" href="#">By Alen Mark</a>
                                </div>
                            </div>  
                        </div>  
                    </div>      
                </div>

                <div class="col-lg-4 col-xl-3">
                    <div class="single-blog style_five">
                        <div class="thumb">
                            <img class="img-fluid" src="resources/css/goods/img/ICONIC-Merry-memo-checklist-planner-notepads-06__72379.jpg" alt="">
                        </div>
                        <div class="short_details ">

                            <div class="meta-top d-flex">
                                <a href="#">Tours & Travel</a>
                            </div>
                            <a class="d-block" href="single-blog.html">
                                <h4>Abundantly forth late
                                appear fourth us.</h4>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-xl-3">
                    <div class="single-blog style_five">
                        <div class="thumb">
                            <img class="img-fluid" src="resources/css/goods/img/nacoo-anyang-kitty-daily-life-removable-waterproof-sticker-ver2-06__85688.jpg" alt="">
                        </div>
                        <div class="short_details ">

                            <div class="meta-top d-flex">
                                <a href="#">Tours & Travel</a>
                            </div>
                            <a class="d-block" href="single-blog.html">
                                <h4>Abundantly forth late
                                appear fourth us.</h4>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ First block section end =================-->  

    <!--================ Editors Picks section start =================-->  

    <section class="editors_pick area-padding">
        <div class="container">
            <div class="row">
                <div class="area-heading">
                    <h3>Editor Picks</h3>
                    <p>Abundantly creeping saw forth spirit can made appear fourth us.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-5 col-xl-6">
                    <div class="single-blog">
                        <div class="thumb">
                            <img class="img-fluid" src="resources/css/goods/img/After-The-Rain-Private-garden-deco-sticker-seal-13__26943.jpg" alt="">
                        </div>
                        <div class="short_details pad_25 ">
                            <div class="meta-top d-flex">
                                <a href="#">Tours & Travel</a>
                            </div>
                            <a class="d-block" href="single-blog.html">
                                <h4>Puppy picture gift wrapping package</h4>
                            </a>
                            <div class="meta-bottom d-flex" >
                                <a href="#">March 12 , 2019 . </a>
                                <a class="dark_font" href="#">By Alen Mark</a>
                            </div>
                        </div>
                    </div>    
                </div>
                <div class="col-lg-7 col-xl-6">
                    <div class="single-blog row no-gutters style-four m_b_30">
                        <div class="col-12 col-sm-7">
                            <div class="short_details padd_left_0">
                                <div class="meta-top d-flex">
                                    <a href="#">Tours & Travel</a>
                                </div>
                                <a class="d-block" href="single-blog.html">
                                    <h4 class="font-20">Light that hath itself god
                                        grass herb dark sea on
                                    the hath dowe </h4>
                                </a>
                                <p>Said spirit evening above good twes at  god midst deep a wherein very made he seas male very broug sad forth saying right.</p>
                            </div>  
                        </div>  
                        <div class="col-12 col-sm-5">
                            <div class="thumb">
                                <img class="img-fluid" src="resources/css/goods/img/After-The-Rain-House-party-twinkle-deco-sticker-15__33597.jpg" alt="">
                            </div>
                        </div>
                    </div> 

                    <div class="single-blog row no-gutters style-four">
                        <div class="col-12 col-sm-5">
                            <div class="thumb">
                                <img class="img-fluid" src="resources/css/goods/img/After-The-Rain-House-party-twinkle-deco-sticker-18__05531.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-12 col-sm-7">
                            <div class="short_details padd_right_0">
                                <div class="meta-top d-flex">
                                    <a href="#">Tours & Travel</a>
                                </div>
                                <a class="d-block" href="single-blog.html">
                                    <h4 class="font-20">Light that hath itself god
                                        grass herb dark sea on
                                    the hath dowe </h4>
                                </a>
                                <p>Said spirit evening above good twes at  god midst deep a wherein very made he seas male very broug sad forth saying right.</p>
                            </div>  
                        </div>  
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="addvertise">
                        <a href=""><img src="resources/css/goods/img/banner/add.jpg" alt=""></a>

                    </div>
                </div>
            </div>
        </div>
    </section>


    <!--================ Editors Picks section end =================-->      



    <!--================ Video section start =================-->  

    <div class="video-area background_one area-padding">
        <div class="container">
            <div class="row">
                <div class="area-heading">
                    <h3>Travel News</h3>
                    <p>Abundantly creeping saw forth spirit can made appear fourth us.</p>
                </div>

            </div>
            <div class="row">
                <div class="col-lg-7">
                    <div class="single-blog video-style">
                        <div class="thumb">
                            <img class="img-fluid" src="resources/css/goods/img/magazine/11.jpg" alt="">
                            <div class="play_btn">
                                <a class="play-video" href="https://www.youtube.com/watch?v=MrRvX5I8PyY" data-animate="zoomIn"
                                data-duration="1.5s" data-delay="0.1s"><span class="ti-control-play"></span></a>
                            </div>
                        </div>
                        <div class="short_details">
                            <div class="meta-top d-flex">
                                <a href="#">shoes</a>/
                                <a href="#">March 15, 2019</a>
                            </div>
                            <a class="d-block" href="single-blog.html">
                                <h4>Puppy picture gift wrapping package</h4>
                            </a>
                            <div class="meta-bottom d-flex">
                                <a href="#"><i class="ti-comment"></i>05 comment</a>
                                <a href="#"><i class="ti-heart"></i> 0 like</a>
                                <a href="#"><i class="ti-eye"></i> 1k view</a>
                            </div>
                        </div>
                    </div> 

                </div> 

                <div class="col-lg-5">
                    <div class="single-blog video-style small row m_b_30">
                        <div class="thumb col-12 col-sm-5">
                            <img class="img-fluid" src="resources/css/goods/img/magazine/12.jpg" alt="">
                            <div class="play_btn">
                                <a class="play-video" href="https://www.youtube.com/watch?v=MrRvX5I8PyY" data-animate="zoomIn"
                                data-duration="1.5s" data-delay="0.1s"><span class="ti-control-play"></span></a>
                            </div>
                        </div>
                        <div class="short_details col-12 col-sm-7">
                            <div class="meta-top d-flex">
                                <a href="#">Beauty</a>
                            </div>
                            <a class="d-block" href="single-blog.html">
                                <h4>Blessed night morning on
                                them you great</h4>
                            </a>
                            <div class="meta-bottom d-flex">
                                <a href="#"><i class="ti-time"></i>mar 12</a>
                                <a href="#"><i class="ti-heart"></i> 0 like</a>
                                <a href="#"><i class="ti-eye"></i> 1k view</a>
                            </div>
                        </div>
                    </div> 

                    <div class="single-blog video-style small row m_b_30 ">
                        <div class="thumb col-12 col-sm-5">
                            <img class="img-fluid" src="resources/css/goods/img/magazine/13.jpg" alt="">
                            <div class="play_btn">
                                <a class="play-video" href="https://www.youtube.com/watch?v=MrRvX5I8PyY" data-animate="zoomIn"
                                data-duration="1.5s" data-delay="0.1s"><span class="ti-control-play"></span></a>
                            </div>
                        </div>
                        <div class="short_details col-12 col-sm-7">
                            <div class="meta-top d-flex">
                                <a href="#">Beauty</a>
                            </div>
                            <a class="d-block" href="single-blog.html">
                                <h4>Blessed night morning on
                                them you great</h4>
                            </a>
                            <div class="meta-bottom d-flex">
                                <a href="#"><i class="ti-time"></i>mar 12</a>
                                <a href="#"><i class="ti-heart"></i> 0 like</a>
                                <a href="#"><i class="ti-eye"></i> 1k view</a>
                            </div>
                        </div>
                    </div>

                    <div class="single-blog video-style small row">
                        <div class="thumb col-12 col-sm-5">
                            <img class="img-fluid" src="resources/css/goods/img/magazine/14.jpg" alt="">
                            <div class="play_btn">
                                <a class="play-video" href="https://www.youtube.com/watch?v=MrRvX5I8PyY" data-animate="zoomIn"
                                data-duration="1.5s" data-delay="0.1s"><span class="ti-control-play"></span></a>
                            </div>
                        </div>
                        <div class="short_details col-12 col-sm-7">
                            <div class="meta-top d-flex">
                                <a href="#">Beauty</a>
                            </div>
                            <a class="d-block" href="single-blog.html">
                                <h4>Blessed night morning on
                                them you great</h4>
                            </a>
                            <div class="meta-bottom d-flex">
                                <a href="#"><i class="ti-time"></i>mar 12</a>
                                <a href="#"><i class="ti-heart"></i> 0 like</a>
                                <a href="#"><i class="ti-eye"></i> 1k view</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


    <!--================ Video section end =================-->  


    <!--================ three-block section start =================-->  

    <div class="three-block  area-padding">
        <div class="container">
            <div class="row">
                <div class="area-heading">
                    <h3>Fashion News</h3>
                    <p>Abundantly creeping saw forth spirit can made appear fourth us.</p>
                </div>

            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="single-blog style-five">
                        <div class="thumb">
                            <img class="img-fluid" src="resources/css/goods/img/magazine/15.jpg" alt="">
                        </div>
                        <div class="short_details">
                            <div class="meta-top d-flex">
                                <a href="#">shoes</a>/
                                <a href="#">March 15, 2019</a>
                            </div>
                            <a class="d-block" href="single-blog.html">
                                <h4>Shall for rule whose toge one
                                may heaven to dat</h4>
                            </a>
                            <div class="meta-bottom d-flex">
                                <a href="#"><i class="ti-comment"></i>05 comment</a>
                                <a href="#"><i class="ti-heart"></i> 0 like</a>
                            </div>
                        </div>
                    </div> 

                </div> 

                <div class="col-lg-4">
                    <div class="single-blog style-five">
                        <div class="thumb">
                            <img class="img-fluid" src="resources/css/goods/img/magazine/16.jpg" alt="">
                        </div>
                        <div class="short_details">
                            <div class="meta-top d-flex">
                                <a href="#">shoes</a>/
                                <a href="#">March 15, 2019</a>
                            </div>
                            <a class="d-block" href="single-blog.html">
                                <h4>Shall for rule whose toge one
                                may heaven to dat</h4>
                            </a>
                            <div class="meta-bottom d-flex">
                                <a href="#"><i class="ti-comment"></i>05 comment</a>
                                <a href="#"><i class="ti-heart"></i> 0 like</a>
                            </div>
                        </div>
                    </div> 

                </div> 

                <div class="col-lg-4">
                    <div class="single-blog style-five">
                        <div class="thumb">
                            <img class="img-fluid" src="resources/css/goods/img/magazine/17.jpg" alt="">
                        </div>
                        <div class="short_details">
                            <div class="meta-top d-flex">
                                <a href="#">shoes</a>/
                                <a href="#">March 15, 2019</a>
                            </div>
                            <a class="d-block" href="single-blog.html">
                                <h4>Shall for rule whose toge one
                                may heaven to dat</h4>
                            </a>
                            <div class="meta-bottom d-flex">
                                <a href="#"><i class="ti-comment"></i>05 comment</a>
                                <a href="#"><i class="ti-heart"></i> 0 like</a>
                            </div>
                        </div>
                    </div> 
                </div> 
            </div>
        </div>
    </div>


    <!--================ three-block section end =================-->  



    <!--================ Latest news section start =================-->  

    <div class="latest-news  area-padding-bottom">
        <div class="container">
            <div class="row">
                <div class="area-heading">
                    <h3>Fashion News</h3>
                    <p>Abundantly creeping saw forth spirit can made appear fourth us.</p>
                </div>

            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="single-blog style-five">
                        <div class="thumb">
                            <img class="img-fluid" src="resources/css/goods/img/magazine/18.jpg" alt="">
                        </div>
                        <div class="short_details">
                            <div class="meta-top d-flex">
                                <a href="#">shoes</a>/
                                <a href="#">March 15, 2019</a>
                            </div>
                            <a class="d-block" href="single-blog.html">
                                <h4>Brought dreepeth youll blessed
                                from whose signs over</h4>
                            </a>
                            <div class="meta-bottom d-flex">
                                <a href="#"><i class="ti-comment"></i>05 comment</a>
                                <a href="#"><i class="ti-heart"></i> 0 like</a>
                            </div>
                        </div>
                    </div> 

                </div> 

                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="single-blog style-five small">
                                <div class="thumb">
                                    <img class="img-fluid" src="resources/css/goods/img/magazine/19.jpg" alt="">
                                </div>
                                <div class="short_details">
                                    <div class="meta-top d-flex">
                                        <a href="#">shoes</a>/
                                        <a href="#">March 15, 2019</a>
                                    </div>
                                    <a class="d-block" href="single-blog.html">
                                        <h4>Shall for rule whoses
                                        may heaven to</h4>
                                    </a>
                                    <div class="meta-bottom d-flex">
                                        <a href="#">March 15, 2019</a>

                                    </div>
                                </div>
                            </div> 
                        </div>

                        <div class="col-lg-6">
                            <div class="single-blog style-five small">
                                <div class="thumb">
                                    <img class="img-fluid" src="resources/css/goods/img/magazine/20.jpg" alt="">
                                </div>
                                <div class="short_details">
                                    <div class="meta-top d-flex">
                                        <a href="#">shoes</a>/
                                        <a href="#">March 15, 2019</a>
                                    </div>
                                    <a class="d-block" href="single-blog.html">
                                        <h4>Shall for rule whoses
                                        may heaven to</h4>
                                    </a>
                                    <div class="meta-bottom d-flex">
                                        <a href="#">March 15, 2019</a>

                                    </div>
                                </div>
                            </div> 
                        </div>

                        <div class="col-lg-6">
                            <div class="single-blog style-five small">
                                <div class="thumb">
                                    <img class="img-fluid" src="resources/css/goods/img/magazine/21.jpg" alt="">
                                </div>
                                <div class="short_details">
                                    <div class="meta-top d-flex">
                                        <a href="#">shoes</a>/
                                        <a href="#">March 15, 2019</a>
                                    </div>
                                    <a class="d-block" href="single-blog.html">
                                        <h4>Shall for rule whoses
                                        may heaven to</h4>
                                    </a>
                                    <div class="meta-bottom d-flex">
                                        <a href="#">March 15, 2019</a>

                                    </div>
                                </div>
                            </div> 
                        </div>

                        <div class="col-lg-6">
                            <div class="single-blog style-five small">
                                <div class="thumb">
                                    <img class="img-fluid" src="resources/css/goods/img/magazine/22.jpg" alt="">
                                </div>
                                <div class="short_details">
                                    <div class="meta-top d-flex">
                                        <a href="#">shoes</a>/
                                        <a href="#">March 15, 2019</a>
                                    </div>
                                    <a class="d-block" href="single-blog.html">
                                        <h4>Shall for rule whoses
                                        may heaven to</h4>
                                    </a>
                                    <div class="meta-bottom d-flex">
                                        <a href="#">March 15, 2019</a>

                                    </div>
                                </div>
                            </div> 
                        </div>          
                    </div>               
                </div> 

            </div>
        </div>
    </div>


    <!--================ Latest news section end =================--> 


    <!-- ================ Instargram Area Starts ================= -->  

    <section class="instagram">
        <div class="row no-gutters">
            <div class="col-2">
                <a href=""><img src="resources/css/goods/img/instagram/1.jpg" alt=""></a>
            </div>
            <div class="col-2">
                <a href=""><img src="resources/css/goods/img/instagram/2.jpg" alt=""></a>
            </div>
            <div class="col-2">
                <a href=""><img src="resources/css/goods/img/instagram/3.jpg" alt=""></a>
            </div>
            <div class="col-2">
                <a href=""><img src="resources/css/goods/img/instagram/4.jpg" alt=""></a>
            </div>
            <div class="col-2">
                <a href=""><img src="resources/css/goods/img/instagram/5.jpg" alt=""></a>
            </div>
            <div class="col-2">
                <a href=""><img src="resources/css/goods/img/instagram/6.jpg" alt=""></a>
            </div>
        </div>
    </section>

    <!-- ================ Instargram Area End ================= -->  


    <!-- ================ start footer Area ================= -->
    <footer class="footer-area">
        <div class="container">
            <div class="row">

                <div class="col-lg-3 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
                    <h4>About Us</h4>
                    <p>Heaven fruitful doesn't over lesser days appear creeping seasons so behold bearing days open</p>
                    <div class="footer-logo">
                        <img src="resources/css/goods/img/logo.png" alt="">
                    </div>
                </div>

                <div class="col-lg-3 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
                    <h4>Contact Info</h4>
                    <div class="footer-address">
                        <p>Address :Your address goes
                        here, your demo address.</p>
                        <span>Phone : +8880 44338899</span>
                        <span>Email : info@colorlib.com</span>
                    </div>
                </div>

                <div class="col-lg-3 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
                    <h4>Important Link</h4>
                    <ul>
                        <li><a href="#">WHMCS-bridge</a></li>
                        <li><a href="#">Search Domain</a></li>
                        <li><a href="#">My Account</a></li>
                        <li><a href="#">Shopping Cart</a></li>
                        <li><a href="#">Our Shop</a></li>
                    </ul>
                </div>

                <div class="col-lg-3 col-sm-6 col-md-6 mb-4 mb-xl-0 single-footer-widget">
                    <h4>Newsletter</h4>
                    <p>Heaven fruitful doesn't over lesser in days. Appear creeping seasons deve behold bearing days open</p>

                    <div class="form-wrap" id="mc_embed_signup">
                        <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                        method="get">
                        <div class="input-group">
                            <input type="email" class="form-control" name="EMAIL" placeholder="Your Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '">
                            <div class="input-group-append">
                                <button class="btn click-btn" type="submit">
                                    <i class="fab fa-telegram-plane"></i>
                                </button>
                            </div>
                        </div>
                        <div style="position: absolute; left: -5000px;">
                            <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
                        </div>

                        <div class="info"></div>
                    </form>
                </div>

            </div>
        </div>
        <div class="footer-bottom row align-items-center text-center text-lg-left no-gutters">
            <p class="footer-text m-0 col-lg-8 col-md-12"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            <div class="col-lg-4 col-md-12 text-center text-lg-right footer-social">
                <a href="#"><i class="ti-facebook"></i></a>
                <a href="#"><i class="ti-twitter-alt"></i></a>
                <a href="#"><i class="ti-dribbble"></i></a>
                <a href="#"><i class="ti-linkedin"></i></a>
            </div>
        </div>
    </div>
</footer>
<!-- ================ End footer Area ================= -->


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