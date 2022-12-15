<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
			
			<div>
				
		   <table class="table table-hover" align="center">
                           
                 	 <thead>
                                   
                   <tr>
                        <th>번호</th>
                        <th>아이디</th>
                        <th>이름</th>
                        <th>등급</th>
                        <th>성별</th>
                        <th>포인트</th>
                    </tr>
     
    				 </thead>
    				 
 				<tbody>	
                   <c:forEach var="a" items="${mList}">
					<tr>
						<td>${a.mNo }</td>
						<td>${a.mId }</td>
						<td>${a.mName }</td>
						<td>${a.mgNo }</td>
						<td>${a.mGender }</td>
						<td>${a.mPointNumber }</td> 
					</tr>
				</c:forEach>
         			</tbody>	
  				
        		 </table>
                     
		</div>

</body>
</html>