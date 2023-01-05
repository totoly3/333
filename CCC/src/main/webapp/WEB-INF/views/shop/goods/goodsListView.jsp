<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Sticker List Page</title>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <link rel="stylesheet" href="resources/css/listView/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/listView/css/animate.css">
    
    <link rel="stylesheet" href="resources/css/listView/css/owl.carousel.min.css">
    <link rel="stylesheet" href="resources/css/listView/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="resources/css/listView/css/magnific-popup.css">

    <link rel="stylesheet" href="resources/css/listView/css/aos.css">

    <link rel="stylesheet" href="resources/css/listView/css/ionicons.min.css">
    
    <link rel="stylesheet" href="resources/css/listView/css/flaticon.css">
    <link rel="stylesheet" href="resources/css/listView/css/icomoon.css">
    <link rel="stylesheet" href="resources/css/listView/css/style.css"> -->
    
</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

	<!-- 네비바 -->
 	<jsp:include page="/WEB-INF/views/shop/goods/goodsNavi.jsp"/>
 	
 	
 	<c:if test="${not empty loginUser}">
		<!-- 로그인 후 상태일 경우만 보여지는 글쓰기 버튼 -->
		<a class="btn btn-secondary" style="float:right;" href="insert.bo">글쓰기</a>
	</c:if>
	<a class="btn btn-secondary" style="float:right;" href="insert.go">글쓰기</a>

	<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center pb-5">
			
		</div>
    
    	<div class="row">
        
        <!-- 리스트 뽑기 -->
	        <c:choose>
				<c:when test="${ not empty list }">
					<c:forEach var="b" items="${ list }">
				        <div class="col-md-6 col-lg-4 ftco-animate">
			                <div class="project">
			                    <div class="img">
			                        <a href="destination.html"><img src="resources/css/listView/images/destination-1.jpg" class="img-fluid" alt="Colorlib Template"></a>
			                    </div>
			                    
			                    <div class="text">
			                        <!-- <h4 class="price"><span class="old-price mr-2">$500</span>$400</h4> -->
			                        <span>${b.goodsCategory}</span><br>
			                        <span>${b.goodsPrice}원</span>
			                        <h3><a href="destination.html">${b.goodsName}</a></h3>
			                        <div class="star d-flex clearfix">
			                            <div class="mr-auto float-left">
			                                <span class="ion-ios-star"></span>
			                                <span class="ion-ios-star"></span>
			                                <span class="ion-ios-star"></span>
			                                <span class="ion-ios-star"></span>
			                                <span class="ion-ios-star"></span>
			                            </div>
			                            <div class="float-right">
			                                <span class="rate"><a href="#">(120)</a></span>
			                            </div>
			                        </div>
			                    </div>
			                    <a href="resources/css/listView/images/destination-1.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
			                        <span class="icon-expand"></span>
			                    </a>
			                </div>
			            </div>
	                </c:forEach>
				</c:when>
				<c:otherwise>
					조회된 게시글이 없습니당...
				</c:otherwise>
			</c:choose>
            
            
            <!-- 기존 -->
            
            <!--  
            <div class="col-md-6 col-lg-4 ftco-animate">
                <div class="project">
                    <div class="img">
                        <a href="destination.html"><img src="resources/css/listView/images/destination-1.jpg" class="img-fluid" alt="Colorlib Template"></a>
                    </div>
                    <div class="text">
                        <h4 class="price"><span class="old-price mr-2">$500</span>$400</h4>
                        <span>15 Days Tour</span>
                        <h3><a href="destination.html">Gurtnellen, Swetzerland</a></h3>
                        <div class="star d-flex clearfix">
                            <div class="mr-auto float-left">
                                <span class="ion-ios-star"></span>
                                <span class="ion-ios-star"></span>
                                <span class="ion-ios-star"></span>
                                <span class="ion-ios-star"></span>
                                <span class="ion-ios-star"></span>
                            </div>
                            <div class="float-right">
                                <span class="rate"><a href="#">(120)</a></span>
                            </div>
                        </div>
                    </div>
                    <a href="resources/css/listView/images/destination-1.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
                        <span class="icon-expand"></span>
                    </a>
                </div>
            </div>
            -->
        </div>
    </div>
</section>


<br><br><br><br><br><br><br>
	
	
	

 <!--  <script src="resources/css/listView/js/jquery.min.js"></script>
  <script src="resources/css/listView/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="resources/css/listView/js/popper.min.js"></script>
  <script src="resources/css/listView/js/bootstrap.min.js"></script>
  <script src="resources/css/listView/js/jquery.easing.1.3.js"></script>
  <script src="resources/css/listView/js/jquery.waypoints.min.js"></script>
  <script src="resources/css/listView/js/jquery.stellar.min.js"></script>
  <script src="resources/css/listView/js/owl.carousel.min.js"></script>
  <script src="resources/css/listView/js/jquery.magnific-popup.min.js"></script>
  <script src="resources/css/listView/js/aos.js"></script>
  <script src="resources/css/listView/js/jquery.animateNumber.min.js"></script>
  <script src="resources/css/listView/js/scrollax.min.js"></script>  
  <script src="resources/css/listView/js/main.js"></script> -->
    
  </body>
</html>