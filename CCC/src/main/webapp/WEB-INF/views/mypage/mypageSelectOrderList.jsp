<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<div id="">
	<div> 
	<h3>테이블출력</h3>
		<table>
			<tr style="background-color:#EA4F4D; ">
				<th ></th>
				<th>주문번호</th>
				<th>굿즈명</th>
				<th>굿즈이미지</th>
				<th>굿즈가격</th>
			</tr>
			<c:forEach var="ro" items="${realoList}" >
			<tr>
				<td></td>
				<td>${ro.orderNo}</td>
				<td>${ro.goodsName}</td>
				<td>${ro.goodsFilePath}||${ro.goodsChangeName}</td>
				<td>${ro.goodsPrice}</td>
			</tr>
			</c:forEach >
		</table>
	</div>
<br><br>
</div>