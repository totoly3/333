<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
		@import url("https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css");
	
	* {
	  font-family: Pretendard;
	}
	
	body {
	  background: #f7f8fc;
	}
	
	canvas {
	  transition: 2s;
	}
	
	button {
	  background: #febf00;
	  margin-top: 1rem;
	  padding: .8rem 1.8rem;
	  border: none;
	  font-size: 1.5rem;
	  font-weight: bold;
	  border-radius: 5px;
	  transition: .2s;
	  cursor: pointer;
	}
	
	button:active {
	  background: #444;
	  color: #f9f9f9;
	}
	 
	div {
	  width: 380px;
	  overflow: hidden;
	  display: flex;
	  align-items: center;
	  flex-direction: column;
	  position: relative;
	}
	
	div::before {
	  content: "";
	  position: absolute;
	  width: 10px;
	  height: 50px;
	  border-radius: 5px;
	  background: #000;
	  top: -20px;
	  left: 50%;
	  transform: translateX(-50%);
	  


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
    </div>
    <br><br>
    
    <div>
	  <canvas width="380" height='380'></canvas>  
	  <button onclick="rotate()">룰렛 돌리기</button>
	</div>
	
		<script>
		
			var button1; //전역변수 선언
			var count=0;
			window.onload=function(){
				button1=document.getElementById("button1"); //초기화	
				button2=document.getElementById("button2"); //초기화
				
				m=function start(){
					count++;
					img=document.createElement("img");
					img.src="board/worldCup/WC1.png";
					img.width="100"; img.height="100";
					document.body.appendChild(img);
					if(count>10){ //10번 이상 실행하면 
						clearInterval(auto);
					}
				}		
				t=function(){
					setTimeout(m,500);	//0.5초뒤 m을 실행해라
					auto=setInterval(m, 200); //1초마다 m을 실행해라
				}  //10번 실행하면 멈추도록 만들어 보세요
	
				button1.onclick=t; //클릭하면 t 실행해라 
				button2.onclick=function(){
					clearInterval(auto);
				}
	
			}
		
			
		//아래는  룰렛	
		const $c = document.querySelector("canvas");
		const ctx = $c.getContext(`2d`);
		
		
		const product = [
		  "떡볶이", '돈가스', "초밥", "피자", "냉면", "치킨", '족발', "피자", "삼겹살",
		];
		
		const colors = ["#dc0936", "#e6471d", "#f7a416", "#efe61f ", "#60b236", "#209b6c", "#169ed8", "#3f297e", "#87207b", "#be107f", "#e7167b"];
		
		const newMake = () => {
		    const [cw, ch] = [$c.width / 2, $c.height / 2];
		    const arc = Math.PI / (product.length / 2);
		  
		    for (let i = 0; i < product.length; i++) {
		      ctx.beginPath();
		      ctx.fillStyle = colors[i % (colors.length -1)];
		      ctx.moveTo(cw, ch);
		      ctx.arc(cw, ch, cw, arc * (i - 1), arc * i);
		      ctx.fill();
		      ctx.closePath();
		    }
		
		    ctx.fillStyle = "#fff";
		    ctx.font = "18px Pretendard";
		    ctx.textAlign = "center";
		
		    for (let i = 0; i < product.length; i++) {
		      const angle = (arc * i) + (arc / 2);
		
		      ctx.save()  ;
		
		      ctx.translate(
		        cw + Math.cos(angle) * (cw - 50),
		        ch + Math.sin(angle) * (ch - 50),
		      );
		
		      ctx.rotate(angle + Math.PI / 2);
		
		      product[i].split(" ").forEach((text, j) => {
		        ctx.fillText(text, 0, 30 * j);
		      });
		
		      ctx.restore();
		    }
		}
		
		// 룰렛 돌리기
		const rotate = () => {
			// 룰렛 당첨 결정
		    const ran = Math.floor(Math.random() * product.length);
			
		    const arc = 360 / product.length;
		    const rotate = (ran * arc) + 3600 + (arc * 3);
		    
		    $c.style.transform = `rotate(-${rotate}deg)`;
		    
		    return ran;
		};

		// 함수 호출
		const getResult = rotate();

	    
	    setTimeout(() => alert(`오늘의 야식은?! ${product[ran]} 어떠신가요?`), 2000);
	  }, 1);
	};
		
		newMake();
					
					
	  
	    </script>
		       	
	</body>

</html>