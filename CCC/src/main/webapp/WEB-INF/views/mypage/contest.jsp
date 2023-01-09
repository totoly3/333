<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<meta charset="utf-8">

<head>
<title>차트띄워줄곳</title>
<!-- 차트 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
<style>

    .orderdetail content {
        background-color:rgb(247, 245, 245);
        width:80%;
        margin:auto;
        padding-left: 50px;
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
    <jsp:include page="/WEB-INF/views/common/header.jsp"/> 
			<div id="innerOuter">
			     <!--캐릭터 순위영역-->
			     
			     <h2 align="center">대회 참가 내역</h2>
			     <br><br><br><br>
			     
			     <div id="">
				  <table id="contentArea" algin="center" class="table">
	                  <tr>
	                    <th width="100"></th>
	                    <td style="padding-left: 320px;"></td>
	                    <td>
	                        <h3 style="padding-left: 400px;">캐릭터 </h3>
	                        <br>
	                      	<div style="width: 900px; height: 500px;" align="center">
								 <!--차트가 그려질 부분-->
								 <canvas id="myChart"></canvas>
						  	</div>
	                    </td>
	                    <td></td>
	                  </tr>
			      </table>
			     </div>
		      
		       <br>
		       <hr>
		       <br><br><br>
		       
		         <!-- 대회 참가내역 영역 --> 
		         <div id="contestParticipation" >
		          <div style="padding-left: 100px;">
		           <table class="table" align="center">
					  <thead>
					    <tr>
					      <th scope="col">#</th>
					      <th scope="col">First</th>
					      <th scope="col">Last</th>
					      <th scope="col">Handle</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <th scope="row">1</th>
					      <td>Mark</td>
					      <td>Otto</td>
					      <td>@mdo</td>
					    </tr>
					    <tr>
					      <th scope="row">2</th>
					      <td>Jacob</td>
					      <td>Thornton</td>
					      <td>@fat</td>
					    </tr>
					    <tr>
					      <th scope="row">3</th>
					      <td colspan="2">Larry the Bird</td>
					      <td>@twitter</td>
					    </tr>
					  </tbody>
				  </table>
			    </div>	
		       </div>
		      <br><br><br><br><br><br>
			</div>
	
<script type="text/javascript">
		//페이지 로드되면 그래프가져오는 함수실행	
		$(document).ready(function(){ 
	 		  getGraph();
	 	});
		
		//ajax로 json방식의 데이터를 받습니다 
		function getGraph() {
			//캐릭터명 charName x축 데이터값 담을 곳 
			let charName = [];
			
			//캐릭터좋아요 charLike y축 데이터값 담을 곳 
			let charLike = [];
	
	    	 $.ajax({
	    		url: "dataSelect.my",
	    		type:"get",
	    		success: function(data) {
		   			
	    			 for (let i = 0; i<Object.keys(data).length;i++){
    				      //console.log(data[i]); //객체하나씩 출력
    				      //console.log((data)[i].charName); //x축에 넣음
    				      //console.log((data)[i].charLike); //y축에 넣을 값
 	    				  charName.push((data)[i].charName);  //x축 데이터 담을 곳에 넣어줌   				  
	    				  charLike.push(data[i].charLike); //y축 데이터 담을 곳에 넣어줌
	    			  }
	    			 //createGraph(); //그래프 생성함수 호출
	    			  createGraph(charName,charLike);
	    		 },
	    		 error: function() {
					console.log("통신실패");
				}
	    	 })
		}
		
		
//그래프 생성함수
function createGraph(charName,charLike) {
   //변수명
   var context = document.getElementById('myChart').getContext('2d');
   var myChart = new Chart(context, {
       type: 'bar', // 차트의 형태
       data: { // 차트에 들어갈 데이터
		   labels:charName,
           datasets: [
               {   //데이터
                   label: '월별 캐릭터순위', //차트 제목
                   fill: false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
                   //x축 label에 대응되는 데이터 값
                   data:charLike,
                   backgroundColor: [
                       //색상
                       'rgba(255, 99, 132, 0.2)',
                       'rgba(54, 162, 235, 0.2)',
                       'rgba(255, 206, 86, 0.2)',
                       'rgba(75, 192, 192, 0.2)',
                       'rgba(153, 102, 255, 0.2)',
                       'rgba(255, 159, 64, 0.2)',
                       'rgba(255, 99, 132, 0.2)',
                       'rgba(54, 162, 235, 0.2)',
                       'rgba(255, 206, 86, 0.2)',
                       'rgba(75, 192, 192, 0.2)',
                       'rgba(153, 102, 255, 0.2)',
                       'rgba(255, 159, 64, 0.2)'
                   ],
                   borderColor: [
                       //경계선 색상
                       'rgba(255, 99, 132, 1)',
                       'rgba(54, 162, 235, 1)',
                       'rgba(255, 206, 86, 1)',
                       'rgba(75, 192, 192, 1)',
                       'rgba(153, 102, 255, 1)',
                       'rgba(255, 159, 64, 1)'
                   ],
                   borderWidth: 1 //경계선 굵기
               }/* ,
               {
                   label: 'test2',
                   fill: false,
                   data: [
                       8, 34, 12, 24
                   ],
                   backgroundColor: 'rgb(157, 109, 12)',
                   borderColor: 'rgb(157, 109, 12)'
               } */
           ]
       },
       options: {
           scales: {
               yAxes: [
                   {
                       ticks: {
                           beginAtZero: true
                       }
                   }
               ]
           }
       }
   });
   console.log(myChart);
}
</script>
	
</body>
</html>