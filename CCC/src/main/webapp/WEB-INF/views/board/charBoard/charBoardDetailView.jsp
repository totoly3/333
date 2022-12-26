<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캐릭터 게시판 게시글 상세보기 페이지</title>
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

            <a class="btn btn-secondary" style="float:right;" href="list.ch">목록으로</a>
            <br><br>

            <table id="contentArea" algin="center" class="table">
                <tr>
                    <th width="100">제목</th>
                    <td colspan="3">${ cb.boardTitle }</td>
                </tr>
                <tr>
                    <th>작성자</th>
                    <td colspan="1">admin</td>
                    <th>작성일</th>
                    <td width="120">${ cb.createDate }</td>
                </tr>
                <tr>
                    <th>첨부파일</th>
                    <c:choose>
                    	<c:when test="${ not empty caList }">
			                    <td colspan="3">
                    				<c:forEach var="c" items="${ caList }">
			                       		<a href="${ c.changeName }" download="${ c.originName }">${ c.originName }</a>
                    				</c:forEach>
			                    </td>
	                    </c:when>
	                    <c:otherwise>
	                    	<td colspan="3">
	                    		조회된 첨부파일이 없습니다.
	                    	</td>
	                    </c:otherwise>
                    </c:choose>
                </tr>
                <tr>
                    <th width="120">캐릭터 이름</th>
                    <td colspan="3">${ cb.charName }</td>
                	<th style="text-align:center;"></th>
                	<td width="150"><button id="likeBtn" onclick="likeGo();" class="btn btn-success">좋아요</button></td>
                </tr>
                <tr>
                    <th>캐릭터 설명</th>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td colspan="4"><p style="height:150px;">${ cb.boardContent }</p></td>
                </tr>
                <tr>
                	<th width="130">캐릭터 이미지</th>
                	<td colspan="1"></td>
                </tr>
                <c:choose>
                	<c:when test="${ not empty caList }">
	               		<td colspan="3">
	               			<c:forEach var="c" items="${ caList }">
	                				<img style="margin: auto;" alt="" src="${ c.changeName }" width="400px" height="300px">
	               			</c:forEach>
	               		</td>      		                			
                	</c:when>
                	<c:otherwise>
                		<td colspan="3">
                			조회된 첨부파일이 없습니다.
	                    </td>
                	</c:otherwise>
                </c:choose>
                
            </table>
            <br>

            <div align="center">
                <!-- 수정하기, 삭제하기 버튼은 이 글이 본인이 작성한 글일 경우에만 보여져야 함 -->
                <a class="btn btn-primary" onclick="postFormSubmit(1);">수정하기</a>
                <a class="btn btn-danger" onclick="return postFormSubmit(2);">삭제하기</a>
            </div>
            <br><br>
            
            <!-- 동적으로 DOM요소  만들어 글 번호와 파일 경로를 Controller로 submit하기 -->
            <script>
            	function postFormSubmit(num){
            		//삭제하기 버튼을 눌렀을 경우
            		if(num == 2){
	            		var result = confirm("정말로 삭제하시겠습니까?");            			
	            		
	            		if(result){
		            		let form = $("<form>");
		            		let subBno = $("<input>").prop("type","hidden").prop("name","bno").prop("value","${ cb.boardNo }");
		        			
		        			form.append(subBno);
		         			
		        			if(num == 1){
		        				form.prop("action","updateForm.ch");
		        			}else{
		        				form.prop("action","delete.ch");
		        			}
		        			
		        			$("body").append(form);
		        			
		        			form.prop("method","POST").submit();
	            		}
	            		return false;
            		
            		}
            		else{ //수정하기 버튼을 눌렀을 경우
            			let form = $("<form>");
	            		let subBno = $("<input>").prop("type","hidden").prop("name","bno").prop("value","${ cb.boardNo }");
	        			
	        			form.append(subBno);
	         			
	        			if(num == 1){
	        				form.prop("action","updateForm.ch");
	        			}else{
	        				form.prop("action","delete.ch");
	        			}
	        			
	        			$("body").append(form);
	        			
	        			form.prop("method","POST").submit();
            		}
            	}
            </script>

            <table id="replyArea" class="table" align="center">
                <thead>
                    <tr>
                        <th colspan="5">
                            <textarea class="form-control" name="reContent" id="reContent" cols="55" rows="2" style="resize:none; width:100%;"></textarea>
                        </th>
                        <th style="vertical-align:middle"><button class="btn btn-secondary" onclick="insertReply();">등록하기</button></th>
                    </tr>
                    <tr>
                        <td colspan="5">댓글(<span id="rcount">0</span>)</td>
                    </tr>
                </thead>
                
                <tbody>
                </tbody>
            </table>
        </div>
        <br><br>
        
        <!-- 댓글 수정 모달 -->
		<div class="modal fade" id="updateReply" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">댓글 수정 내용을 입력해주세요!</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		      	<textarea id="updateContent" rows="2" cols="49.8"
									style="resize: none;"></textarea>
					<div id="reply_cnt">(0 / 50)</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
		        <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="UpdateReply();">수정하기</button>
		      </div>
		    </div>
		  </div>
		</div>
		
		<!-- 대댓글 모달 -->
		<div class="modal fade" id="reReply" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">답글 내용을 입력해주세요!</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		      	<textarea id="reAnswerContent" rows="2" cols="49.8"
									style="resize: none;"></textarea>
					<div id="reReply_cnt">(0 / 50)</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
		        <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="ReplyAnswer();">등록하기</button>
		      </div>
		    </div>
		  </div>
		</div>
        
    </div>
    
        <script>
        
        	//댓글의 고유 번호를 담을 전역 변수 선언
        	let reUpdateNo;
        
        	$(function(){
        		selectReplyList();
        		selectLike();
        	});
        	//좋아요 조회
     		function selectLike(){
     			$.ajax({
     				url : "selectLike.ch",
     				data : {
     					refBno : ${ cb.boardNo },
     					memberNo : 6,
     					charNo : ${ cb.charNo }
     				},
     				success : function(result){
     					
     					if(result == "NNNNY"){
     						$("#likeBtn").attr("class","btn btn-danger");
     					}else{
     						$("#likeBtn").attr("class","btn btn-success");     						
     					}
     					
     				},
     				error : function(){
     					console.log("통신실패!");
     				}
     			})
     		}
        	//좋아요 등록 및 취소
        	function likeGo(){
        		$.ajax({
        			url : "insertLike.ch",
        			data : {
	       				refBno : ${ cb.boardNo },
	        			memberNo : 6,
						charNo : ${ cb.charNo }
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
        				console.log("통신실패...");
        			}
        		})
        	}
        	
        	//댓글 등록
        	function insertReply(){
        		
        		let reContent = $("#reContent").val();
        		       		
        		if(reContent.trim().length != 0){
        			
	        		$.ajax({
	        			url : "replyAnswer.ch",
	        			data : {
	        				refBno : ${ cb.boardNo },
	        				reContent : reContent
	        			},
	        			success : function(result){
	        				
	        				if(result == "NNNNY"){
	        					alert("댓글이 등록되었습니다!");
	        					$("#reContent").val("");
	        					selectReplyList();
	        				}else{
	        					alert("댓글 등록에 실패했습니다.");
	        				}
	        				
	        			},
	        			error : function(){
	        				console.log("통신실패!");
	        			}
	        		});
        		
        		}else{ //댓글 작성란에 공백을 넣거나 댓글을 작성하지 않은 경우
        			alert("댓글을 입력해주세요. 공백은 작성불가합니다.");
        			reContent.val("");
        			reContent.focus();
        		}
        	}
        	
        	$(document).on("click","table #reUpdateNo",function(){
        		reUpdateNo = $(this).val();
        	});
 
        	//댓글 리스트 출력
        	function selectReplyList(){
        		$.ajax({
        			url : "selectRlist.ch",
        			data : { boardNo : ${ cb.boardNo } },
        			success : function(reList){
        				let resultStr = "";
        				
        				for(var i=0; i<reList.length; i++){
        					resultStr += "<tr>"
        							   + "<th>"+reList[i].reWriter+"</th>"
        							   + "<td>"+reList[i].reContent+"</td>"
        							   + "<td>"+reList[i].reCreateDate+"</td>"
        							   + "<td><button class='btn btn-outline-success' data-toggle='modal' data-target='#reReply'"
        							   + "id='reUpdateNo' value=+"+reList[i].reNo+">답글</button>"
        							   + "<button class='btn btn-outline-primary' data-toggle='modal' data-target='#updateReply'"
        							   + "id='reUpdateNo' value=+"+reList[i].reNo+">수정</button>"
        							   + "<button onclick='return deleteReply("+reList[i].reNo+")' class='btn btn-outline-danger'>삭제</button></td>"     							   
        							   + "</tr>";
        				}
        				//댓글 내용 body에 추가
        				$("#replyArea > tbody").html(resultStr);
        				//댓글 수
        				$("#rcount").text(reList.length);
        			},
        			error : function(){
        				console.log("통신실패!");
        			}
        		})
        	}
        	
        	//댓글 수정
        	function UpdateReply(){
        		$.ajax({
        			url : "updateReply.ch",
        			data : {
        				refBno : ${ cb.boardNo },
        				reNo : reUpdateNo,
        				reContent : $("#updateContent").val()
        			},
        			type : "post",
        			success : function(result){
        				if(result == "NNNNY"){
	        				$("#updateContent").val("");
	        				$("#reply_cnt").html("(0 / 50)");
	        				selectReplyList();        					
        				}else{
        					alert("댓글 수정에 실패했습니다.");
        				}
        			},
        			error : function(){
        				console.log("통신실패!");
        			}
        		})
        	}
        	
        	//대댓글 등록
        	function ReplyAnswer(){
        		$.ajax({
        			url : "replyAnswer.ch",
        			data : {
        				refBno : ${ cb.boardNo },
        				reNo : reUpdateNo,
        				reContent : $("#reAnswerContent").val()
        			},
        			type : "post",
        			success : function(result){
        				
        				if(result == "NNNNY"){
        					alert("댓글이 등록되었습니다!");
        					$("#reAnswerContent").val("");
        					selectReplyList();
        				}else{
        					alert("댓글 등록에 실패했습니다.");
        				}
        			},
        			error : function(){
        				console.log("통신실패!");
        			}
        		})
        	}
        	
        	//댓글 삭제
        	function deleteReply(reNo){
        		$.ajax({
        			url : "deleteReply.ch",
        			data : {
        				refBno : ${ cb.boardNo },
        				reNo : reNo
        			},
        			success : function(result){
        				let deleteReply = confirm("정말 삭제하시겠습니까?");
        				
        				if((result == "NNNNY") && deleteReply){
        					alert("댓글을 삭제하였습니다!");
        					selectReplyList();
        				}
        				return false;
        			},
        			error : function(){
        				console.log("통신실패!");
        			}
        		})
        	}
        	
        	//댓글 수정 글자 수 제한
			$('#updateContent').on('keyup',function(){
				$('#reply_cnt').html("("+$(this).val().length+" / 50)");
				
				if($(this).val().length > 50){
					$(this).val($(this).val().substring(0, 50));
					$('#reply_cnt').html("(50 / 50)");
				}
			})
        	
			//대댓글 수정 글자 수 제한
			$('#reAnswerContent').on('keyup',function(){
				$('#reReply_cnt').html("("+$(this).val().length+" / 50)");
				
				if($(this).val().length > 50){
					$(this).val($(this).val().substring(0, 50));
					$('#reReply_cnt').html("(50 / 50)");
				}
			});
        	
        	
        </script>
</body>
</html>