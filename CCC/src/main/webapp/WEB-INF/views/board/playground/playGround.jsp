<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.count {
		  width: 370px;
		  height: 120px;
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  font-size: 3rem;
		  background: #febf00;
		  border-radius: 1rem;
		
		  color: #000;
		}
		
		/* ----------- */
		@import url("https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css");
		
		* {
		  margin: 0;
		  padding: 0;
		  box-sizing: border-box;
		  outline: none;
		  word-break: break-all;
		  font-family: Pretendard;
		}
		@import url("https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css");

		* {
		  margin: 0;
		  padding: 0;
		  box-sizing: border-box;  
		  font-family: Pretendard;
		}
		
		
		
		p{
		  width: 100px;
		  height: 125px;
		  background: #febf00;
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  font-size: 1.3rem;
		  font-weight: bold;
		  
		  position: absolute;
		  left: 400px;
		  top: 400px;
		  
		  user-select: none;
		  
		  /*  drag cursor   */
		  cursor: grab;
		}
		
		div:active {
		  cursor: grabbing;
		}
				
		</style>




</head>
<body>
   <jsp:include page="/WEB-INF/views/common/header.jsp"/>
		       <h1>놀이터</h1>	
		       
     <div class="wrap">
      <header>
        <h1>이상형 월드컵</h1>
        <pre id="roundTitle">           이상형 월드컵에 참여해 주세요.</pre>
      </header>
      <div class="content default" id="content">
        <button id="button1" onclick="start()">게임 참여</button>
        <button id="button2" > stop !!</button>
      </div>
      
      
     <p class="mover" margin-left:150px;>drag</p> 
      
      
    </div>
    <br><br>
    
    <div>
	  <h2 class="count"  margin-left:150px;>0</h2>
	</div>
	
	<script>
		const counter = ($counter, max) => {
			  let now = max;
	
			  const handle = setInterval(() => {
			    $counter.innerHTML = Math.ceil(max - now);
			  
			    // 목표수치에 도달하면 정지
			    if (now < 1) {
			      clearInterval(handle);
			    }
			    
			    // 증가되는 값이 계속하여 작아짐
			    const step = now / 10;
			    
			    // 값을 적용시키면서 다음 차례에 영향을 끼침
			    now -= step;
			  }, 50);
			}
	
			window.onload = () => {
			  // 카운트를 적용시킬 요소
			  const $counter = document.querySelector(".count");
			  
			  // 목표 수치
			  const max =76000;
			  
			  setTimeout(() => counter($counter, max), 2000);
			}
			
			
			const draggable = ($target) => {
				  let isPress = false,
				      prevPosX = 0,
				      prevPosY = 0;
				  
				  $target.onmousedown = start;
				  $target.onmouseup = end;
				    
				  // 상위 영역
				  window.onmousemove = move;
				 
				  function start(e) {
				    prevPosX = e.clientX;
				    prevPosY = e.clientY;

				    isPress = true;
				  }

				  function move(e) {
				    if (!isPress) return;

				    const posX = prevPosX - e.clientX; 
				    const posY = prevPosY - e.clientY; 
				    
				    prevPosX = e.clientX; 
				    prevPosY = e.clientY;
				    
				    $target.style.left = ($target.offsetLeft - posX) + "px";
				    $target.style.top = ($target.offsetTop - posY) + "px";
				  }

				  function end() {
				    isPress = false;
				  }
				}

				window.onload = () => {
				  const $target = document.querySelector(".mover");
				  
				  draggable($target);
				}
			
	</script>
		       	
	</body>

</html>