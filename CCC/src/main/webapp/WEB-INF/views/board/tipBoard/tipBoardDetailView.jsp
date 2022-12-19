<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
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

        table * {margin:5px;}
        table {width:100%;}
    </style>
</head>
<body>
      <jsp:include page="/WEB-INF/views/common/header2.jsp"/>

    <div class="content">
        <br><br>
        <div class="innerOuter">
            <h2>게시글 상세보기</h2>
            <br>

            <a class="btn btn-secondary" style="float:right;" href="">목록으로</a>
            <br><br>

            <table id="contentArea" algin="center" class="table">
                <tr>
                    <th width="10">제목</th>
                    <td colspan="3">${fb.get(0).fTitle}</td>
                </tr>
                
<%--                 <c:forEach var="b" items="${b}"> --%>
                <tr>
                    <th>작성자</th>
                    <td>${fb.get(0).fWriter }</td>
                    <th>작성일</th>
                    <td>${fb.get(0).fCreateDate }</td>
                </tr>
               
                <tr>
                    <th>내용</th>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td colspan="4"><p style="height:150px;">${fb.get(0).fContent }</p></td>
                </tr>
                <tr>
                	<th>이미지</th>
                	<td colspan="3"></td>
                </tr>
                <tr>
                	<td><p style="height:150px;">${fb.get(0).fTitleimg }</p></td>
                </tr>
                
                 <tr>
                    <th>첨부파일</th>
                    <td colspan="3">
                        <a href="${frba.faChangeName }" download="${frba.faOrginName}">${frba.faOrginName}</a>
                    </td>
                </tr>
<%--                </c:forEach> --%>
            </table>
            <br>
            <!--아래는 로그인 유저의 아이디가 글작성자와 일치한다면 수정하기 삭제하기 버튼이 보이게 끔 !  -->
	         <div align="center">
                <!-- 수정하기, 삭제하기 버튼은 이 글이 본인이 작성한 글일 경우에만 보여져야 함 -->
                <a class="btn btn-primary" onclick="postFormSubmit(1);">수정하기</a>
                <a class="btn btn-danger" onclick="postFormSubmit(2);">삭제하기</a>
            </div>
            <br><br>
            
<!--             <form id="postForm" method="post"> -->
<%--             	<input type="hidden" name="bno" value="${fb.fNo }"> --%>
            	
<%--             	<input type="hidden" name="filePath" value="${b.changeName}"> --%>
<!--             </form> -->
            
       
</body>
</html>