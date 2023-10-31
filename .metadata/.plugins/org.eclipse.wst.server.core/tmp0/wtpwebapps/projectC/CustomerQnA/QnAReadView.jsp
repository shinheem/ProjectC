<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>BELLO</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" href="../assets/css/QnARead.css?=3" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css2/read.css?v=3">
	</head>
	<body class="is-preload">
		<!-- Header -->
		<%@ include  file="../nav.jsp"%>
<!-- 이 공간에 기능들 넣으시면 됩니다.(상품 목록은 메인에서 갖다 쓰셔두 돼요.) -->
<body>
<main id="read">
	<div style="width:100%; margin: auto;max-width: 1100px;">
		<ul id="table"> <!-- c:out value 에 들어갈 프로퍼티는 Community 클래스를 보세요. -->
			<li>
				<ul class="row">
					<li>제목</li>
					<li><c:out value="${vo.questionTitle}"/></li>
				</ul>
			</li>
			<li>
				<ul class="row">
					<li>작성자</li>
					<li><c:out value="${vo.questionWriter }"/>
					<span style="font-size: 70%; padding-left: 30px;">(<c:out value="${vo.ip}"/>)</span></li>
					
					<li>작성날짜</li>
					<li><fmt:formatDate value="${vo.questionDate }" type="both"/></li>
				</ul>
			</li>
			<li id="questionContent">
				<ul>			
					<li>
						<pre><c:out value="${vo.questionContent }"/></pre>
					</li>				
				</ul>
			</li>
		</ul>
	<div style="text-align: center;margin-bottom: 10px;">
	<form action="" method="post">   <!-- action 은 자바스크립트에서 정합니다. -->
		<c:if test="${user.id == vo.questionWriter }">  <!-- session 에 저장된 user애트리뷰트의 id와 작성자가 같은면 보이기 -->
			<input type="hidden" name="qnum" value="${vo.qnum}">
			<input type="hidden" name="page" value="${page}">	
			<a class="button" href="javascript:formexecute(1)">수정</a>  <!-- POST요청 자바스크립트 함수:인자값 1은 수정 -->
			<a class="button" href="javascript:formexecute(2)">삭제</a>  <!-- POST요청 자바스크립트 함수:인자값 2는 삭제  -->
	</c:if>
			<a class="button" href="QnA.jsp?page=${page }">목록</a>   <!-- 현재페이지 번호 전달 - 순서3) -->
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
				url = (f===1)? 'QnAUpdate.jsp' :(f===2)? 'QnADelete.jsp':'#';
				document.forms[0].action=url
				document.forms[0].submit()
			}else{
				alert('취소합니다.')
			}	
		}
	</script>
	<!-- 메인글 출력 끝 -->
	<hr>
	<!-- 댓글 등록/삭제를 위한 form. 댓글 수정은 구현 안합니다. -->
	
	
	<c:if test="${user.id == 'admin' }">
	<form action="QnAAction.jsp" method="post">
	<!-- 필요한 파라미터.화면에는 표시안함. -->
	<input type="hidden" name="question" value="${vo.qnum }">
	<input type="hidden" name="anum" value="0" >
	<input type="hidden" name="f" value="1">
	<input type="hidden" name="page" value="${page }">  <!-- 현재페이지 번호 전달 - 순서8) -->
		<ul>
			<li>
				<ul class="row">
					<li>작성자</li>	
					<li><input name="writer" class="input" value="${user.id }" readonly></li>	
				</ul>	
			</li>
			<li>
				<ul style="display: flex;">
					<li>
						<textarea rows="5" cols="80" name="answerContents" 
						style="resize:none;margin-right:20px;" 
						placeholder="댓글을 입력해주세요." class="input"></textarea>
					</li>				
					<li style="align-self: center;margin-bottom: 20px;">
							<c:if test="${user.id == 'admin'}">  
								<button type="button" onclick="executeCmt(1,0)">저장</button>  
														
							</c:if>	
					</li>
				</ul>
			</li>			
							</c:if>
							
						<%-- 	<c:if test="${user.id == 'admin'}">		
								<button type="button" onclick="location.href='../Login/login.jsp'">로그인</button>
							</c:if> --%>
				
			<!-- 댓글 목록 : cmtlist 애트리뷰트 필요. -->
			<c:forEach var="ca" items="${calist}">
				<ul class="crow">
					<li>작성자 : 
					<c:out value="${ca.answerWriter }" /></li>							
					<li style="float: right;">
					<c:out value="${ca.answerDate }" /></li>	
				</ul>
			<li>답변 :
				<pre class="cmtcontents"><c:out value="${ca.answerContents }" /></pre>
			</li>
				<!-- session 에 저장된 user애트리뷰트의 id와 작성자의 id 가 같은면 삭제버튼 보이기 -->		
				<c:if test="${user.id==ca.answerWriter }">  
					<li><a href="javascript:executeCmt(2,'${ca.anum }')">삭제</a></li>		
									
				</c:if>	
			</c:forEach>
			</ul>
	</div>
	</form>
</main>	
<script type="text/javascript">
	function executeCmt(fval,cidx) {	/* 첫번째는 등록 또는 삭제 기능, 두번째는 삭제할 댓글 idx */
		const frm = document.forms[1]
		if(fval==1){		//댓글 등록.  '1'==1 (참)  '1'===1 (거짓. 타입체크)
			if(frm.answerContents.value==''){
				alert('글 내용은 필수 입력입니다.')
				frm.answerContents.focus()
				return
			}else {
				frm.f.value = fval
				frm.submit()		//댓글 저장
			}
		}else if(fval===2){
			const yn = confirm('댓글 삭제 하시겠습니까?')
			if(yn) {
				frm.f.value = fval
				frm.anum.value = cidx
				frm.submit()
			}
			
		}
	}
</script>
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