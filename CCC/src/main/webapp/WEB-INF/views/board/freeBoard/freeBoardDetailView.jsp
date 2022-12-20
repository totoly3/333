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

		 <c:if test="${frba.size()==0}">
   			 	비어있음
       	 </c:if>
 
          <c:if test="${frba.size()==1}">
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
            		<!-- 아래는 만약 첨부파일이 있다면  파일패스 가져가서 글 삭제할때 파일도 동시에 삭제 -->
            		<c:if test="${frba.size()>0}">
             			<input type="hidden" name="filePath" value="${frba.get(0).faChangeName}">
            		</c:if>
            </form>
      </div>
   </div>
   
<!--     댓글 기능은 나중에 ajax 배우고 나서 구현할 예정! 우선은 화면구현만 해놓음 -->
<!--             <table id="replyArea" class="table" align="center"> -->
<!--                 <thead> -->
<!-- 		              	<tr> -->
<!-- 	                        <th colspan="2"> -->
<!-- 	                            <textarea class="form-control" name="rcontent" id="rcontent" cols="55" rows="2" style="resize:none; width:100%;"></textarea> -->
<!-- 	                        </th> -->
<!-- 	                        <th style="vertical-align:middle"><button class="btn btn-secondary" onclick="addReply();">등록하기</button></th> -->
<!-- 	                	</tr> -->

  
<!-- 	          	        <tr> -->
<!-- 	                       <td colspan="3" > 댓글(<span id="rcount"></span>)</td> -->
<!-- 	                    </tr> -->
<!--                 </thead> -->
                
<!--                 <tbody> -->
       						
<!--                 </tbody> -->
            </table>
   
   
   
     <script >
//  	     아래는 체크박스 (전체선택)
// 	      function selectAll(selectAll)  {
// 		  const checkboxes = document.getElementsByName('all');
		  
// 				  checkboxes.forEach((checkbox) => {checkbox.checked = selectAll.checked;}
// 				  							)
// 										}
     
	     function postFormSubmit(num){

			//action에 속성값을 넣고 submit을 진행하면 된다.
	 		if(num ==1){ //수정하기 버튼 클릭시 1이 넘어온다
	     		$("#postForm").attr("action","updatefm.fbo").submit();
	 		}else{ //삭제하기 버튼 클릭시 
	 			$("#postForm").attr("action","delete.frbo").submit();
	 		}
	 	}
	    
	     //아래는 댓글
// 	   $(function(){
//     		selectReplyList(); //dom 요소 생성 후 맨처음에(페이지 구성될때 댓글리스트 조회해오기) 
//     	})
    	
// 		//댓글 조회 함수    	
//     	function selectReplyList(){
//     		$.ajax({
//     			url :"frlist.fbo",
//     			data : {fno : ${fb.get(0).fNo}},
//     			success : function(result){
//     				console.log(result);
// 					var resultStr = "";
					
// 					for(var i=0; i<result.length; i++){
// 						resultStr += "<tr>"
// 									+"<th>"+result[i].frWriter+"</th>"
// 									+"<td>"+result[i].frContent+"</td>"
// 									+"<td>"+result[i].frCreateDate+"</td>"	
// 									+"</tr>";
// 							}	
					
// 					$("#replyArea > tbody").html(resultStr).css(margin-left:<c:out value="${20*result.frLevel}"/>px);
// 					$("#rcount").text(result.length);
// 	    			},
//     			error :function(){
//    				console.log("통신 실패");
//     			}
//     		})
//     	}
    	
//     //아래는 댓글 등록 
//     	function addReply(){
//     		var $vali = $("#rcontent");
    		
//     		//바로아래는 공백제거 후 댓글이 작성되었는지 확인 (공백작성불가하게 막기 )
//     		if($vali.val().trim().length != 0){
// 	    	    	$.ajax({
// 			    		url : "frInsert.fbo",
// 			    		data : {
// 			    				fno : ${fb.get(0).fNo},
// 			    				frContent :$vali.val(),
// // 			    				frWriter : "${loginUser.userId}" 
// 			    					//admin 문자 자체로 나오기때문에 문자열 처리를 해줘야함  하지않으면 변수로인식하기때문임.
// 			    			},
// 		    			success : function(result){
// 		    				console.log(result);
// 		    				if(result=="yes"){
// 		    					selectReplyList();
// 		    					$vali.val("");
// 		    				}
// 		    			},
// 		    			error : function(){
// 		    				console.log("통신실패");
// 		    			}
// 			    		});
//    				 }else{ //공백을 넣었거나 댓글을 작성하지 않은경우 
//    	    			alert("댓글을작성하세요 . 공백은 작성불가");
//    				 	$vali.val("");
//    	    		}
//     		}
    
     
    </script>
</body>
</html>