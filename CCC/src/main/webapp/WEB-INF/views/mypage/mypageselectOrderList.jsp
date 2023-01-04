<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<div id="">

	<h3>테이블 출력</h3>

	<table>
	  <tr>
	    <th>주문번호</th>
	    <th>굿즈명</th>
	    <th>굿즈이미지</th>
	    <th>굿즈가격</th>
	  </tr>
	  <c:forEach var="ro" items="${realoList}" >
		  <tr>
		    <td>${ro.orderNo}</td>
		    <td>${ro.goodsName}</td>
		    <td>${ro.goodsChangeName}||${ro.goodsFilePath}</td>
		    <td>${ro.goodsPrice}</td>
		  </tr>
	  </c:forEach >
	</table>
</div>