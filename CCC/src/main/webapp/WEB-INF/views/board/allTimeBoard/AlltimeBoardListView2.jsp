<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		<head>
	
			<title>Melon Music Awards</title>
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
			
				<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
			
		
			<meta property="og:title" content="Melon Music Awards" id="ogTitle">
			<meta property="fb:app_id" content="357952407588971">
			<meta property="og:image" content="https://cdnimg.melon.co.kr/svc/images/mma2022/cdnImg20221014022401,png" id="ogImage">
			<meta property="og:description" content="[MMA] 멜론주간인기상 이번 주 인기 1위는 누구? 투표하러가기>" id="ogDescription">
			<meta property="og:url" content="http://melon.com/weekAward" id="ogUrl">
			<meta property="og:site_name" content="멜론">
		
			
		
			
		
			<script type="text/javascript" src="/resource/script/web/common/jquery-1.9.1.min.js"></script>
			<script type="text/javascript" src="https://member.melon.com/resource/script/web/member/melonweb_member_external.js?tm=20230105"></script>
			<script type="text/javascript" src="/resource/script/cds/common/web/member_api.js"></script>
			<script type="text/javascript" src="/resource/script/cds/common/web/commerce_api.js"></script>
			<script type="text/javascript" src="/resource/script/web/common/MPAPI.js?tm=20171129"></script>
			<link rel="stylesheet" type="text/css" href="/resource/style/web/common/melonweb_cmt.css">
			<script type="text/javascript" src="/resource/script/web/event/kakao.min.ver_1_38_0.js"></script>
			<script type="text/javascript" src="https://cdnimg.melon.co.kr/static/web/resource/script/w1/qj/q/zxswuqpsk24.js"></script>
		
			
			
				
				<script type="text/javascript" src="/resource/script/cds/common/web/member_api.js"></script>
				<script type="text/javascript" src="/resource/script/cds/common/web/commerce_api.js"></script>
			
			<script type="text/javascript">
				document.domain="melon.com";
		
				(function() {
					WEBPOCIMG = {
						defaultImg : function(obj, width){
							if(width == null || width == '') width = $(obj).width();
		
							var thumbType = "_500";
							if(width > 0 && width <= 38){
								thumbType = "_38";
							} else if(width > 38 && width <= 52){
								thumbType = "_52";
							} else if(width > 52 && width <= 70){
								thumbType = "_70";
							} else if(width > 70 && width <= 120){
								thumbType = "_120";
							} else if(width > 120 && width <= 200){
								thumbType = "_200";
							} else if(width > 200){
								thumbType = "_500";
							}
		
							altSrc = "//cdnimg.melon.co.kr/resource/image/web/default/noAlbum" + thumbType + ".jpg";
		
							obj.src = altSrc;
						},
						defaultAlbumImg : function(obj, width){
							if(width == null || width == '') width = $(obj).width();
		
							var thumbType = "_500";
							if(width > 0 && width <= 38){
								thumbType = "_38";
							} else if(width > 38 && width <= 52){
								thumbType = "_52";
							} else if(width > 52 && width <= 70){
								thumbType = "_70";
							} else if(width > 70 && width <= 120){
								thumbType = "_120";
							} else if(width > 120 && width <= 200){
								thumbType = "_200";
							} else if(width > 200){
								thumbType = "_500";
							}
		
							altSrc = "//cdnimg.melon.co.kr/resource/image/web/default/noAlbum" + thumbType + ".jpg";
		
							obj.src = altSrc;
						},
						defaultArtistImg : function(obj, width){
							if(width == null || width == '') width = $(obj).width();
		
							var thumbType = "_300";
							if(width > 0 && width <= 34){
								thumbType = "_34";
							} else if(width > 34 && width <= 40){
								thumbType = "_40";
							} else if(width > 40 && width <= 54){
								thumbType = "_54";
							} else if(width > 54 && width <= 70){
								thumbType = "_70";
							} else if(width > 70 && width <= 100){
								thumbType = "_100";
							} else if(width > 100 && width <= 120){
								thumbType = "_120";
							} else if(width > 120 && width <= 160){
								thumbType = "_160";
							} else if(width > 160 && width <= 200){
								thumbType = "_200";
							} else if(width > 200 && width <= 300){
								thumbType = "_300";
							}
		
							altSrc = "//cdnimg.melon.co.kr/resource/image/web/default/noArtist" + thumbType + ".jpg";
		
							obj.src = altSrc;
						},
						defaultArtistImgMMA : function(obj, width){
							if(width == null || width == '') width = $(obj).width();
		
							var thumbType = "_420x360";
							if(width > 0 && width <= 80){
								thumbType = "_80x80";
							} else if(width > 80 && width <= 90){
								thumbType = "_90x90";
							} else if(width > 90 && width <= 136){
								thumbType = "_136x136";
							} else if(width > 136 && width <= 164){
								thumbType = "_164x164";
							} else if(width > 164 && width <= 200){
								thumbType = "_200x200";
							} else if(width > 200 && width <= 228){
								thumbType = "_228x228";
							} else if(width > 228 && width <= 230){
								thumbType = "_230x230";
							} else if(width > 230 && width <= 292){
								thumbType = "_292x219";
							} else if(width > 292 && width <= 320){
								thumbType = "_320x320";
							} else if(width > 320 && width <= 420){
								thumbType = "_420x360";
							} else if(width > 420 && width <= 452){
								thumbType = "_452x312";
							}
		
							altSrc = "//cdnimg.melon.co.kr/resource/image/web/default/thumb_people" + thumbType + ".jpg";
		
							obj.src = altSrc;
						},
						defaultDjImg : function(obj){
						},
						
						defaultPlaylistImg : function(obj, width){
							if(width == null || width == '') width = $(obj).width();
		
							var thumbType = "_500";
							if(width > 0 && width <= 38){
								thumbType = "_38";
							} else if(width > 38 && width <= 52){
								thumbType = "_52";
							} else if(width > 52 && width <= 70){
								thumbType = "_70";
							} else if(width > 70 && width <= 114){
								thumbType = "_114";
							} else if(width > 114 && width <= 120){
								thumbType = "_120";
							} else if(width > 120 && width <= 200){
								thumbType = "_200";
							} else if(width > 200){
								thumbType = "_500";
							}
		
							altSrc = "//cdnimg.melon.co.kr/resource/image/web/default/noAlbum" + thumbType + ".jpg";
		
							obj.src = altSrc;
						},
						defaultMemberImg : function(obj, width){
							if(width == null || width == '') width = $(obj).width();
		
							var thumbType = "_130";
							if(width > 0 && width <= 40){
								thumbType = "_40";
							} else if(width > 40 && width <= 54){
								thumbType = "_54";
							} else if(width > 54 && width <= 72){
								thumbType = "_72";
							} else if(width > 72 && width <= 96){
								thumbType = "_96";
							} else if(width > 96 && width <= 112){
								thumbType = "_112";
							} else if(width > 112){
								thumbType = "_130";
							}
		
							altSrc = "//cdnimg.melon.co.kr/resource/image/web/default/noUser" + thumbType + ".jpg";
		
							obj.src = altSrc;
						},
						defaultPhotoImg : function(obj, width){
							if(width == null || width == '') width = $(obj).width();
		
							var thumbType = "_500";
							if(width > 0 && width <= 200){
								thumbType = "_200";
							} else if(width > 200) {
								thumbType = "_500";
							}
							/* 				if(width > 0 && width <= 60){
												thumbType = "_60";
											} else if(width > 60 && width <= 120){
												thumbType = "_120";
											} else if(width > 120 && width <= 200){
												thumbType = "_200";
											} else if(width > 200 && width <= 300){
												thumbType = "_300";
											} else if(width > 300 && width <= 500){
												thumbType = "_500";
											} else if(width > 500){
												thumbType = "_700";
											} */
		
							altSrc = "//cdnimg.melon.co.kr/resource/image/web/default/noAlbum" + thumbType + ".jpg";
		
							obj.src = altSrc;
						}
					}
				})();
				
				
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
					
					var resultStr1 = "";  //1등
					var resultStr2 = "";  //2등
					var resultStr3 = "";  //3등
					
					
					
				                
				                /////////////////아래 1등////////////////////
			resultStr1 += "<div>"
				                +"<div class='p-2 flex-fill bg-warning' id='alltime1'>" +result[0].like + "<p id='rk1'><img src='" + result[0].changeName  + "' style='height: 100%; width: 100%;'></p>좋아요1등</div>"
			            +"</div>";
								
								
								/////////////////아래 2등////////////////////
            resultStr2 += "<div>"
        	    +"<div class='p-2 flex-fill bg-info' id='alltime2'>" + result[1].like + "<p id='rk1'><img src='" + result[1].changeName + "' style='height: 100%; width: 100%;'></p>좋아요2등</div>"
         				  +"</div>";    
       						  	
       						  	
       						  	/////////////////아래 3등////////////////////
		 	resultStr3 += "<div>"
                +"<div class='p-2 flex-fill bg-primary' id='alltime3'>" + result[2].like + "<p id='rk1'><img src='" + result[2].changeName + "' style='height: 100%; width: 100%;'></p>좋아요3등</div>"
						+"</div>";   
          
					
					  $("#allTimeLikeList1 > tbody").html(resultStr1);
					  $("#allTimeLikeList2 > tbody").html(resultStr2);
					  $("#allTimeLikeList3 > tbody").html(resultStr3);
				
				
				},
				error : function(){
					console.log("통신실패");
				}	
			});
		}
				
				
			</script>
		<link rel="stylesheet" type="text/css" href="//cdnimg.melon.co.kr/mma/week/css/web/melonweb_mma-8940ac25c2.css"><link href="//cdnimg.melon.co.kr/mma/year/css/common-pc-d14479937f.css" rel="stylesheet"><link rel="stylesheet" type="text/css" href="//cdnimg.melon.co.kr/mma/year/css/mma2022/pc/style-8727be17de.css"><link rel="stylesheet" type="text/css" href="//cdnimg.melon.co.kr/mma/week/css/web/mma2022/mma2022-e517e2a181.css"><script src="//cdnimg.melon.co.kr/mma/year/js/mma2021/pc/script-723b6cbd52.js"></script><link rel="stylesheet" type="text/css" href="/resource/style/MMA2018/web/melonweb_mma_comm.css?v=1536128940437">
	
	<style>
		
	
	
					.cont-history #container *, .cont-weekaward #container *, .cont-history #container *:before, .cont-weekaward #container *:before, .cont-history #container *:after, .cont-weekaward #container *:after, .popup-wrap * {
			    -webkit-box-sizing: content-box;
			    box-sizing: content-box;
			}
			.weekly-result-set {
			    overflow: hidden;
			}
			body, th, td, li, dt, dd, p, div {
			    font: 12px "Malgun Gothic", "AppleGotihc", "NanumGothic", '돋움', Dotum, '굴림', Gulim, Helvetica, Arial ,sans-serif;
			    color: #747474;
			}
			div {
			    margin: 0;
			}
			body, th, td, li, dt, dd, p, div {
			    font-family: -apple-system, AppleSDGothicNeo, AppleGotihc, "Malgun Gothic", NanumGothic,'돋움',Dotum,'굴림',Gulim,Helvetica,Arial,sans-serif;
			    font-size: 12px;
			    line-height: 1.25em;
			}
			body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, textarea, p, blockquote, th, td, input, select, button {
			    margin: 0;
			    padding: 0;
			}
			body, th, td, li, dt, dd, p, div {
			    color: #747474;
			    font: 12px "Malgun Gothic", "AppleGotihc", "NanumGothic", '돋움', Dotum, '굴림', Gulim, Helvetica, Arial ,sans-serif;
			}
			div {
			    margin: 0;
			}
			*, *:after, *:before {
			    -webkit-box-sizing: border-box;
			    -webkit-tap-highlight-color: rgba(0,0,0,0);
			    box-sizing: border-box;
			}
			사용자 에이전트 스타일시트
			div {
			    display: block;
			}
			.cont-weekaward .wrap-content, .cont-history .wrap-content {
			    font-family: -apple-system, AppleSDGothicNeo, AppleGotihc, "Malgun Gothic", NanumGothic,'돋움',Dotum,'굴림',Gulim,Helvetica,Arial,sans-serif;
			}
			body, p, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, table, th, td, form, fieldset, legend, input, textarea, button, select {
			    margin: 0;
			    padding: 0;
			    font-size: 100%;
			}
			body, th, td, input, select, textarea, button {
			    font-family: Pretendard, -apple-system,"SF Pro Text","Apple SD Gothic Neo",AppleSDGothicNeo-Regular,AppleGothic,NanumGothic,"Malgun Gothic","돋움",dotum,"굴림",Gulim,Helvetica,Arial,sans-serif;
			}
			body, th, td, input, select, textarea, button {
			    color: #333;
			    font-family: -apple-system,"SF Pro Text","Apple SD Gothic Neo",AppleSDGothicNeo-Regular,AppleGothic,NanumGothic,"Malgun Gothic","돋움",dotum,"굴림",Gulim,Helvetica,Arial,sans-serif;
			    font-size: 12px;
			    line-height: 1.5;
			}
			body, p, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, table, th, td, form, fieldset, legend, input, textarea, button, select {
			    margin: 0;
			    padding: 0;
			    font-size: 100%;
			}
			:root {
			    --swiper-navigation-size: 44px;
			}
			:root {
			    --swiper-theme-color: #007aff;
			}
			.cont-history #container *, .cont-weekaward #container *, .cont-history #container *:before, .cont-weekaward #container *:before, .cont-history #container *:after, .cont-weekaward #container *:after, .popup-wrap * {
			    -webkit-box-sizing: content-box;
			    box-sizing: content-box;
			}
			*, *:after, *:before {
			    -webkit-box-sizing: border-box;
			    -webkit-tap-highlight-color: rgba(0,0,0,0);
			    box-sizing: border-box;
			}
			.cont-history #container *, .cont-weekaward #container *, .cont-history #container *:before, .cont-weekaward #container *:before, .cont-history #container *:after, .cont-weekaward #container *:after, .popup-wrap * {
			    -webkit-box-sizing: content-box;
			    box-sizing: content-box;
			}
			*, *:after, *:before {
			    -webkit-box-sizing: border-box;
			    -webkit-tap-highlight-color: rgba(0,0,0,0);
			    box-sizing: border-box;
			}
				
	</style>
	
	</head>

	<body>
		<jsp:include page="/WEB-INF/views/common/header.jsp"/>
	
			
		  	 <button type="button" class="btn btn-primary"  onclick="ThisMonthLikes();">이번달 좋아요 높은순</button>
		  	
		  	 <button type="button" class="btn btn-danger"  onclick="ThisYearLikes();">올해 좋아요 높은순</button>
		  	 
		  
	
	
		<div id="month202212" class="month-timeline d_timeline ">
			<div class="sec-week-wrap">
				<div class="fix-timeline">
					<div class="green-box">
						
		
						<strong> 12.19</strong>	
					</div>
				</div>
				<div class="area">
					<div class="sec-title">
						<h2>
							<span class="num-term num-term01 n12">12</span>
							<span class="txt-term month">월</span>
							<span class="num-term num-term02 n3">3</span>
							<span class="txt-term week">주차</span>
							<p><img src="//cdnimg.melon.co.kr/mma/week/img/MMA2014/web/award/txt_weekly_top20_0524.png" width="404" height="37" alt="멜론 주간 인기상 TOP 20" /></p>
						</h2>
					</div>
				</div>
		
				<div class="area-type2">
					<div class="weekly-result-set"> <!-- 유저정보를 불러욜 경우 Type2를 붙혀준다 -->
						<div class="list-section">
							<div class="img-area">
								
								
								<table id="allTimeLikeList1">
		  	 
							  	 	<tbody>
										
							  	 	</tbody>
							  	 
							  	 </table>
								<span class="n1"></span><!-- 클래스 n1 ~ n5 -->						
								
							</div>
							<div class="list-area">
								<ul>
		
									<li class="num01">
										<div class="vote-info">
											<div class="vote-rate">
												<div class="rank-area">
													<span class="rank n01">순위</span>
													
													<p class="score">68.6<span class="txt">점</span></p>
												</div>
												<div class="graph-area type1">
													<!-- 복수 아티스트 -->
													<div class="artist-info">
														<div class="artist-cont">
					
						
															<a href="javascript:melon.link.goArtistDetail('994944');" title="임영웅" class="artist" >임영웅</a>													
					
														</div>
														
												
															
														<div class="song-cont">
														</div>
													</div>
													<div class="vote-rate">
														<p>좋아요 </p>
								
													</div>
													<p class="user-area" style="display:none;" id="v_2022121218"><span class="ellipsis">노래하는멜론노래하는멜론</span>님은 72표를 주셨네요! <br />지금까지 300번 들었습니다.</p>											
												</div>
											</div>
										</div>
									</li>
		
		
		
		
		
			
		
									<li class="num02">
										<div class="vote-info">
											<div class="vote-rate">
												<div class="rank-area">
													<span class="rank n02">순위</span>
													
													<p class="score">좋아요 <span class="txt"></span></p>
												</div>
												
												<table id="allTimeLikeList2">
		  	 
													  	 	<tbody>
																
													  	 	</tbody>
													  	 
													  	 </table>
												
												<div class="graph-area type1">
													<!-- 복수 아티스트 -->
													<div class="artist-info">
														
														
												
														<div class="wrap_atist songinfo">
															<button type="button" title="아티스트 더보기 " class="btn btn_more" data-control="dropdown"><span class="odd_span">아티스트명 더보기</span></button>
															<!-- [DP] 아티스트 더보기 레이어  -->
															<div class="l_popup small" style="display:none; width:168px;">
																<div class="l_cntt">
																	<ul class="list_bullet">
																		
																		<li><a href="javascript:melon.link.goArtistDetail('725987');" title="정국 - 페이지 이동">정국</a></li>
																		
																		<li><a href="javascript:melon.link.goArtistDetail('672375');" title="방탄소년단 - 페이지 이동">방탄소년단</a></li>
																		
																	</ul>
																</div>
																<button type="button" class="btn_close"><span class="odd_span">닫기</span></button>
																<span class="shadow"></span>
																<span class="bullet_vertical"></span>
															</div>
															<!-- //[DP] 아티스트 더보기 레이어  -->
														</div>
												
															
														<div class="song-cont">
														</div>
													</div>
													<div class="vote-rate">
														<p>좋아요</p>
							
													</div>
												</div>
											</div>
										</div>
									</li>
		
		
		
		
		
			
		
									<li class="num03">
										<div class="vote-info">
											<div class="vote-rate">
												<div class="rank-area">
													<span class="rank n03">순위</span>
													
													<p class="score">좋아요 수 : <span class="txt">점</span></p>
												</div>
												<div class="graph-area type1">
												
														<table id="allTimeLikeList3">
		  	 
													  	 	<tbody>
																
													  	 	</tbody>
													  	 
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
				</div>
			</div>
		
		
		<br><br><br>
		
		
	
		
			
		</div>
	</body>