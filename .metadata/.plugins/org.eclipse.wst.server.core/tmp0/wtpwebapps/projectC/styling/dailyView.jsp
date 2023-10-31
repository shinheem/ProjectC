<!DOCTYPE HTML>
<%@page import="dto.StylingDto"%>
<%@page import="dao.StylingDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--
	Apex by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<!-- 웹사이트 전체적인 틀-->
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<title>BELLO</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="../css/styling.css?=3" />
<link rel="stylesheet" href="../css/clothes.css?=3">
</head>
<body class="is-preload">

	<div class="table" style="text-align: center;">
		<h2>DAILY</h2>
		<table>
			<c:forEach var="vo" items="${dailyList}" varStatus="status">
				<c:if test="${status.index % 4 == 0}">
					<tr>
				</c:if>
				<td><a href="../clothes/clothes_detail.jsp?clothesNum=${vo.clothesNum}">
						<!-- 들어가는 경로 도매인 주소 --> <img alt="" src="/imageupload/${vo.clothesImage}">
				</a>
					<p>
						<a href="clothes_detail.jsp?clothesNum=${vo.clothesNum}">${vo.clothesName}</a>
					</p>
					<p>
						<a href="clothes_detail.jsp?clothesNum=${vo.clothesNum}"> <fmt:formatNumber
								value="${vo.price2}" type="currency" currencySymbol="￦" /></a>
					</p></td>
				<c:if test="${(status.index + 1) % 4 == 0 || status.last}">
				</c:if>
			</c:forEach>
		</table>
	</div>
<%@ include  file="../footer.jsp"%>


	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>