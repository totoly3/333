<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .orderdetail content {
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

        table * {margin:5px;}
        table {width:100%;}
    </style>
</head>
<body>
        
	<jsp:include page="/WEB-INF/views/common/header2.jsp"/> 

    <div class="orderdetail content">
        <br><br>
        <div class="innerOuter">
            <h2 align="center">주문목록</h2>
            <br>
            <a class="btn btn-secondary" style="float:right;" href="">주문상세</a>
            <br><br>
            
            <p>주문자: ${loginUser.mName}님</p>
            <p>구매수량(리스트 상품개수): ${fn:length(orderDetail)} </p>
            
            <!--한 상품에 대한 테이블영역 -->
            <table id="contentArea" algin="center" class="table">
                  <tr>
                    <th width="100">주문번호:</th>
                    <td colspan="3">${myOrderDetail.orderNo}</td>
                  </tr>
                   <tr>
                  </tr>
                  <tr>
                    <th width="100">주문일자</th>
                    <td colspan="3">${myOrderDetail.orderDate}</td>
                 </tr>
                 <tr>
                    <th width="100">배송주소:</th>
                    <td colspan="2">${myOrderDetail.deliveryName}</td>
                    <td><a href="">배송정보상세보기영역? 고민중</a></td>
                 </tr>
                 <tr>
                    <th width="100">총가격:</th>
                    <td colspan="3">${myOrderDetail.orderFinalAmount}</td>
                 </tr>
            </table>
            
            <br>
            
            <hr color="red" style="font-size: bold">
            
            <!-- 여러상품리스트가 들어갈 영역 -->
            <c:forEach var="o" items="${orderDetail}">
	            <table id="contentArea" algin="center" class="table">
	                  <tr>
	                    <th width="100">굿즈상세번호:</th>
	                    <td colspan="3">${o.orderDetailNo}</td>
	                    <input type="hidden"  value="${o.orderNo}" name="oNo" >
	                  </tr>
	                  <tr>
	                    <th width="100">상품명:</th>
	                    <td colspan="2">${o.goodsName}</td>
	                    <td>
	                       <!-- 배송이 진행중일때만 보여줌 -->
	                       <!-- 상품번호/상세번호 넘기기-->
	                       <div> <a class="btn btn-primary" id="delivery" onclick="location.href='delivery.my?'">배송조회</a></div>
                         </td>
	                   </tr>
	                   
	                   <tr>
	                    <th width="100">상품번호</th>
	                    <td colspan="3">${o.goodsNo}</td>
	                   </tr>
	                   <tr>
	                    <td colspan="4">
	                     <p style="height:50px;">사진명: ${o.goodsOriginName}:</p>
	                     <img alt="" src="${o.goodsFilePath}||${o.goodsFilePath}" width="100" height="100"> 
	                    </td>
                      </tr>
	                  <tr>
	                    <th>굿즈옵션1</th>
	                    <td colspan="3">${o.option1} </td>
	                  </tr>
	                  <tr>
	                    <th>굿즈옵션2</th>
	                    <td colspan="3">${o.option2}</td>
	                 </tr>
	                 
	                 <tr>
	                    <td colspan="4"><p style="height:150px;"></p></td>
	                 </tr>
	            </table>
            </c:forEach>

            <div align="center">
                <!-- 수정하기, 삭제하기 버튼은 이 글이 본인이 작성한 글일 경우에만 보여져야 함 -->
                <a class="btn btn-primary" onclick="javascript:history.go(-1);" >마이페이지로</a>
            </div>
            <br><br>

            <!-- 댓글 기능은 나중에 ajax 배우고 나서 구현할 예정! 우선은 화면구현만 해놓음 -->
        </div>
       <br><br>
    </div>
    
</body>
</html>