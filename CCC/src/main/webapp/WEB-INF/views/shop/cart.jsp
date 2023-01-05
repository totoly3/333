<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <!-- Required meta tags -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 부트스트랩에서 제공하고 있는 스타일 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
    	#headerRaiseUp{
            z-index: 8;
            position: relative;
            top: -155px;
        }
        /* Make the image fully responsive */
        .carousel-inner img {
            width: 100%;
            height: 100%;
        }
        #cart-area tr{
            border: solid 1px lightgray;
        }
        #cart-td-center{
            text-align: center;
        }
        #cart-td-left{
            text-align: left;
        }
        
        /*리모콘*/
        .remoteDiv{
        	position: fixed;
        	border: 1px solid red;
        	width: 100px;
        	height: 200px;
        	right: 100px;
        	bottom: 350px;
			display: none;
        }
    </style>
    <title>CCC::장바구니</title>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<div class="container" id="headerRaiseUp">
    <!-- CAROUSEL START -->
    <div id="carouselId" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ul class="carousel-indicators">
            <li data-target="#carouselId" data-slide-to="0" class="active"></li>
            <li data-target="#carouselId" data-slide-to="1"></li>
            <li data-target="#carouselId" data-slide-to="2"></li>
            <li data-target="#carouselId" data-slide-to="3"></li>
            <li data-target="#carouselId" data-slide-to="4"></li>
            <li data-target="#carouselId" data-slide-to="5"></li>
            <li data-target="#carouselId" data-slide-to="6"></li>
            <li data-target="#carouselId" data-slide-to="7"></li>
            <li data-target="#carouselId" data-slide-to="8"></li>
			<li data-target="#carouselId" data-slide-to="9"></li>
        </ul>
        
        <!-- The slideshow -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="resources/goods/image/goods01.jpg" alt="">
            </div>
            <div class="carousel-item">
                <img src="resources/goods/image/goods02.jpg" alt="">
            </div>
            <div class="carousel-item">
                <img src="resources/goods/image/goods03.jpg" alt="">
            </div>
            <div class="carousel-item">
                <img src="resources/goods/image/goods04.jpg" alt="">
            </div>
            <div class="carousel-item">
                <img src="resources/goods/image/goods05.jpg" alt="">
            </div>
            <div class="carousel-item">
                <img src="resources/goods/image/goods06.jpg" alt="">
            </div>
            <div class="carousel-item">
                <img src="resources/goods/image/goods07.jpg" alt="">
            </div>
            <div class="carousel-item">
                <img src="resources/goods/image/goods08.jpg" alt="">
            </div>
            <div class="carousel-item">
                <img src="resources/goods/image/goods09.jpg" alt="">
            </div>
            <div class="carousel-item">
                <img src="resources/goods/image/goods10.jpg" alt="">
            </div>
            
        </div>
        
        <!-- Left and right controls -->
        <a class="carousel-control-prev" href="#carouselId" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#carouselId" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
    <!-- CAROUSEL END -->
    
    <br><br><br>
    
    <!-- CART START-->
    <div class="cartDiv">
        <form action="">
            <div class="cartHead">
                <span style="font-size: 16pt; font-weight: bold;">장바구니</span>
                <span class="home">홈 > 장바구니</span>
            </div>
            <div class="cartBody">
                <table id="cart-area">
                    <thead>
                        <tr>
                            <th colspan="7" style="text-align: left; padding-left: 10px;">일반상품(1)</th>
                        </tr>
                        <tr align="center" style="height:30px;">
                            <th><input type="checkbox" name="checkbox" id="allCheck" style="width:20px; height:20px;"></th>
                            <th colspan="2" style="width: 700px;"><span>상품정보</span></th>
                            <th style="width:110px;">가격</th>
                            <th style="width:50px;">수량</th>
                            <th style="width:110px;">합계</th>
                            <th style="width:110px;">선택</th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:choose>
                    		<c:when test="${not empty clist}">
                    			<c:forEach var="c" items="${clist}">
                    				<tr style="height: 90px; background-color: #fff;">
			                            <td class="cart-td-center" style="text-align:left; text-align:center; border-right: none;">
			                                <input type="checkbox" name="checkbox" style="width:20px; height:20px;">
			                            </td>
			                            <td style="width: 100px; border-left: none; border-right: none;"><img style="width: 80%;" src="${c.goodsAttachChangeName}" alt="${c.goodsAttachFilePath } "></td>
			                            <td style="width: 600px; text-align:left; padding-left: 10px; border-left: none; font-weight: bold;">${c.goodsName }</td>
			                            <td class="cart-td-center" style="width: 100px; "><span style="padding-left: 10px;">${c.goodsPrice }</span>원</td>
			                            <td class="cart-td-center" style="width: 70px;">
			                        		<input type="hidden" name="" value="${c.cartNo }">
			                                <input type="number" style="text-align: right; width: 50px; margin-bottom: 5px;" min="1" max="99" step="1" value="${c.quantity }">
			                                <button type="button" class="btn default quantityBtn" style="size: 10px; border-radius: 3px; border: 0px;">변경</button>
			                            </td>
			                            <td class="cart-td-center" style="width: 100px;"><span class="trPrice">${c.goodsPrice*c.quantity}</span>원</td>
			                            <td class="cart-td-center" style="width: 110px;">
			                                <button type="button"  class="btn default buyBtn" style="border-radius: 3px; width: 110px; margin-bottom: 3px; font-size: 11px; background-color: lightpink; border:0px;">구매</button>
			                                <button type="button"  class="btn default addWishBtn" style="border-radius: 3px; width: 110px; margin-bottom: 3px; font-size: 11px; background-color: rgb(235, 194, 215); border:0px;">관심상품 등록</button>
			                                <button type="button"  class="btn default deleteBtn" style="border-radius: 3px; width: 110px; margin-bottom: 3px; font-size: 11px; background-color: rgb(236, 181, 236); border:0px;">삭제</button>
			                            </td>
			                        </tr>
                    			</c:forEach>
                    		</c:when>
                    		<c:otherwise>
                    			<tr>
                            		<th colspan="7" style="text-align: left; padding-left: 10px;">
                            			<h2 align="center">장바구니가 비어 있습니다.</h2>
                            		</th>
                        		</tr>
                    		</c:otherwise>
                    	</c:choose>
                    </tbody>
                    <tfoot>
                        <tr style="height: 60px;">
                            <td colspan="7" style="border-right: none; text-align: left; padding-left: 10px;">
                                <span class="totalGoodsPrice" style="font-size:15pt; margin-right: 20px;">상품 금액</span>+<span style="font-size:15pt; margin: 0 20px 0 20px;">배송비 2,500 =</span><span class="totalPrice">합계</span>&nbsp;<span style="font-weight: bold; font-size:15pt;">1,000,000원</span>
                            </td>
                        </tr>
                    </tfoot>
                </table>
                <br>
                <div id="">
                    <button type="button"  class="btn default deleteCheckBtn" style="border-radius: 3px; width: 150px; margin-bottom: 3px; font-size: 11px; background-color: rgb(230, 171, 171); border:0px;">선택상품 삭제하기</button>
                    <button type="button"  class="btn default clearCartBtn" style="border-radius: 3px; width: 150px; margin-bottom: 3px; font-size: 11px; background-color: rgb(214, 240, 189); border:0px;">장바구니 비우기</button>
                    <span class="clearboth"></span>
                </div>
                <br><br>
                <div align="center">
                    <button type="button" class="btn default buyAllGoodsBtn" style="border-radius: 3px; width: 100px; height: 50px; margin: 0 10px 0 0; font-size: 11px; background-color: rgb(238, 161, 206); border:0px;">전체 상품주문</button>
                    <button type="button" class="btn default buyCheckGoodsBtn" style="border-radius: 3px; width: 100px; height: 50px; margin: 0 10px 0 10; 3px; font-size: 11px; background-color: rgb(236, 181, 236); border:0px;">선택 상품주문</button>
                    <button type="button" class="btn default goShopBtn" style="border-radius: 3px; width: 100px; height: 30px; margin: 0 10px 0 10; 3px; font-size: 11px; background-color: lightpink; border:0px; float: right;">쇼핑 계속하기</button>
                </div>
                <br><br><br>
                <div style="border: solid 1px lightgray; padding: 10px 0; font-size: 11pt; background-color: antiquewhite; padding-left: 10px;">이용안내</div>
                <div style="border: solid 1px rgb(191, 196, 191); height: 300px; font-size: 9pt; padding-left: 10px;">
                    <br>장바구니 이용 안내
                    <ol>
                        <li class="lifont">선택하신 상품의 수량을 변경하시려면 수량변경 후 [변경] 버튼을 누르시면 됩니다.</li>
                        <li class="lifont">장바구니와 관심상품을 이용하여 원하시는 상품을 주문하거나 관심상품으로 등록하실 수 있습니다.</li>
                        <li class="lifont"></li>
                    </ol>
                   	 무이자할부 이용안내
                    <ol>
                        <li class="lifont">상품별 무이자할부 혜택을 받으시려면 무이자할부 상품만 선택하여 [주문하기]버튼을 눌러 주문/결제하시면 됩니다.</li>
                        <li class="lifont">[전체 상품 주문] 버튼을 누르시면 장바구니의 구분없이 선택된 모든 상품에 대한 주문/결제가 이루어집니다.</li>
                        <li class="lifont">단, 전체 상품을 주문/결제하실 경우, 상품별 무이자할부 혜택을 받으실 수 없습니다.</li>
                        <li class="lifont">무이자할부 상품은 장바구니에서 별도 무이자할부 상품 영역에 표시되어, 무이자할부 상품 기준으로 배송비가 표시됩니다.</li>
                        <li class="lifont">실제 배송비는 함께 주문하는 상품에 따라 적용되오니 주문서 하단의 배송비 정보를 참고하시기 바랍니다.</li>
                    </ol>

                </div>
            </div>
        </form>
    </div>
    <br><br><br><br><br>
    
    <div class="remoteDiv">
    	<span id="remoteController">리모콘쓰</span>
    	<table>
    		<tr><td>1번 항목</td></tr>
    		<tr><td>2번 항목</td></tr>
    		<tr><td>3번 항목</td></tr>
    		<tr><td>4번 항목</td></tr>
    	</table>
    </div>

    <script>
    
        // 체크박스 전체 체크 or 체크해제
        $("#allCheck").change(function(){
        	var isChecked = $("#allCheck").is(":checked");
//         	console.log("isChecked : " + isChecked);
       		var trArr = $("#cart-area>tbody tr");
       		
        	if(isChecked){
//         		console.log("체크됨");
				$(trArr).find(":checkbox").prop("checked", true);
        	}
        	else{
//         		console.log("체크안됨");
        		$(trArr).find(":checkbox").prop("checked", false);
        	}
        });
        
        // 수량변경 버튼 클릭 --------------------------------- Start
		$(".quantityBtn").click(function(){
// 			console.log("quantityBtn clicked");
			var quantity = $(this).prev().val();
			var cartNo = $(this).prev().prev().val();
// 			console.log("카트 번호 : " + cartNo);
// 			console.log("상품 변경 수량 : " + quantity);
			
			// DB에 장바구니 수량 변경
			changeQuantity(cartNo, quantity);
			
			// 화면에 행 합계 표시 변경
			var price = $(this).parent().prev().children();
			var temp = price.text()*quantity;
			console.log("price is " + temp);
			
			var trTotal = $(this).parent().next();
			trTotal.html(temp+'원');
			
			changeTotalPrice();
		});
		
        // db 수량 변경 ajax
		function changeQuantity(cartNo, quantity){
// 			console.log("changeQuantity() 실행");
			$.ajax({
				url : "changeQuantity.ca",
				data : {
					cartNo : cartNo,
					quantity : quantity
				},
				success : function(result){
// 					console.log("결과는 : " + result);
				},
				error : function(){
					console.alert("changeQuantity 실패");
				}
			});
		};
		// 수량변경 버튼 클릭 --------------------------------- End
		
		// 최종 금액 변경 -> 나중에 할 것.
		function changeTotalPrice(){
			var trPrice =$("#cart-area>tbody tr");
			var totalPrice = 0;
// 			console.log(trPrice.length);
			
// 			for(var i=0; i<trPrice.length; i++){
// 				var temp = trPrice.eq(i).find('td').eq(5).find('span').text();
// 				console.log(temp);
// 			}
			// 왜 마지막 4번 tr만 값이 안 나오는지 모르겠음
// 			var test = trPrice.eq(4).find('td').eq(5).find('span').text();
// 			console.log("test :" + test);
			
		}
		
		
		// 개별 구매
		$(".buyBtn").click(function(){
			// 개별 구매 페이지로 이동
			// 장바구니에서 해당 굿즈 삭제
// 			console.log("buyBtn clicked");
			
			var cartNo = $(this).parent().prev().prev().find('input').eq(0).val();	// 카트 번호
			var quantity = $(this).parent().prev().prev().find('input').eq(1).val();	// 굿즈 수량
// 			console.log(cartNo+"를 "+quantity+"개 구매");
			
			var response = window.confirm("선택한 굿즈를 구매하시겠습니까?");
// 			console.log("response : " + response);
			if(response){
				location.href="buyGoods.ca?cartNo="+cartNo;				
			}
		});
		
		// 관심상품 추가 --------------------------------- Start
		$(".addWishBtn").click(function(){
			// 해당 굿즈를 관심상품으로 등록
			// prompt창으로 성공 실패여부 반환
			// +@ : 관심상품 여부를 표시 등록/삭제로 토글 
// 			console.log("addWishBtn clicked");
		
			var cartNo = $(this).parent().prev().prev().find('input').eq(0).val();	// 카트 번호
// 			console.log("상품 번호 : " + cartNo);
			
			checkWish(cartNo);
		});
		
		function checkWish(cartNo){
// 			console.log("checkWish() 실행");
			$.ajax({
				url : "checkWish.ca",
				data : {
					cartNo : cartNo
				},
				success : function(result){
					console.log("결과는 : " + result);
					if(result > 0){
						removeWish(cartNo);
						window.alert("관심상품 삭제!")
					}
					else{
						addWish(cartNo);
						window.alert("관심상품 등록!")
					}
				},
				error : function(){
					console.alert("checkWish 실패");
				}
			});
		}
		
		function addWish(cartNo){
// 			console.log("addWish() 실행");
			$.ajax({
				url : "addWish.ca",
				data : {
					cartNo : cartNo
				},
				success : function(result){
					console.log("addWish : " + result);
				},
				error : function(){
					console.alert("addWish 실패");
				}
			});
		};
		
		function removeWish(cartNo){
// 			console.log("removeWish() 실행");
			$.ajax({
				url : "removeWish.ca",
				data : {
					cartNo : cartNo
				},
				success : function(result){
					console.log("removeWish : " + result);
				},
				error : function(){
					console.alert("removeWish 실패");
				}
			});
		};
		// 관심상품 추가 --------------------------------- End
		
		// 장바구니에서 개별 삭제
		$(".deleteBtn").click(function(){
// 			console.log("deleteBtn clicked");
			var cartNo = $(this).parent().prev().prev().find('input').eq(0).val();	// 카트 번호
// 			console.log("삭제할 상품 번호 : " + cartNo);
			
			var response = window.confirm("선택한 굿즈를 장바구니에서 삭제하겠습니까?");
// 			console.log("response : " + response);
			if(response){
				$(this).parent().parent().remove();	// 해당 굿즈 tr 삭제

				// 장바구니 테이블에서 해당 굿즈 삭제
				deleteGoodsInCart(cartNo);
			}
		});
		
		function deleteGoodsInCart(cartNo){
			console.log("deleteGoodsInCart() 실행");
			$.ajax({
				url : "deleteGoodsInCart.ca",
				data : {
					cartNo : cartNo
				},
				success : function(result){
					console.log("deleteGoodsInCart :"+result);
				},
				error : function(){
					console.alert("deleteGoodsInCart 실패");
				}
			});
		}

		// 장바구니에서 체크한 굿즈 삭제
		$(".deleteCheckBtn").click(function(){
			// 체크가 되어있으면 해당 굿즈 tr 삭제
// 			console.log("deleteCheckBtn clicked");
			
			var response = window.confirm("선택한 굿즈들을 장바구니에서 삭제하시겠습니까?");
// 			console.log("response : " + response);
			if(response){
	        	var trArr = $("#cart-area>tbody tr");
// 				console.log(trArr);

				// 체크된 번호를 담아서 전달할 배열
				let chkArr = new Array();
				
				trArr.each(function (index, item){
					// index는 0부터 시작함
					var chkbox = $(item).find(":checkbox");
					var isChecked = chkbox.is(":checked");
					
					var cartNo = $(item).find(":hidden").val();
					console.log("cartNo : " + cartNo);
					
					if(isChecked){
						console.log("체크O : " + index);
						chkArr.push(cartNo);
						$(item).remove();
					}
				});
				console.log("주문리스트 : " + chkArr);
				if(chkArr.length==0){
					console.log("길이 : " + chkArr.length);
					window.alert("선택된 상품이 없습니다.");
				}
				else{
					// chkArr로 ajax처리
					deleteCheckGoodsInCart(chkArr);
				}
			}
		});
		
		function deleteCheckGoodsInCart(chkArr){
			console.log("deleteCheckGoodsInCart() 실행");
			$.ajax({
				url : "deleteCheckGoodsInCart.ca",
				data : {
					chkArr : chkArr
				},
				success : function(result){
					console.log("deleteCheckGoodsInCart :"+result);
				},
				error : function(){
					console.alert("deleteCheckGoodsInCart 실패");
				}
			});
		}
		
		// 장바구니 전체 삭제
		$(".clearCartBtn").click(function(){
			// 해당 회원의 장바구니에 있는 굿즈들을 전부 삭제
			console.log("clearCartBtn clicked");
			
			var response = window.confirm("장바구니를 비우시겠습니까?");
// 			console.log("response : " + response);
			if(response){
	        	var trArr = $("#cart-area>tbody tr");
// 				console.log(trArr);

				// 체크된 번호를 담아서 전달할 배열
				let chkArr = new Array();
				
				trArr.each(function (index, item){
					var cartNo = $(item).find(":hidden").val();
					console.log("cartNo : " + cartNo);
					
					chkArr.push(cartNo);
					$(item).remove();
				});
				
				console.log("주문리스트 : " + chkArr);
				if(chkArr.length==0){
					console.log("길이 : " + chkArr.length);
					window.alert("선택된 상품이 없습니다.");
				}
				else{
					// chkArr로 ajax처리
					deleteCheckGoodsInCart(chkArr);
				}
			}
		});
		
		
		// 전체 상품 주문
		$(".buyAllGoodsBtn").click(function(){
// 			console.log("buyAllGoodsBtn clicked");
			
			var response = window.confirm("모든 굿즈를 구매하시겠습니까?");
// 			console.log("response : " + response);
			if(response){
				// 체크된 번호를 담아서 전달할 배열
				let chkArr = new Array();
				
				var trArr = $("#cart-area>tbody tr");
// 				console.log(trArr);
// 				console.log("길이 : " + trArr.length);
				if(trArr.length == 0){
					window.alert("장바구니가 비어있습니다.");
				}
				else{
					// 해당 회원의 장바구니에서 해당 품목과 상품 수를 조회
					trArr.each(function (index, item){
						var chkbox = $(item).find(":checkbox");
						var goodsNo = $(item).find(":hidden").val();
// 						console.log("goodsNo : " + goodsNo);
						chkArr.push(goodsNo);
					});   
					console.log("주문리스트 : " + chkArr);
					if(chkArr.length==0){
						console.log("길이 : " + chkArr.length);
						window.alert("선택된 상품이 없습니다.");
					}
					else{
						var cartNoArr = chkArr.join("-");
						console.log("cartNoJsonArr : " + cartNoArr);
						location.href="buyManyGoods.ca?cartNoArr="+cartNoArr;	
					}
				}
			}
		});
		
		
		// 선택 상품 주문
		$(".buyCheckGoodsBtn").click(function(){
// 			console.log("buyCheckGoodsBtn clicked");
			
			var response = window.confirm("선택한 굿즈들을 구매하시겠습니까?");
// 			console.log("response : " + response);
			if(response){
				// 해당 회원의 장바구니에서 체크된 항목의 상품과 수를 조회

				// 체크된 번호를 담아서 전달할 배열
				let chkArr = new Array();
				
	        	var trArr = $("#cart-area>tbody tr");
// 				console.log(trArr);
				
				trArr.each(function (index, item){
					var chkbox = $(item).find(":checkbox");
					var cartNo = $(item).find(":hidden").val();
// 					console.log("cartNo : " + cartNo);
					var isChecked = chkbox.is(":checked");
					if(isChecked){
// 						console.log("체크O : " + index);
						chkArr.push(cartNo);
					}
// 					else{
// 						console.log("체크X : " + index);
// 					}
				});   
// 				console.log("주문리스트 : " + chkArr);
				if(chkArr.length==0){
					console.log("길이 : " + chkArr.length);
					window.alert("선택된 상품이 없습니다.");
				}
				else{
					var cartNoArr = chkArr.join("-");
					console.log("cartNoJsonArr : " + cartNoArr);
					location.href="buyManyGoods.ca?cartNoArr="+cartNoArr;	
				}
			}
		});
		
		$(".goShopBtn").click(function(){
			// 상품리스트 페이지로 이동
// 			console.log("goShopBtn clicked");
			
			var response = window.confirm("상품 페이지로 이동하시겠습니까?");
// 			console.log("response : " + response);
			if(response){
				location.href="shop.go";
			}
		});
        
		
		//  리모콘
		$(document).scroll(function(){
			var con = $(".remoteDiv");
			var position = $(window).scrollTop();
			
			if(position > 250){
				con.fadeIn(500);
			}
			else if(position < 250){
				con.fadeOut(500);
			}
		});
		
// 		$(".remoteDiv").click(function(){
			// 클릭 시 position 500으로 이동
// 			$("html, body").animate( {scrollTop: 500}, 1000);
// 		});
		$(".remoteDiv>table tr td").click(function(){
			console.log("remote > table > tr클릭");
		});
    </script>

    <!-- CART END-->
</div>
</body>
</html>