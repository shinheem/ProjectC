<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>

<title>BELLO</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="../assets/css/main.css?=3" />
</head>
<body class="is-preload">
<%@ include  file="../nav.jsp"%>
    <header id="header">
        <div>
            <div class="inner">
            <ul>
                						<li><a href="list.jsp">고객목록</a></li>
							<li><a href="clothesList.jsp">상품등록</a></li>
	<!-- 로그인 폼 위에 카카오 로그인 버튼 추가 -->
							<li><a href="adminNotice.jsp">공지사항</a></li>
							<li><a href="">고객센터</a></li>
							<li><a href ="../login/logout.jsp">로그아웃</a></li>
						</ul>		
			</div>
			<div class="first">
				<ul>
					<li><a href="../clothes/clothe_outer.jsp">OUTER</a></li>
					<li><a href="../clothes/clothe_top.jsp">TOP</a></li>
					<li><a href="../clothes/clothe_pants.jsp">PANTS</a></li>
					<li><a href="../clothes/clothe_shoes.jsp">SHOES</a></li>
					<li><a href="../styling/stylingList.jsp">STYLING</a> <!-- 스타일링 배너 -->
				</ul>
			</div>
		</div>
        
        
        
    </header>

    <form action="clothesList.jsp" method="post">
        <label for="clothesKind">상품 종류</label>
        <select name="clothesKind" id="clothesKind">
            <option value="1">아우터</option>
            <option value="2">상의</option>
            <option value="3">하의</option>
            <option value="4">신발</option>
           <option>전체보기</option>
        </select>
        <button type="submit">선택</button>
    </form>

    <div class="table" style="text-align: center;">
        <h2>
            <c:choose>
                <c:when test="${param.clothesKind == '1'}">OUTER</c:when>
                <c:when test="${param.clothesKind == '2'}">TOP</c:when>
                <c:when test="${param.clothesKind == '3'}">PANTS</c:when>
                <c:when test="${param.clothesKind == '4'}">SHOES</c:when>
                <c:otherwise>ALL</c:otherwise>
            </c:choose>
        </h2>
        <form action="clothe_deleteAction.jsp" method="post">
            <ul>
                <li><a href="clothe_insert.jsp">상품 등록</a></li>
            </ul>
            <table>
                <c:forEach var="vo" items="${list}" varStatus="status">
                    <c:if test="${status.index % 4 == 0}">
                        <tr>
                    </c:if>
                    <td>
                        <a href="clothes_detail.jsp?clothesNum=${vo.clothesNum}">
                            <img alt="" src="/img/${vo.clothesImage}">
                        </a>
                        <p>
                            <a href="clothes_detail.jsp?clothesNum=${vo.clothesNum}">${vo.clothesName}</a>
                            <input type="checkbox" name="selectedItems" value="${vo.clothesNum}">
							<button  onclick="deleteItem('${vo.clothesNum}')">삭제</button>
                        </p>
                        <p>
                            <a href="clothes_detail.jsp?clothesNum=${vo.clothesNum}">
                                <fmt:formatNumber value="${vo.price2}" type="currency" currencySymbol="￦" />
                            </a>
                        </p>
                    </td>
                    <c:if test="${(status.index + 1) % 4 == 0 || status.last}">
                    </c:if>
                </c:forEach>
            </table>
        </form>
        
        
    </div>

    <footer id="footer">
        <h4>&copy; Untitled Corporation. All rights reserved. Lorem ipsum dolor sit amet nullam.</h4>
        <ul>
            <li class="icon solid fa-map-marker-alt"></li>
            <li class="icon solid fa-envelope"></li>
            <li class="icon brands fa-twitter"></li>
            <li class="icon solid fa-phone"></li>
        </ul>
    </footer>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery.dropotron.min.js"></script>
    <script src="assets/js/browser.min.js"></script>
    <script src="assets/js/breakpoints.min.js"></script>
    <script src="assets/js/util.js"></script>
    <script src="assets/js/main.js"></script>
    <script>
    function deleteItem(clothesNum) {
        var confirmation = confirm(clothesNum + "상품을 삭제하시겠습니까?");
        if (confirmation) {
            window.location.href = "clothe_deleteAction.jsp?clothesNum=" + clothesNum;
        } 
    }
</script>
    
</body>
</html>
