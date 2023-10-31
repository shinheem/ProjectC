<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
		<link rel="stylesheet" href="../assets/css/noticeRead.css?=3" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css2/read.css?v=3">
	</head>
	<body class="is-preload">

<!-- 					<a class="logo" href="index.html"><strong>Bello</strong></a> -->
		<!-- Header -->
			<%@ include  file="../nav.jsp"%>
			
		
<!-- 이 공간에 기능들 넣으시면 됩니다.(상품 목록은 메인에서 갖다 쓰셔두 돼요.) -->
<body>
<main id="read">
	<div style="width:100%; margin: auto;max-width: 1100px; hight: 300px">
		<ul id="table"> <!-- c:out value 에 들어갈 프로퍼티는 Community 클래스를 보세요. -->
			<li>
				<ul class="row">
					<li>제목</li>
					<li><c:out value="${vo.noticeTitle}"/></li>
				</ul>
			</li>
			<li>
				<ul class="row">
					<li>작성자</li>
					<li><c:out value="${vo.writer }"/>
					<span style="font-size: 70%; padding-left: 30px;">(<c:out value="${vo.ip}"/>)</span></li>
					
					<li>작성날짜</li>
					<li><fmt:formatDate value="${vo.noticeDate }" type="both"/></li>
				</ul>
			</li>
			<li id="noticeContent">
				<ul>			
					<li>
						<pre><c:out value="${vo.noticeContent }"/></pre>
					</li>				
				</ul>
			</li>
		</ul>
	<div style="text-align: center;margin-bottom: 10px;">
	<form action="" method="post">   <!-- action 은 자바스크립트에서 정합니다. -->
		
		<c:if test="${user.id == vo.writer }"> 
			<input type="hidden" name="noticeNum" value="${vo.noticeNum}">
			<input type="hidden" name="page" value="${page}">
			
			 <c:if test="${user.id != null && user.role == 'admin'}">
			<a class="button" href="javascript:formexecute(1)">수정</a>  <!-- POST요청 자바스크립트 함수:인자값 1은 수정 -->
			<a class="button" href="javascript:formexecute(2)">삭제</a>  <!-- POST요청 자바스크립트 함수:인자값 2는 삭제  -->
	</c:if>
		</c:if>
			<a class="button" href="Notice.jsp?page=${page }">목록</a>   <!-- 현재페이지 번호 전달 - 순서3) -->
	</form>
	</div>
  	<script type="text/javascript">
		/*  POST 요청을 위해 변경한 함수 : 가급적 url에 많은 정보를 노출하지 않으려면 post 방식으로 합니다. */
		function formexecute(f){
			let url
			let message
			if(f===1){			//아래 url 변수와 같이 조건삼항연산자로 변경가능
				message='글 수정하시겠습니까?'
			}else if(f===2){
				message='글 삭제하시겠습니까?'
			}
			const yn = confirm(message)
			if(yn) {
				//설명 작성 : 
				url = (f===1)? 'NoticeUpdate.jsp' :(f===2)? 'NoticeDelete.jsp':'#';
				document.forms[0].action=url
				document.forms[0].submit()
			}else{
				alert('취소합니다.')
			}	
		}
	</script>
	<!-- 메인글 출력 끝 --><hr></div>
</main>	
</body>
</html>
 
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