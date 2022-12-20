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
            width:100%;
            margin:auto;
            padding:5% 5%;
            background-color:white;
        }
       .attitle { 
	        position: relative;   
			overflow: hidden; 
			width: 200px; 
			height: 300px; 
			background-color: #e0e0e0; 
       } 
 
	    img {
		    max-width: 100%;
			width: auto;
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

		 <c:if test="${fb.size()==0}">
   			 	비어있음
       	 </c:if>
 
          <c:if test="${fb.size()==1}">
		    	<c:choose>
                	<c:when test="${!fb.get(0).fTitleimg.isEmpty()}">
         	              <tr>
			              	<td class="attitle">
			            		  	<input type="checkbox" name="all" onclick='selectAll(this)'/>전체선택 <br>
			               		<p style="height:150px;">
			               			<input type="checkbox" name="all"><img src="${fb.get(0).fTitleimg }">
			               		</p>
			              	</td>
			              </tr>
	              	</c:when>
	          	</c:choose>
          </c:if> 	
   
          	<c:if test="${fb.size()==2}">
		    	<c:choose>
                	<c:when test="${!fb.get(0).fTitleimg.isEmpty()}">
         	              <tr>
			              	<td class="attitle">
			            		  	<input type="checkbox" name="all" onclick='selectAll(this)'/>전체선택 <br>
			               		<p style="height:150px;">
			               			<input type="checkbox" name="all"><img src="${fb.get(0).fTitleimg }">
			               		</p>
			              	</td>
			              </tr>
	              	</c:when>
	          	</c:choose>
	          	
         	<c:if test="${!fb.get(1).fTitleimg.isEmpty() }">
			               <tr>
			                	<td class="attitle">
			                		<p style="height:150px;">
			                			<input type="checkbox" name="all"><img src="${fb.get(1).fTitleimg }">
			                		</p>
			                	</td>
			                </tr>
	          	</c:if>
          </c:if> 	

	         
                 <tr>
                    <th>첨부파일</th>
              	      <td colspan="3">
	          			<br>
				   			<c:if test="${frba.size()==0}">
				   			 	비어있음
				         	 </c:if>
   			 
		          			 <c:if test="${frba.size()==1}">
				  			 	<c:choose>
				                	<c:when test="${!frba.get(0).faOrginName.isEmpty()}">
					                        <a href="${frba.get(0).faChangeName }" download="${frba.get(0).faOrginName}">${frba.get(0).faOrginName}</a><br><br>
				               	 	</c:when>
					          	</c:choose>
				          	</c:if>

				          	<c:if test="${frba.size()==2}">
				               	<c:if test="${!frba.get(1).faOrginName.isEmpty() }">
				               			<a href="${frba.get(0).faChangeName }" download="${frba.get(0).faOrginName}">${frba.get(0).faOrginName}</a><br><br>
				       
			                 			<a href="${frba.get(1).faChangeName }" download="${frba.get(1).faOrginName}">${frba.get(1).faOrginName}</a>
				               	</c:if>
			               	</c:if>
      
	                    </td>
	                </tr>
      
            </table>
            <br>
            <hr>
            <!--아래는 로그인 유저의 아이디가 글작성자와 일치한다면 수정하기 삭제하기 버튼이 보이게 끔 !  -->
	         <div align="center" border='1'>
                <!-- 수정하기, 삭제하기 버튼은 이 글이 본인이 작성한 글일 경우에만 보여져야 함 -->
                <a class="btn btn-primary" onclick="postFormSubmit(1);">수정하기</a>
                <a class="btn btn-danger" onclick="postFormSubmit(2);">삭제하기</a>
            </div>
            <br><br>
            
            <form id="postForm" method="post">
            	<input type="hidden" name="fno" value="${fb.get(0).fNo }">
            	
            	<input type="hidden" name="filePath" value="${frba.get(0).faChangeName}">
            </form>
      </div>
   </div>
   
     <script >
	     //아래는 체크박스 (전체선택)
	      function selectAll(selectAll)  {
		  const checkboxes = document.getElementsByName('all');
		  
				  checkboxes.forEach((checkbox) => {checkbox.checked = selectAll.checked;}
				  							)
										}
     
	     function postFormSubmit(num){
	 		//동적으로 DOM요소 만들어서 이벤트(submit)해보기
// 	 		var form = $("<form>");
// 	 		var cBno = $("<input>").prop("type","hidden").prop("name","bno").prop("value","${b.boardNo}");
// 				var cFp = $("<input>").prop("type","hidden").prop("name","filePath").prop("value","${b.changeName}");
				
// 				//form태그에 input요소 두개 넣기
// 				form.append(cBno).append(cFp);
				
// 				if(num==1){ //수정하기 버튼이 눌렸을때 요청주소는 update.bo 요청타입은 get타입으로 
// 					form.prop("action","updateForm.bo");
// 				}else{// 삭제하기 버튼이 눌렸을때 요청 주소는 delete.bo 요청타입은 post타입 
					
// 					form.prop("action","delete.bo");
// 				}
				
				
				// 만들어놓은 form 요소를 body에 추가하기 
// 				$("body").append(form);
				
// 				form.prop("method","POST").submit();
				
				
// 	 		action에 속성값을 넣고 submit을 진행하면 된다.
	 		if(num ==1){ //수정하기 버튼 클릭시 1이 넘어온다
	     		$("#postForm").attr("action","updatefm.fbo").submit();
	 		}else{ //삭제하기 버튼 클릭시 
	 			$("#postForm").attr("action","delete.frbo").submit();
	 		}
	 	}
	    
     
    </script>
</body>
</html>