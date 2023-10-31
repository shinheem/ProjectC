<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<meta name="description" content="">
<meta name="keywords" content="">
<title>BELLO</title>
<link rel="stylesheet" href="../assets/css/styling.css?=3">

<!-- jQuery 로드 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
	$(document).ready(function() {
		// "데일리" 버튼 클릭 시 뷰 로드
		$("#daily-button").click(function() {
			loadView("dailyList.jsp");
		});

		// "모던" 버튼 클릭 시 뷰 로드
		$("#modern-button").click(function() {
			loadView("modernList.jsp");
		});

		// "힙" 버튼 클릭 시 뷰 로드
		$("#hip-button").click(function() {
			loadView("hipList.jsp");
		});

		// AJAX를 사용하여 뷰를 로드하고 컨테이너에 표시하는 함수
		function loadView(viewUrl) {
			$.ajax({
				url : viewUrl,
				success : function(result) {
					$("#view-container").html(result);
				}
			});
		}
	});
</script>
</head>
<body class="is-preload">

	<%@ include  file="../nav.jsp"%>
	<h2>원하시는 스타일을 선택해주세요.</h2>
	<div id = "button">
	<button id="daily-button">DAILY</button>
	<button id="modern-button">MORDERN</button>
	<button id="hip-button">Hip</button>
</div>


	<div id="view-container"></div>
	
	

</body>
</html>
