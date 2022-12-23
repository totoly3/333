<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캐릭터 게시판 게시글 수정 페이지</title>
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

        #updateForm>table {width:100%;}
        #updateForm>table * {margin:5px;}
    </style>
</head>
<body>
        
    <jsp:include page="/WEB-INF/views/common/header2.jsp"/>

    <div class="content">
        <br><br>
        <div class="innerOuter">
            <h2>게시글 수정하기</h2>
            <br>

            <form id="updateForm" method="post" action="update.ch" enctype="multipart/form-data">
            	<!-- 글번호 히든으로 넘기기 -->
            	<input type="hidden" name="boardNo" value="${ cb.boardNo }">
                <table algin="center">
                    <tr>
                        <th><label for="title">제목</label></th>
                        <td><input type="text" id="title" class="form-control" value="${ cb.boardTitle }" name="boardTitle" required></td>
                    </tr>
                    <tr>
                        <th><label for="writer">작성자</label></th>
                        <td><input type="text" id="writer" class="form-control" value="user01" name="boardWriter" readonly></td>
                    </tr>
                    <tr>
                        <th><label for="upfile">첨부파일</label></th>
                        <td>
                            <div id="file-area" align="center">
								<input type="file" id="file1" name="upfile" onchange="loadImg(this,1);" required\> <!--대표이미지라서 필수!-->
								<input type="file" id="file2" name="upfile" onchange="loadImg(this,2);">
								<input type="file" id="file3" name="upfile" onchange="loadImg(this,3);">
								<input type="file" id="file4" name="upfile" onchange="loadImg(this,4);">
							</div>
                           	현재 업로드된 파일 : 
                           	<c:choose>
                           		<c:when test="${ not empty caList }">
                           			<c:forEach var="c" items="${ caList }">	
				                    	<a href="${ c.changeName }" download="${ c.originName }">${ c.originName }</a>                       												
                           			</c:forEach>
                           		</c:when>
                           		<c:otherwise>
                           			업로드된 파일이 없습니다.
                           		</c:otherwise>
                           	</c:choose>
                        </td>
                    </tr>
                    <tr>
                        <th><label for="content">내용</label></th>
                        <td><textarea id="content" class="form-control" rows="10" style="resize:none;" name="boardContent" required>${ cb.boardContent }</textarea></td>
                    </tr>
                </table>
                <br>

                <div align="center">
                    <button type="submit" class="btn btn-primary">수정하기</button>
                    <button type="button" class="btn btn-danger" onclick="javascript:history.go(-1);">이전으로</button>
                </div>
            </form>
        </div>
        <br><br>
        
    </div>
    
    <br><br><br>
    
</body>
</html>