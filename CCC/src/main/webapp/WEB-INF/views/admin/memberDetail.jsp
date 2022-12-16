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
    
    
    <!-- 테이블관련 cdn -->
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
    
    <style>
    .outer {
	    margin-top: 200px; /*위로부터 50px만큼 여백*/
    }
    
    #table_id {
	    margin: auto; /*가운데 정렬*/
    }
    </style>
    
</head>
<body>
		
		<div class="outer">	
		
	            <h2 align="center">회원 상세조회</h2>  <br>
	
				<table id="table_id" class="table table-striped table-bordered" style="width:50%">
				        <thead>
				            <tr>
				                <th>Name</th>
				                <th>Position</th>
				                <th>Office</th>
				                <th>Age</th>
				                <th>Start date</th>
				                <th>Salary</th>
				            </tr>
				        </thead>
				        <tbody>
				            <tr>
				                <td>Tiger Nixon</td>
				                <td>System Architect</td>
				                <td>Edinburgh</td>
				                <td>61</td>
				                <td>2011/04/25</td>
				                <td>$320,800</td>
				            </tr>
				            <tr>
				                <td>Garrett Winters</td>
				                <td>Accountant</td>
				                <td>Tokyo</td>
				                <td>63</td>
				                <td>2011/07/25</td>
				                <td>$170,750</td>
				            </tr>
				            <tr>
				                <td>Ashton Cox</td>
				                <td>Junior Technical Author</td>
				                <td>San Francisco</td>
				                <td>66</td>
				                <td>2009/01/12</td>
				                <td>$86,000</td>
				            </tr>
				        </tbody>
				</table>
	</div>
	
</body>
</html>