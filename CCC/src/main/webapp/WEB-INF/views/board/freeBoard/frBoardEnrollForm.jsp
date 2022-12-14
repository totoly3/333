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
.dropBox {
  width: 90vw;
  height: 80vh;
   
  margin: .6rem;
  overflow: auto;
  
  display: flex;
  justify-content: center;
  align-items: center;

  border-radius: 5px;
  border: 4px dashed #ddd;
  user-select: none;
  transition: 0.4s;
}

/* 드롭 반응 */
.dropBox.active {
  background: #ddd;
}

.dropBox h1 {
  font-size: 1.8rem;
}

/* ----------- */

@import url('https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: Pretendard, 'Malgun Gothic', sans-serif;
}
</style>

</head>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"/>
   
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
  	<div class="dropBox" name="dropBox">
	  <h1>이곳에 파일을 드롭해주세요. </h1>
  	</div>
<input type="file" id="upfile" class="form-control-file border" name="upfile">
	    
  	
    <button type="submit" class="btn btn-primary">글 등록하기</button>
  <br><br><br> <br><br><br> <br><br><br>
  </form>
</div>

<script >
// const $drop = document.querySelector(".dropBox");
// const $title = document.querySelector(".dropBox h1");

// // 드래그한 파일 객체가 해당 영역에 놓였을 때
// $drop.ondrop = (e) => {
//   e.preventDefault();
//   $drop.className = "dropBox";
   
//   // 파일 리스트
//   const files = [...e.dataTransfer?.files];

//   $title.innerHTML = files.map(v => v.name).join("<br>");
// }

// // ondragover 이벤트가 없으면 onDrop 이벤트가 실핻되지 않습니다.
// $drop.ondragover = (e) => {
//   e.preventDefault();
// }

// // 드래그한 파일이 최초로 진입했을 때
// $drop.ondragenter = (e) => {
//   e.preventDefault();
 
//   $drop.classList.add("active");
// }

// // 드래그한 파일이 영역을 벗어났을 때
// $drop.ondragleave = (e) => {
//   e.preventDefault();
  
//   $drop.classList.remove("active");
// }
</script>

</body>
</html>
