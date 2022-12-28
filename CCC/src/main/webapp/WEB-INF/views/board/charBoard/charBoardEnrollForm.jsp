<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>캐릭터 게시판 글 등록 페이지</title>
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

        #enrollForm>table {width:100%;}
        #enrollForm>table * {margin:5px;}
        
        #enroll-form input,#enroll-form textarea{
	       	width:100%;
	       	box-sizing:border-box;	
    	}
    </style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header2.jsp"/>
	
	<div class="content">
        <br><br>
        <div class="innerOuter">
            <h2>게시글 작성하기</h2>
            <br>

        <form action="insert.ch" id="enroll-form" method="post" enctype="multipart/form-data">
			<input type="hidden" name="boardWriterNo" value="${ loginUser.mNo }">
			<table align="center">
				<tr>
					<th width="100">제목</th>
					<td colspan="3"><input type="text" id="boardTitle" name="boardTitle" required></td>
				</tr>
				<tr>
					<th width="100">캐릭터 이름</th>
					<td colspan="3"><input type="text" id="charName" name="charName" required></td>
				</tr>
				<tr>
					<th>캐릭터 설명</th>
					<td colspan="3"><textarea name="boardContent" id="boardContent" style="resize: none;" cols="30" rows="10" required></textarea></td>
				</tr>
				<tr>
					<th>대표이미지</th> <!--미리보기-->
					<td colspan="3" align="center">
						<img id="titleImg" width="250" height="170">
					</td>
				</tr>
				<tr>
					<th>상세이미지</th>
					<td><img id="contentImg1" width="150" height="120"></td>
					<td><img id="contentImg2" width="150" height="120"></td>
					<td><img id="contentImg3" width="150" height="120"></td>
				</tr>
			</table>

			<!-- 파일 첨부 영역 -->
			<div id="file-area" align="center">
				<input type="file" id="file1" name="upfile" onchange="loadImg(this,1);" required> <!--대표이미지라서 필수!-->
				<input type="file" id="file2" name="upfile" onchange="loadImg(this,2);">
				<input type="file" id="file3" name="upfile" onchange="loadImg(this,3);">
				<input type="file" id="file4" name="upfile" onchange="loadImg(this,4);">
			</div>
			<br><br>
			
			<div align="center">
				<button type="button" id="gogo" class="searchBtn btn btn-secondary" onclick="return badLanguage();">등록하기</button>
			</div>
		</form>
        <br><br>

    </div>
    
    <script>
    	function badLanguage(){
    		$.ajax({
    			url : "badLanguage.ch",
    			data : {
    				boardTitle : $("#boardTitle").val(),
    				charName : $("#charName").val(),
    				boardContent : $("#boardContent").val()
    			},
    			success : function(result){
    				if(result == "NNNNY"){
	    				alert("비속어가 있어요! 다시 입력해주세요!");
	    				$("#boardTitle").val("");
	    				$("#charName").val("");
	    				$("#boardContent").val("");
	    				
	    				return false;
    				}else{
    					var charConfirm = confirm("캐릭터를 등록하시겠습니까?");
    					
    					if(charConfirm){
	    					$("#enroll-form").submit();
	    					
    					}else{
    						return false;
    					}
    				}
    			},
    			error : function(){
    				console.log("통신실패..");    				
    			}
    		})	
    	}
    </script>
    
</body>
</html>