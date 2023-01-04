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
        #addAttach-area {width:100%;}
        #addAttach-area>tr {
        	background-color: lightgreen;
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
					<th><label for="boardTitle">제목</label></th>
					<td><input type="text" id="boardTitle" class="form-control" name="boardTitle" required></td>
				</tr>
				<tr>
					<th><label for="boardWriter">작성자</label></th>
					<td><input type="text" id="boardWriter" class="form-control" name="boardWriter" value="${ loginUser.mId }" readonly></td>
				</tr>
				<tr>
					<th><label for="charName">캐릭터 이름</label></th>
					<td><input type="text" id="charName" class="form-control" name="charName" required></td>
				</tr>
				<tr>
					<th><label for="boardContent">캐릭터 설명</label></th>
					<td><textarea id="boardContent" class="form-control" rows="10" style="resize:none;" name="boardContent" required></textarea></td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td><input type="button" id="addAttachBtn" value="파일추가">최대 4개까지 가능합니다. (1장필수)</td>
				</tr>
			</table>
			
			<table align="center" id="addAttach-table">
				<tr>
					<th><label for="upfile"></label></th>
					<td><input type="file" id="upfile" class='form-control-file border' name='multifile' required></td>
				</tr>
			</table>
			<br>
			
			<script>
				
			</script>

			<div align="center">
				<button type="button" id="gogo" class="searchBtn btn btn-secondary" onclick="return badLanguage();">등록하기</button>
			</div>
		</form>
        <br><br>

    </div>
    
    <script>
    	//첨부파일 영역 만들기
	    var idx = 1; //현재 첨부파일 몇개가 있는지 확인해서 그 다음 수 대입
		
		//파일추가 버튼이 클릭되면 실행되는 함수
		$("#addAttachBtn").click(function(){
			if($("#addAttach-table tr").length < 4){ //테이블 tr의 수가 4보다 작으면 
				var addAttach = "<tr>"
							  + "<th><label for='upfile'></label></th>"
							  + "<td><input type='file' id='upfile' class='form-control-file border' name='multifile'></td>"
							  + "<td><a href='#this' name='delete' id='delete"+idx+"' class='btn'>삭제</a></td>";
				$("#addAttach-table").append(addAttach);
			}
			
			$(("#delete"+idx)).on("click",function(e){
				e.preventDefault(); //이벤트를 취소해주는 메소드
				fn_fileDelete($(this));
			});
			idx++;
		});
		
		function fn_fileDelete(obj){
			console.log("삭제 file idx : "+obj.parent().prev().children().attr("id")); //id확인
			obj.parent().parent().remove();
		}
		
    	//욕설 필터링
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
	    				$("#boardTitle").val().cursor(); //안먹음
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