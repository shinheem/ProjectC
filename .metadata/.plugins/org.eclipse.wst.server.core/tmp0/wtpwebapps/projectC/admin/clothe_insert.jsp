<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <meta charset="UTF-8"/>

    <meta name="viewport"
          content="width=device-width, initial-scale=1, user-scalable=no" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <link rel="stylesheet" href="../assets/css/main.css?=3" />
</head>
<body class="is-preload">

<!-- Header -->
<header id="header">
    <div>
        <div class="inner">
            <ul>
                <li><a href="../login/login.jsp">로그인</a></li>
                <li><a href="Notice.jsp">공지사항</a></li>
                <li><a href="#">마이페이지</a></li>
                <li><a href="generic.html">장바구니</a></li>
                <li><a href="elements.html">고객센터</a></li>
            </ul>
        </div>
        <div class="first">
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
					<li><a href="../styling/stylingList.jsp">STYLING</a> <!-- 스타일링 배너 --></li>
					 </ul>
                        </div>
                    </div>
           
     
</header>

<!-- Search Bar -->
<div id="search">
    <a class="logo" href="index.html"><strong>Bello</strong></a>
</div>

<!-- 상품 등록 폼 -->
<h2>상품 등록</h2>
<form action="clothesInsertAction.jsp" method="post" enctype="multipart/form-data">
    <label for="clothesKind">상품 종류:</label>
    <select name="clothesKind" id="clothesKind">
        <option value="1">아우터 데일리</option>
        <option value="2">아우터 모던</option>
        <option value="3">아우터 힙</option>
        <option value="4">상의 데일리</option>
        <option value="5">상의 모던</option>
        <option value="6">상의 힙</option>
        <option value="7">하의 데일리</option>
        <option value="8">하의 모던</option>
        <option value="9">하의 힙</option>
        <option value="10">신발</option>
    </select>
     <!-- 추가: typeNum 값을 설정하기 위한 hidden 필드 -->
    <input type="hidden" name="typeNum" id="typeNum" value="1"> <!-- 기본값은 1로 설정 -->
    
    <br>
    <label for="price2">가격:</label>
    <input type="number" name="price2" id="price2">
    <br>
    <label for="clothesName">상품명:</label>
    <input type="text" name="clothesName" id="clothesName">
    <br>
    <label for="clothesContent">상품 설명:</label>
    <textarea name="clothesContent" id="clothesContent"></textarea>
    <br>
    <label for="clothesImage">상품 이미지:</label>
    <input type="file" name="clothesImage" id="clothesImage">
    <br>
    
    <label for="clothesCount">상품 수량:</label>
    <input type="number" name="clothesCount" id="clothesCount">
    <br>
    <label for="useyn">판매 여부:</label>
    <select name="useyn" id="useyn">
        <option value="Y">판매 중</option>
        <option value="N">품절</option>
    </select>
    <br>
    <input type="submit" value="등록">
</form>
<script type="text/javascript">
    // clothesKind 선택이 변경되었을 때 typeNum을 업데이트하는 함수
    document.getElementById("clothesKind").addEventListener("change", function() {
        // 선택한 clothesKind 값을 가져옴
        var selectedClothesKind = this.value;

        // typeNum 필드에 선택한 clothesKind 값 설정
        document.getElementById("typeNum").value = selectedClothesKind;
    });
</script>
<!-- Footer -->
<footer id="footer">
    <h4>&copy; Untitled Corporation. All rights reserved. Lorem ipsum
        dolor sit amet nullam.</h4>
    <ul>
        <li class="icon solid fa-map-marker-alt">
        <li class="icon solid fa-envelope">
        <li class="icon brands fa-twitter">
        <li class="icon solid fa-phone">
    </ul>
</footer>

<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.dropotron.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>

</body>
</html>
