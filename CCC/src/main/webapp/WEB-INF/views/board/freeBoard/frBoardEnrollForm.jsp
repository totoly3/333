<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>

  <title>자유게시판 글작성</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<style>
:root {
  --bgColor: #3a3a3a;
  --hoverBg: #616161;
  --text: #bbb;
}

.container {
  width: clamp(0px, 100%, 512px);
  margin: 32px auto;
  text-align: center;
}

.label {
  width: 100%;
  height: 100%;
  margin: 0px auto;
  cursor: pointer;
  background-color: var(--bgColor);
}

.inner {
  width: 100%;
  height: 128px
  margin: 64px auto;
  border-radius: 8px;
  font-size: 16px;
  line-height: 128px;
  background-color: var(--bgColor);
  color: var(--text);
}

@media (any-hover: hover){
  .inner:hover{
    background-color: var(--hoverBg);
  }
}

.label--hover{
  background-color: var(--hoverBg);
}

.preview-title{
  font-size: 32px;
  margin-bottom: 8px;
}

.preview {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 16px;
  padding: 16px;
  margin-bottom: 16px;
  border-radius: 8px;
  align-items: center;
  background-color: var(--bgColor);
}

.embed-img{
  width: 100%;
  height: 128px;
  object-position: center;
  object-fit: cover;
  border-radius: 8px;
}
</style>

</head>
<body>
<jsp:include page="/WEB-INF/views/common/header2.jsp"/>
   
<div class="container">
  <h2></h2>
  <p></p>
  <form action="insert.frbo" method="post"  enctype="multipart/form-data" >
    <div class="form-group">
      <label for="usr">제목 </label>
      <input type="text" class="form-control" id="frtitle" name="fTitle">
    </div>
    <div class="form-group">
      <label for="content">내용</label>
      <input type="text" class="form-control" id="frcontent" name="fContent">
    </div>
<%--     <input type="hidden" name="fWriterNo" class="form-control" id="fWriterNo" value="${fWriterNo} }"> --%>
   	<!--  아래는 드래그  --> 
<!--   	 <main class="container"> -->
<!--     <label class="label" id="label" for="input"> -->
<!--       <div class="inner" id="inner">드래그하거나 클릭해서 업로드</div> -->
<!--     </label> -->
<!--     <input id="input" class="input" accept="image/*" type="file" required="true" multiple="true" hidden="true"> -->
<!--     <p class="preview-title">preview</p> -->
<!--     <div class="preview" id="preview"></div> -->
<!--   </main> -->
   	<!--  위에는 드래그 --> 
  	
	<input type="file" id="upfile" class="form-control-file border" name="upfile">
	<input type="file" id="upfile" class="form-control-file border" name="upfile">	    
	  	
    <button type="submit" class="btn btn-primary">글 등록하기</button>
  <br><br><br> <br><br><br> <br><br><br>
  </form>
</div>




</body>
</html>
