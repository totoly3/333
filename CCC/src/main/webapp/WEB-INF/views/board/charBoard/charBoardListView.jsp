<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캐릭터 썸네일 게시판</title>
 	<!-- jQuery 라이브러리 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   
	 <!-- 여기부터 -->
	 <!-- Favicon-->
     <link rel="icon" type="image/x-icon" href="resources/mainAdmin/assets/favicon.ico" />
     <!-- Font Awesome icons (free version)-->
     <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
     <!-- Google fonts-->
     <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
     <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
     <!-- Core theme CSS (includes Bootstrap)-->
     <link href="resources/mainAdmin/css/styles.css" rel="stylesheet" />
        
        <style>
        	/* 페이징 영역 */
        	#pagingArea {width:fit-content; margin:auto;} 
        	/* 썸네일 호버 */
        	.thumbnail:hover {cursor:pointer; opacity: 0.5;}
			
	         #searchForm {
	            width:80%;
	            margin:auto;
	        }
	        #searchForm>* {
	            float:left;
	            margin:5px;
	        }
	        .select {width:20%;}
	        .text {width:53%;}
	        .searchBtn {width:20%;}
        </style>
        
    </head>
    <body id="page-top">
		<jsp:include page="/WEB-INF/views/common/header.jsp"/>
        
        <!-- Portfolio Grid-->
        <section class="page-section bg-light" id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">캐릭터 썸네일 게시판</h2>
                    <br><br>
					<!-- 로그인 유저만 글작성 가능하도록 -->
                    <c:if test="${ not empty loginUser }">
						<a href="insert.ch" class="btn btn-success btn-icon-split">
                            <span class="icon text-white-50">
                                <i class="fas fa-check"></i>
                            </span>
						    <span class="text">당신의 캐릭터를 등록해주세요!</span>
						</a>	
					</c:if>
                </div>
                <br><br>
                
                <div class="row">
                	<c:choose>
                		<c:when test="${ not empty list }">
                			<c:forEach var="b" items="${ list }">
			                    <div class="col-lg-4 col-sm-6 mb-4">
			                        <!-- Portfolio item 1-->
			                        <div class="portfolio-item">
			                            <div class="thumbnail">
			                            	<input type="hidden" name="boardNo" value="${ b.boardNo }">
			                                <img class="img-fluid" src="${ pageContext.request.contentType }${ b.changeName }" alt="..." />
			                            </div>
			                            <div class="portfolio-caption">
			                                <div class="portfolio-caption-heading"></div>
			                                <div class="portfolio-caption-subheading text-muted">No.${ b.boardNo } ${ b.boardTitle }</div>		                            
			                                <button id="likeBtn" onclick="likeGo('${ b.boardNo }');" class="btn btn-success">좋아요</button>		                             
			                                <button id="likeBtn" onclick="likeGo('${ b.boardNo }');" class="btn btn-success" style="background : red;">좋아요</button>
			                            </div>
			                        </div>
			                    </div> 
                			</c:forEach>
                		</c:when>
                		<c:otherwise>
                			조회된 게시글이 없습니당..
                		</c:otherwise>
                	</c:choose>
                </div>
            </div>
        
	        <!-- 페이징 영역 -->
			<div id="pagingArea">
	            <ul class="pagination">
	            	<!-- currentPage 1이면 숨기기 -->
	            	<c:choose>
	            		<c:when test="${ pi.currentPage ne 1 }">
	                  <li class="page-item"><a class="page-link" href="list.ch?currentPage=${ pi.currentPage - 1 }">Previous</a></li>
	            		</c:when>
	            		<c:otherwise>
	                  <li class="page-item disabled"><a class="page-link" href="list.ch?currentPage=${ pi.currentPage - 1 }">Previous</a></li>
	            		</c:otherwise>
	            	</c:choose>
	            		<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
	                  <li class="page-item"><a class="page-link" href="list.ch?currentPage=${ p }">${ p }</a></li>
	            		</c:forEach>
	            	<!-- currentPage가 maxPage와 일치하면 숨기기 -->
	            	<c:choose>
	            		<c:when test="${ pi.currentPage eq pi.maxPage }">	                		
	                  <li class="page-item disabled"><a class="page-link" href="list.ch?currentPage=${ pi.currentPage + 1 }">Next</a></li>
	            		</c:when>
	            		<c:otherwise>
	                  <li class="page-item"><a class="page-link" href="list.ch?currentPage=${ pi.currentPage + 1 }">Next</a></li>
	            		</c:otherwise>
	            	</c:choose>
	            </ul>
			</div>
			
			<!-- 검색바 영역 -->
			<form id="searchForm" action="search.ch" method="get" align="center">
		        <div class="select">
		            <select class="custom-select" name="condition">
		                <option value="writer">창작자</option>
		                <option value="title">캐릭터이름</option>
		                <option value="content">캐릭터설명</option>
		            </select>
		        </div>
		        <div class="text">
		            <input type="text" id="textkeyword" class="form-control" name="keyword">
		        </div>
		        <button type="submit" class="searchBtn btn btn-secondary">검색</button>
			</form>
		<br><br><br>
        </section>

        <!-- 썸네일 캐릭터를 클릭하면 해당 게시글의 번호를 가지고 상세조회 페이지로 넘어가도록 -->
		<script>
			let charListBoardNo;
			
			$(function(){
// 				selectListLike();
				
				$(".thumbnail").click(function(){
					location.href="detail.ch?bno="+$(this).children().eq(0).val();
				});				
			});
			
			//좋아요 조회 (게시글 번호,로그인유저 번호,캐릭터 번호)

			
			//좋아요 등록 및 취소 (게시글 번호,로그인유저 번호,캐릭터 번호)
			function likeGo(charListBoardNo){
				$.ajax({
					url : "boardListLike.ch",
					data : { 
						refBno : charListBoardNo,
						memberNo : ${ loginUser.memberNo }
					},
					success : function(result){
						console.log("통신성공!");
	       				
	       				if(result == "NNNNY"){
	       					$("#likeBtn").attr("class","btn btn-danger");
	       				}else{
	       					$("#likeBtn").attr("class","btn btn-success");        					
	       				}
					},
					error : function(){
						console.log("통신실패");
					}
				})
			}
			
		</script>
	</body>
</html>