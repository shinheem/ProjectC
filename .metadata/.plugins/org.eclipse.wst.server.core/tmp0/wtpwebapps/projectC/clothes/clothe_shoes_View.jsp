<!DOCTYPE HTML>
<!--
	Apex by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<!-- 웹사이트 전체적인 틀-->
<html>
	<head>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
		<title>BELLO</title>
		<meta charset="utf-8" />
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" href="../assets/css/clothes.css?=3" />
	</head>
	<body class="is-preload">

<%@ include  file="../nav.jsp"%>
<!-- 이 공간에 기능들 넣으시면 됩니다.(상품 목록은 메인에서 갖다 쓰셔두 돼요.) -->
		<div class="table" style="text-align: center;">
			<h2>SHOES NEW</h2>
			<table>
  				<c:forEach var="vo" items="${shoeslist}" varStatus="status">
   					 <c:if test="${status.index % 4 == 0}">
    					  <tr>
    						</c:if>
   								 <td>
    								  <a href="clothes_detail.jsp?clothesNum=${vo.clothesNum}">
    								  <img alt="" src="/imageupload/${vo.clothesImage}"></a>
    								  <p><a href='clothes_detail.jsp?clothesNum=${vo.clothesNum}'>${vo.clothesName}</a></p>
    								 <p><a href='clothes_detail.jsp?clothesNum=${vo.clothesNum}'>
    								 <fmt:formatNumber value="${vo.price2}" type="currency" currencySymbol="￦"/></a></p>
   								 </td>
  						  <c:if test="${(status.index + 1) % 4 == 0 || status.last}">
    				</c:if>
  				</c:forEach>
			</table>
		</div>

      <!-- Footer -->
        <%@ include  file="../footer.jsp"%>

      <!-- Scripts -->
        <script src="../assets/js/jquery.min.js"></script>
         <script src="../assets/js/jquery.dropotron.min.js"></script>
         <script src="../assets/js/browser.min.js"></script>
         <script src="../assets/js/breakpoints.min.js"></script>
         <script src="../assets/js/util.js"></script>
         <script src="../assets/js/main.js"></script>

   </body>
</html>