<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
<!-- 	  <!-- 우선 jQuery를 추가합니다. --> -->
<!-- 	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->
	
<!-- 	<!-- 그 다음 datepicker 플러그인을 추가합니다. --> -->
<!-- 	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script> -->
	
	
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  
  <style>
  
  #alltime2{
  height : 350px;
  float : bottom;
  position: relative; top: 400px;
  }
    #alltime1{
  height : 450px;
  position: relative; top: 300px;
  }
    #alltime3{
  height : 250px;
  position: relative; top: 500px;
  }
     #rk1{
  background-color:red;
  height : 135px;
  width: 250px;
  
  }
  
  #rk1 img {
  height: 100%;
  width: 100%;
  }
  #rk2 img {
  height: 100%;
  width: 100%;
  }
  #rk3 img {
  height: 100%;
  width: 100%;
  }
  
    #rk3{
  background-color: black;
  height : 100px;
  width: 150px;
 
  }
    #rk2{
  background-color:green;
  height : 135px;
  width: 200px;
  
  }
  #datepicker {
  background-color: #fff;
  cursor: pointer;
  color : black;
  }
  
  </style>
</head>
<body> 

	<jsp:include page="/WEB-INF/views/common/header.jsp"/>

	<div class="container mt-3">
			  <h2>역대 수상작</h2>
			  <p>좋아요 순</p>
		  	 <button type="button" class="btn btn-primary"  onclick="ThisMonthLikes();">이번달 좋아요 높은순</button>
		  	
		  	 <button type="button" class="btn btn-danger"  onclick="ThisYearLikes();">올해 좋아요 높은순</button>
		  	 
		  	 <input type="button" class="btn btn-success" id="datepicker" value='기간별 좋아요'>
		  	 	
		  	 <table id="allTimeLikeList1">
		  	 
		  	 	<tbody>
					
		  	 	</tbody>
		  	 
		  	 </table>
		  	
	
	  			<c:if test="${!altimelist.isEmpty()}">
						
					  <div class="d-flex mb-3">
<%-- 						    <div class="p-2 flex-fill bg-info" id="alltime2" > 좋아요 : ${altimelist.get(1).like}<p id="rk2"><img src="${altimelist.get(1).changeName}"></p>좋아요 2등 </div> --%>
						    
						   	
<%-- 						    <div class="p-2 flex-fill bg-warning" id="alltime1" > 좋아요 : ${altimelist.get(0).like}<p id="rk1"><img src="${altimelist.get(0).changeName}"></p>좋아요1등 </div> --%>
						    
						   	
<%-- 						    <div class="p-2 flex-fill bg-primary" id="alltime3" >좋아요 : ${altimelist.get(2).like}<p id="rk3"><img src="${altimelist.get(2).changeName}"></p>좋아요 3등</div> --%>
					  </div>
					  	
				</c:if>
				<c:if test="${altimelist.isEmpty()}">
					캐릭터 게시판 비어있음
				</c:if>
			
	</div>
	
	<script >

		//아래는 이번달 좋아요 
		function ThisMonthLikes(){
			
			$.ajax({
				url : "ThisMonthLikes.li",
 				success : function(result){
 					console.log("연결성공");

 					var resultStr = "";
					
					resultStr += "<div>"
					                +"<div class='p-2 flex-fill bg-info' id='alltime2'>" + result[1].like + "<p id='rk1'><img src='" + result[1].changeName + "' style='height: 100%; width: 100%;'></p>좋아요2등</div>"
 					                +"<div class='p-2 flex-fill bg-warning' id='alltime1'>" +result[0].like + "<p id='rk1'><img src='" + result[0].changeName  + "' style='height: 100%; width: 100%;'></p>좋아요1등</div>"
 					                +"<div class='p-2 flex-fill bg-primary' id='alltime3'>" + result[2].like + "<p id='rk1'><img src='" + result[2].changeName + "' style='height: 100%; width: 100%;'></p>좋아요3등</div>"
					            +"</div>";
 					
					$("#allTimeLikeList1 > tbody").html(resultStr);
				},
				error : function(){
					console.log("통신실패");
				}	
			
			});
		}
	
		//아래는 올해 좋아요 순 
		function ThisYearLikes(){
			$.ajax({
				url : "ThisYearLikes.li",
				success : function(result){
					console.log(result)
					console.log("연결성공");
					
					var resultStr = "";
						
			resultStr += "<div>"
			            	    +"<div class='p-2 flex-fill bg-info' id='alltime2'>" + result[1].like + "<p id='rk1'><img src='" + result[1].changeName + "' style='height: 100%; width: 100%;'></p>좋아요2등</div>"
				                +"<div class='p-2 flex-fill bg-warning' id='alltime1'>" +result[0].like + "<p id='rk1'><img src='" + result[0].changeName  + "' style='height: 100%; width: 100%;'></p>좋아요1등</div>"
				                +"<div class='p-2 flex-fill bg-primary' id='alltime3'>" + result[2].like + "<p id='rk1'><img src='" + result[2].changeName + "' style='height: 100%; width: 100%;'></p>좋아요3등</div>"
			            +"</div>";

					
					  $("#allTimeLikeList1 > tbody").html(resultStr);
				},
				error : function(){
					console.log("통신실패");
				}	
			});
		}
		
// 		$(function() {
// 			  $("#datepicker").datepicker({
// 			    showOn: "button",
// 			    buttonImage: "calendar.png",
// 			    buttonImageOnly: true,
// 			    buttonText: "Select date"
// 			  });
// 			});
		
	</script>

</body>
</html>