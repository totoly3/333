<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <jsp:include page="/WEB-INF/views/common/header2.jsp"/>
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
		
	  
	    </script>
		       	
	</body>

</html>