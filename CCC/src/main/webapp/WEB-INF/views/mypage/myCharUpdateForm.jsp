<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정폼</title>
<style type="text/css">

.outer {
		background: black;
		color: white;
		width: 1000px;
		margin: auto;
		/*가운데 정렬*/
		margin-top: 50px;
		/*위로부터 50px만큼 여백*/
	}		
</style>

</head>
<body>
		<div class="outer">
		<h3>캐릭터 수정폼</h3>
		<form id="updateForm" method="post"  action="update.my" enctype="multipart/form-data">
		<table align="center">
		<!-- 히든으로 캐릭터 번호 넘기기 -->
		<input type="hidden" name="cNo" value="${cha.cNo}">
		<tr>
		   <th>캐릭터명</th>
		   <td>
		   <input type="text" name="cName" value="${cha.cName}">
		   </td>
		</tr>
		<tr>
		   <th>캐릭터내용</th>
		   <td><input type="text" name="cContent" value="${cha.cContent}"></td>
		</tr>
   
   
<!--    <th>캐릭터이미지 파일</th> -->
<%--    <c:forEach items="${mchalist}" var="cha" > --%>
<!--    <td> -->
<%--    <img alt="" src="${cha.changeName}" width="250" height="170"> --%>
<!--    </td> -->
<%--    </c:forEach> --%>
   
	   <!-- 파일영역 -->
	   <tr>
	   <td></td>
	   </tr>
	    <tr>
	   <td></td>
	   </tr>
		<tr>
			<th><label for="upfile">첨부파일</label></th>
			<td>
				<div id="file-area" align="center">
					<input type="file" id="file1" name="upfile" onchange="loadImg(this,1);" required\> 
					<input type="file" id="file2" name="upfile" onchange="loadImg(this,2);">
					<input type="file" id="file3" name="upfile" onchange="loadImg(this,3);">
					<input type="file" id="file4" name="upfile" onchange="loadImg(this,4);">
				</div>
			현재 업로드된 파일 : 
				<c:choose>
					<c:when test="${ not empty mchalist }">
						<c:forEach var="mca" items="${ mchalist}">	
							<img src="${ mca.changeName }" download="${ mca.originName }" width="150" height="120"></a>                       												
						</c:forEach>
					</c:when>
					<c:otherwise>
							업로드된 파일이 없습니다.
					</c:otherwise>
				</c:choose>
			</td>
		</tr>
   </table>
   
   <br><br><br>
   <div class="buttonArea" align="center">
   <button type="submit">수정</button>
   </div>
   
   </form>
   </div>   
   
   
   
</body>
</html>