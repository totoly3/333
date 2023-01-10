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
		
		.star {
	    position: relative;
	    font-size: 2rem;
	    color: #ddd;
	  }
	  
	  .star input {
	    width: 100%;
	    height: 100%;
	    position: absolute;
	    left: 0;
	    opacity: 0;
	    cursor: pointer;
	  }
	  
	  .star span {
	    width: 0;
	    position: absolute; 
	    left: 0;
	    color: red;
	    overflow: hidden;
	    pointer-events: none;
	  }
			
</style>		



</head>
<body>
   <jsp:include page="/WEB-INF/views/common/header.jsp"/>
		       <h1>놀이터</h1>	
		       
     <div class="wrap">
   
	
	<span class="star">
	  ★★★★★
	  <span>★★★★★</span>
	  <input type="range" oninput="drawStar(this)" value="1" step="1" min="0" max="10">
	</span>
		<script>
			const drawStar = (target) => {
				  document.querySelector(`.star span`).style.width = `${target.value * 10}%`;
				}
				  
				  
				// JQUERY CODE
				const drawStar = (target) => {
				  $(`.star span`).css({ width: `${target.value * 10}%` });
				}
      </script>
      
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
			  
			  setTimeout(() => counter($counter, max), 500);
			}
			
		
			
	</script>
		       	
	</body>

</html>