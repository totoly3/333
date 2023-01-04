<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
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

        #boardList {text-align:center;}
        #boardList>tbody>tr:hover {cursor:pointer;}

        #pagingArea {width:fit-content; margin:auto;}
        
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
<body>
	
	<jsp:include page="/WEB-INF/views/common/header2.jsp"/>
	
    <div class="content">
        <br><br>
        <div class="innerOuter" style="padding:5% 10%;">
            <h2>캐릭터 게시판</h2>
            <br>
			<div class="outer">
	            <!-- 로그인 상태일때만 글쓰기 버튼이 보이도록 -->
				<c:if test="${ not empty loginUser }">
					<div align="center">
						<button onclick="location.href='insert.ch'">글작성</button>
					</div>			
				</c:if>

				<div class="list-area">		
					<c:choose>
						<c:when test="${ not empty list }">
							<c:forEach var="b" items="${ list }">
									<div class="thumbnail" align="center">
										<input type="hidden" value="${ b.boardNo }">
										<img src="${ pageContext.request.contentType }${ b.changeName }" width="400px" height="300px">
										<p>
											No.${ b.boardNo } ${ b.boardTitle }<br>
											조회수 : ${ b.views }
											<br>
										</p>
									</div>				
							</c:forEach>
						</c:when>
						<c:otherwise>
							조회된 게시글이 없습니당...
						</c:otherwise>
					</c:choose>
				</div>
				
				<!-- 썸네일 캐릭터를 클릭하면 해당 게시글의 번호를 가지고 상세조회 페이지로 넘어가도록 -->
				<script>
					$(function(){
						$(".thumbnail").click(function(){
							location.href="${ pageContext.request.contextPath }/detail.ch?bno="+$(this).children().eq(0).val();
						})
					})
				</script>
​
	            <br>
	
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
	
	            <br clear="both"><br>
	
	            <form id="searchForm" action="search.ch" method="get" align="center">
	                <div class="select">
	                    <select class="custom-select" name="condition">
	                        <option value="writer">창작자</option>
	                        <option value="title">캐릭터이름</option>
	                        <option value="content">캐릭터설명</option>
	                    </select>
	                </div>
	                <div class="text">
	                    <input type="text" class="form-control" name="keyword">
	                </div>
	                <button type="submit" class="searchBtn btn btn-secondary">검색</button>
	            </form>
	            <br><br>
	        </div>
	        <br><br>
		</div>
    </div>
    <br><br><br>
</body>
</html>