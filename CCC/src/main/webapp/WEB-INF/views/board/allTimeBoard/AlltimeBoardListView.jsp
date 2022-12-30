<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  
  <style>
  
  #alltime2{
  height : 350px;
  float : bottom;
  position: relative; top: 400px;
  }
    #alltime1{
  height : 450px;
  position: relative; top: 300px;
  }
    #alltime3{
  height : 250px;
  position: relative; top: 500px;
  }
     #rk1{
  background-color:red;
  height : 135px;
  width: 250px;
  
  }
    #rk3{
  background-color: black;
  height : 100px;
  width: 150px;
 
  }
    #rk2{
  background-color:green;
  height : 135px;
  width: 200px;
  
  }
  </style>
</head>
<body> 

	<jsp:include page="/WEB-INF/views/common/header2.jsp"/>

	<div class="container mt-3">
			  <h2>역대 수상작</h2>
			  <p>좋아요 순</p>
		  	
		  	
		  		<c:if test="${!altimelist.isEmpty()}">
					  <div class="d-flex mb-3">
						
						    <div class="p-2 flex-fill bg-info" id="alltime2" >이번달 좋아요 : ${altimelist.get(1).like}<p id="rk2"><img src="${altimelist.get(1).changeName}"></p>좋아요 2등 </div>
						    
						   	
						    <div class="p-2 flex-fill bg-warning" id="alltime1" >이번달 좋아요 : ${altimelist.get(0).like}<p id="rk1"><img src="${altimelist.get(0).changeName}"></p>좋아요1등 </div>
						    
						   	
						    <div class="p-2 flex-fill bg-primary" id="alltime3" >이번달 좋아요 : ${altimelist.get(2).like}<p id="rk3"><img src="${altimelist.get(2).changeName}"></p>좋아요 3등</div>
					  </div>
				</c:if>
		  	
		  	
	</div>

</body>
</html>