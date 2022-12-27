<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- jQuery 라이브러리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.outer {
			background: black;
			color: white;
			width: 1000px;
			margin: auto;
			/*가운데 정렬*/
			margin-top: 50px;
			/*위로부터 50px만큼 여백*/
		}
​
		#enroll-form>table {
			border: 1px solid white;
		}
​
		#enroll-form input,
		#update-form textarea {
			width: 100%;
			box-sizing: border-box;
		}
</style>
</head>

<body>

  <jsp:include page="/WEB-INF/views/common/header2.jsp"/>  
  <div class="outer">
		<br>
		<h2 align="center">사진게시판 작성하기</h2>
		<br>
​
		<form action="insert.mychar" id="enroll-form" method="post" enctype="multipart/form-data">
			<table align="center">
				<!--(tr>th+td+td+td)*4-->
				<tr>
					<th width="100">캐릭터명</th>
					<td colspan="3"><input type="text" name="cName"></td>
				</tr>
				<tr>
					<th>캐릭터설명</th>
					<td colspan="3"><textarea name="cContent" style="resize: none;" cols="30" rows="10"
						required></textarea></td>
				</tr>
				<tr>
				<th>썸네일 첨부</th>	
				<td><input type="button" value="파일추가"></td>			
				</tr>
				<tr>
				<th>일반첨부</th>
                <td><input type="button" id="addCharAtta" value="파일추가">첨부파일 최대4개</td>
                </tr>
			</table>
			<br><br>
			<div align="center">
				<button type="submit">등록하기</button>
			</div>
		    
		    <table id="addCharAttaArea"></table>

			<script>
			
			//썸네일 버튼클릭시
			 var catta=1; 
			 //첨부파일 개수 올려줌
			 //첨부파일 추가버튼 누르면 생성되는 버튼
			 //파일테이블영역에
			 //tr개수제한해주고 td의 아이디에  append해서 넣어줌
			 //삭제버튼 추가
			 $("#addCharAtta").click(function() {
				 
				if($("#addCharAttaArea tr").length<=4) {
				 var addresult="<tr>"
				 			  +"<th><label for='upfile'"+catta+"'></label></th>"	
				 			  +"<td><input type='file' id='upfile"+catta+"'class='form-control-file border' name='multifile'></td>"
				 			  +"</td>";
				 	$("#addCharAttaArea").append(addresult);		  
				}
					
// <a href='this' name='delete' id='delete+"catta"' class="btn">삭제</a></td>				
// 				$(("#delete"+idx)).on("click",function(e){
// 					e.preventDefault();
// 					fn_fileDelete($(this));
// 				});
				
				catta++;
			});
			</script>
		</form>
		
​        <br><br>
	</div>


</body>
</html>