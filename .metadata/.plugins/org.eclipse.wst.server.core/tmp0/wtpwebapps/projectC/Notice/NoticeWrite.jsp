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
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" href="../assets/css/main.css?=3" />
		<link rel="stylesheet" href="../assets/css/img.css?=3">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css2/community.css?v=3"> 
	</head>
	<body class="is-preload">

<!-- 					<a class="logo" href="index.html"><strong>Bello</strong></a> -->
		<!-- Header -->
			<%@ include  file="../nav.jsp"%>
			
		<!-- Search Bar -->
			<div id="search">
			<a class="logo" href="../index.jsp"><strong>BeLLo</strong></a> 
				<!-- <div class="inner">
					<div class="content">
						<form method="post" action="#">
							<input type="search" name="query" id="query" value="" placeholder="Search our site" />
						</form>
					</div>
				</div>
 -->			</div>
<!-- 이 공간에 기능들 넣으시면 됩니다.(상품 목록은 메인에서 갖다 쓰셔두 돼요.) -->
<body>
			<main id="write">
			<p style="font-size: 100%;">공지 사항 - 글쓰기</p>
<form name="frm1" method="post" action="NoticeWriteAction.jsp"  onsubmit="return isValid()">
 <table>
 	<tr><th>제목</th>
 		<td>
 			<input type="text" name="noticeTitle" size="50">	
 		</td>
 	</tr>
 	<!-- 작성자는 문제점을 발견하기 위한 추가 사항이고 나중에는 삭제합니다. -->
 	<tr><th>작성자</th>
 		<td>
 			<input type="text" name="writer" size="50" value="${user.id }">	
 		</td>
 	</tr>
 	<tr><th>내용</th>  
 		<td>
 			<textarea  rows="30" cols="80" name="noticeContent"></textarea>
 		</td>
 	</tr>
 	<tr>
 	<td colspan="2" align="center">
	 	<button type="submit">저장</button>
	 	<button type="reset">다시쓰기</button>
	 	<button type="button" onclick="location.href='Notice.jsp'">목록</button>  
 	</td>
 	</tr>
 </table>
 </form>
</main> 
<script type="text/javascript">
//태그의 required 속성을 사용해서 필수 입력을 체크할수 있지만 필수 입력 외의 다른 유효성검사
//예를 들면, 최소 길이 또는 정규식 패턴 등의 유효성 검사를 위해 함수를 사용합니다.
	function isValid(){
		let result = true			//유효성 검사 결과 저장
		const noticeContent = document.forms[0].noticeContent		//input 요소 지정
		const noticeTitle = document.forms[0].noticeTitle		//input 요소 지정
		
		if(noticeTitle.value == '') {
			alert('글 제목 작성은 필수 입니다.')
			result = false
			noticeTitle.focus()
		}
		
		if(noticeContent.value == '') {
			alert('글 내용 작성은 필수 입니다.')
			result = false
			noticeContent.focus()
		}
		
		return result;
	}
</script>
 
      <!-- Footer -->
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