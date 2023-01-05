<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>

	<title>Melon Music Awards</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />



	<link href="resources/css/freeboard/style_fr.css" rel="stylesheet">
	
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>


<div id="month202212" class="month-timeline d_timeline ">

	

	<div class="sec-week-wrap">
		<div class="fix-timeline">
			<div class="green-box">
				

				<strong> 01.02</strong>	
			</div>
		</div>
		<div class="area">
			<div class="sec-title">
				<h2>
					 <button type="button" class="btn btn-primary"  onclick="ThisMonthLikes();">이번달 좋아요 높은순</button>
		  	
		 		 	 <button type="button" class="btn btn-danger"  onclick="ThisYearLikes();">올해 좋아요 높은순</button>
				</h2>
			</div>
		</div>

		<div class="area-type2">
			<div class="weekly-result-set"> <!-- 유저정보를 불러욜 경우 Type2를 붙혀준다 -->
				<div class="list-section">
					<div class="img-area">
						
						
						<span class="n1"></span><!-- 클래스 n1 ~ n5 -->						
						
					</div>
					<div class="list-area">
						<ul>

							<li class="num01">
								<div class="vote-info">
									<div class="vote-rate">
										<div class="rank-area">
											<span class="rank n01">순위</span>
											
											<p class="score">70.0<span class="txt">점</span></p>
										</div>
										<div class="graph-area type1">
											<!--  -->
											<div class="rankName1">
											
												<div><b>좋아요 1등 !</b></div>	
											</div>
			
										</div>
									</div>
								</div>
							</li>

							<li class="num02">
								<div class="vote-info">
									<div class="vote-rate">
										<div class="rank-area">
											<span class="rank n02">순위</span>
											
											<p class="score">66.7<span class="txt">점</span></p>
										</div>
										<div class="graph-area type1">
											<!-- 복수 아티스트 -->
											<div class="artist-info">
												<div class="artist-cont">
			
				
													<a href="javascript:melon.link.goArtistDetail('3114174');" title="NewJeans" class="artist">NewJeans</a>													
			
												</div>
												
										
													
												<div class="song-cont">
													<a href="javascript:melon.play.playSong('57170101',35945927);" class="song">Ditto</a>
												</div>
											</div>
											<div class="vote-rate">
												<p>투표 3위 (24.9점) + 주간차트 1위 (41.8점)</p>
												
												<table id="allTimeLikeList2">
		  	 
												  	 	<tbody>
															
												  	 	</tbody>
										  	 
											  	 </table>
												
											</div>
											<p class="user-area" style="display:none;" id="v_2022122618"><span class="ellipsis">노래하는멜론노래하는멜론</span>님은 72표를 주셨네요! <br>지금까지 300번 들었습니다.</p>											
										</div>
									</div>
								</div>
							</li>
	

							<li class="num03">
								<div class="vote-info">
									<div class="vote-rate">
										<div class="rank-area">
											<span class="rank n03">순위</span>
											
											<p class="score">60.5<span class="txt">점</span></p>
										</div>
										<div class="graph-area type1">
											<!-- 복수 아티스트 -->
											<div class="artist-info">
												<div class="artist-cont">
			
				
													<a href="javascript:melon.link.goArtistDetail('725991');" title="RM" class="artist">RM</a>													
			
												</div>
												
										
													
												<div class="song-cont">
													<a href="javascript:melon.play.playSong('57170101',35888486);" class="song">들꽃놀이 (with 조유진)</a>
												</div>
											</div>
											<div class="vote-rate">
												<p>좋아요3위  </p>
												  	 
													  	 </table>
											</div>
										</div>
									</div>
								</div>
							</li>


						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="area">
			<div class="btn-area-allview"><a href="#a1" class="btn-allview d_click_log_area" data-click-log="페이지이동,,투표결과,전체보기,,,," data-award-mon="202212" data-award-week="5"><span class="visible">전체보기</span></a></div>
		</div>
	</div>


	
</div>

	<script type="text/javascript">
		
		
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
		/*			
					var resultStr = "";
						
			resultStr += "<div>"
			            	    +"<div>" + result[1].like + "<p ><img src='" + result[1].changeName + "' style='height: 100%; width: 100%;'></p>좋아요2등</div>"
				                +"<div >" +result[0].like + "<p ><img src='" + result[0].changeName  + "' style='height: 100%; width: 100%;'></p>좋아요1등</div>"
				                +"<div>" + result[2].like + "<p ><img src='" + result[2].changeName + "' style='height: 100%; width: 100%;'></p>좋아요3등</div>"
			            +"</div>";
// 			            charName
			*/	
			
			var resultStr = ""; 	 // 좋아요만
			var resultStr2 = "";	 //좋아요만
			var resultStr3 = "";	 //좋아요만 
			var resultStrimg = "";   //이미지
			var resultStrName= ""; //1등 이미지
			
			
			///////아래1등 좋아요만//////
			resultStr += "<div>"
				                +"<div >" +result[0].like + "</div>"
			            +"</div>";
			
			    //아래는 1등이미지         
            resultStrimg += "<div>"
				                +"<div >" +"<p ><img src='" + result[0].changeName  + "' style='height: 100%; width: 100%;'></p>좋아요1등</div>"
				           +"</div>";            
			  //1등 이름
           resultStrName += "<div>"
				                +"<div >" + result[0].charName  + "</div>"
				           +"</div>"; 	           
			            
           ///////아래2등 좋아요//////
           resultStr2 += "<div>"
       					    +"<div>" + result[1].like + "</div>"
			           +"</div>";
           
           
           
           //////////아래 좋아요3등///////
           resultStr3 += "<div>"
          				     +"<div>" + result[2].like + "</div>"
				         +"</div>";
				         
				         
					  $(".img-area").html(resultStrimg); //1등은 이미지만 
					  $(".rankName1> div").html(resultStrName); //1등 이름 
					  
					  $("#allTimeLikeList2 > tbody").html(resultStr2);
					  $("#allTimeLikeList3 > tbody").html(resultStr3);
				},
				error : function(){
					console.log("통신실패");
				}	
			});
		}
		
		
		
	</script>


</body>
</html>