<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE HTML>
<!--
	Apex by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<!-- 웹사이트 전체적인 틀-->
<html>
	<head>
		<title>BELLO</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" href="../assets/css/main.css?=3" />
		<link rel="stylesheet" href="../assets/css/img.css?=3">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css2/list.css"> 
	</head>
	<body class="is-preload">

<!-- 					<a class="logo" href="index.html"><strong>Bello</strong></a> -->
		<!-- Header -->
			<%@ include  file="../nav.jsp"%>
			
		
<!-- 이 공간에 기능들 넣으시면 됩니다.(상품 목록은 메인에서 갖다 쓰셔두 돼요.) -->

<!-- 공지사항  -->
<main id="list">
<div style="margin:auto;width:900px; height: 100%;">
<ul id="main">
	<li>
		<ul  class="row" style="text-align: center;margin: auto;">
		</ul>
	</li>
				<!-- noticeNum 출력하기 -->
	
 	<c:forEach var="vo" items="${list}"> 
	<li>
		<ul  class="row" style="text-align: center; margin: auto;"  >
			<li>
				<c:out value="${vo.r }"/>
			</li>
			<li><a href="NoticeRead.jsp?noticeNum=${vo.noticeNum }&page=${paging.currentPage}" class="title">  
												<!-- 현재페이지 번호 전달 시작 -순서1) -->
					<c:out value="${vo.noticeTitle }"/>
				</a>
		 		..<span style="color:orange;font-size: 80%;">
		 		</span></li>
			<li>
			<!-- vo.noticeDate 날짜 패턴을 적용한 결과 문자열을 noticeDate새로운 변수로 저장 -->
			<fmt:formatDate value="${vo.noticeDate }" pattern="yyyy-MM-dd" var="noticeDate"/>
			<!-- 오늘 작성한 글은 시간으로 표시 -->
			<c:if test='${noticeDate == today}'>
				<fmt:formatDate value="${vo.noticeDate }" pattern="yyyy-MM-dd"/>
			</c:if>
			<!-- 오늘 이전에 작성한 글은 날짜로 표시 -->
			<c:if test='${noticeDate != today}'>
				<fmt:formatDate value="${vo.noticeDate }" pattern="yyyy-MM-dd"/>
			</c:if>
			</li>
		</ul>
			<hr>
	</li>
 	</c:forEach>
	</ul>
<div style="float:right;">
    <c:if test="${user.id != null && user.role == 'admin'}">
        <a href="NoticeWrite.jsp?page=${paging.currentPage}" class="button">글쓰기</a>
    </c:if>
    <a href="${pageContext.request.contextPath}" class="button">홈</a>
</div>
</div>

<!-- 페이지 버튼을 클릭하면  url은  http://localhost:8081/jspBoard/community/list.jsp 는 동일하고 
	 page 번호 파라미터만 변경됩니다.  이런 경우 앞의 부분 생략하고 ? 부터 작성.
-->
<div style="width:700px;margin: auto;padding: 20px;text-align: center;">
	<c:out value=""/> <br>
	<hr>
	<a class="pagenum" href="?page=1">&lt;&lt;</a>   <!--(1) 첫번째 페이지 1번으로 이동 -->
	
	<!--(2)  실행하면서 파악해보세요. --> <!-- 요청은 ListController가 받음.page파라미터 변경됨. -->
	<a class="pagenum" href="?page=${paging.startPage-1 }"      
			style='<c:if test="${paging.startPage==1 }">display:none;</c:if>' >&lt;</a>
	
	<!--(3) 페이지 범위 startPage 부터 endPage 까지 반복 여기서 i 값은 페이지값-->
	<c:forEach var="i" begin="${paging.startPage }" end="${paging.endPage }">
		<a class="pagenum ieach" href="?page=${i }"><c:out value="${i }"/></a>
	</c:forEach>
	
	<!--(4)  실행하면서 파악해보세요. -->
	<a class="pagenum" href="?page=${paging.endPage+1 }"
			style='<c:if test="${paging.endPage==paging.totalPage }">display:none;</c:if>'	>&gt;</a>
			<!--  paging.totalPage는 마지막 페이지.-->
	<a class="pagenum" href="?page=${paging.totalPage }">&gt;&gt;</a>  <!--(5) 가장 마지막 페이지로 이동 -->
</div>
</main>
<script type="text/javascript">
	const pnums = document.querySelectorAll('.ieach');
	pnums.forEach(function(item){
		console.log(item);
		/* item 번호가 현재 페이지 이면 글꼴 스타일을 다르게함. */
		if(item.innerHTML=='${paging.currentPage}') {    
			item.style.color = 'black';
			item.style.fontWeight = 'bold';
		}else{
			item.style.color = '';
		}
	});
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