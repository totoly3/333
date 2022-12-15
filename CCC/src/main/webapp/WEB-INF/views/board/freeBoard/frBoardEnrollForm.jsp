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
  	<!--  아래는 드래그  -->
  	 <main class="container">
    <label class="label" id="label" for="input">
      <div class="inner" id="inner">드래그하거나 클릭해서 업로드</div>
    </label>
    <input id="input" class="input" accept="image/*" type="file" required="true" multiple="true" hidden="true">
    <p class="preview-title">preview</p>
    <div class="preview" id="preview"></div>
  </main>
  	<!--  위에는 드래그 -->
  	
<input type="file" id="upfile" class="form-control-file border" name="upfile">
	    
  	
    <button type="submit" class="btn btn-primary">글 등록하기</button>
  <br><br><br> <br><br><br> <br><br><br>
  </form>
</div>

<script >
var input = document.getElementById("input");
var initLabel = document.getElementById("label");

input.addEventListener("change", (event) => {
  const files = changeEvent(event);
  handleUpdate(files);
});

initLabel.addEventListener("mouseover", (event) => {
  event.preventDefault();
  const label = document.getElementById("label");
  label?.classList.add("label--hover");
});

initLabel.addEventListener("mouseout", (event) => {
  event.preventDefault();
  const label = document.getElementById("label");
  label?.classList.remove("label--hover");
});

document.addEventListener("dragenter", (event) => {
  event.preventDefault();
  console.log("dragenter");
  if (event.target.className === "inner") {
    event.target.style.background = "#616161";
  }
});

document.addEventListener("dragover", (event) => {
  console.log("dragover");
  event.preventDefault();
});

document.addEventListener("dragleave", (event) => {
  event.preventDefault();
  console.log("dragleave");
  if (event.target.className === "inner") {
    event.target.style.background = "#3a3a3a";
  }
});

document.addEventListener("drop", (event) => {
  event.preventDefault();
  console.log("drop");
  if (event.target.className === "inner") {
    const files = event.dataTransfer?.files;
    event.target.style.background = "#3a3a3a";
    handleUpdate([...files]);
  }
});

function changeEvent(event){
  const { target } = event;
  return [...target.files];
};

function handleUpdate(fileList){
  const preview = document.getElementById("preview");

  fileList.forEach((file) => {
    const reader = new FileReader();
    reader.addEventListener("load", (event) => {
      const img = el("img", {
        className: "embed-img",
        src: event.target?.result,
      });
      const imgContainer = el("div", { className: "container-img" }, img);
      preview.append(imgContainer);
    });
    reader.readAsDataURL(file);
  });
};

function el(nodeName, attributes, ...children) {
  const node =
    nodeName === "fragment"
      ? document.createDocumentFragment()
      : document.createElement(nodeName);

  Object.entries(attributes).forEach(([key, value]) => {
    if (key === "events") {
      Object.entries(value).forEach(([type, listener]) => {
        node.addEventListener(type, listener);
      });
    } else if (key in node) {
      try {
        node[key] = value;
      } catch (err) {
        node.setAttribute(key, value);
      }
    } else {
      node.setAttribute(key, value);
    }
  });

  children.forEach((childNode) => {
    if (typeof childNode === "string") {
      node.appendChild(document.createTextNode(childNode));
    } else {
      node.appendChild(childNode);
    }
  });

  return node;
}
</script>


</body>
</html>
