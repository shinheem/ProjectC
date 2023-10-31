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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>BELLO</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="../assets/css/main.css?=3" />
</head>
<body class="is-preload">

	<!-- 					<a class="logo" href="index.html"><strong>Bello</strong></a> -->
	<!-- Header -->
	<header id="header">
		<div>
			<div class="inner">
				<ul>
							<li><a href="list.jsp">고객목록</a></li>
							<li><a href="clothesList.jsp">상품등록</a></li>
	<!-- 로그인 폼 위에 카카오 로그인 버튼 추가 -->
							<li><a href="adminNotice.jsp">공지사항</a></li>
							<li><a href="../CustomerQnA/QnA.jsp">고객센터</a></li>
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

	<!-- Search Bar -->
    <div id="search">
        <a class="logo" href="admin.jsp"><strong>Bello</strong></a>
    </div>

    <!-- Banner -->
    <div id="banner">
        <!-- Banner 내용 추가 -->
    </div>

    <!-- Main -->
    <div class="inner">
        <!-- Content -->
        <div id="content">
            <!-- Posts -->
            <header>
                <h1>BEST</h1>
            </header>
           <section class="posts">
                <!-- 상품 목록 표시 -->
                <div class="image fit" style="text-align: center;">
                    <a href="clothes/clothes_detail.jsp?clothesNum=10003"><img src="/imageupload/3.jpg" alt="" /></a>
                      <p><a href="clothes/clothes_detail.jsp?clothesNum=10003">테일러드 크롭 반팔 자켓</a></p>
                      <p><a href="clothes/clothes_detail.jsp?clothesNum=10003"><fmt:formatNumber value="31120" type="currency" currencySymbol="￦"/></a></p>
                </div>
                 <div class="image fit" style="text-align: center;">
                    <a href="clothes/clothes_detail.jsp?clothesNum=20003"><img src="/imageupload/6.jpg" alt="" /></a>
                      <p><a href="clothes/clothes_detail.jsp?clothesNum=20003">파우더 허그미 리본 볼레로 시스루 부클 브이넥 긴팔 니트</a></p>
                      <p><a href="clothes/clothes_detail.jsp?clothesNum=20003"><fmt:formatNumber value="19900" type="currency" currencySymbol="￦"/></a></p>
                </div>
                 <div class="image fit" style="text-align: center;">
                    <a href="clothes/clothes_detail.jsp?clothesNum=70005"><img src="/imageupload/59.jpg" alt="" /></a>
                     <p><a href="clothes/clothes_detail.jsp?clothesNum=70005">미니 데님 스커트</a></p>
                     <p><a href="clothes/clothes_detail.jsp?clothesNum=70005"><fmt:formatNumber value="21900" type="currency" currencySymbol="￦"/></a></p>
                </div>
                <!-- 다른 상품들 추가 -->
            </section>

            <!-- Mini Posts -->
            <header>
                <h1>NEW</h1>
            </header>
             <section class="mini-posts">
                <!-- 상품 목록 표시 -->
                <div class="image fit" style="text-align: center;">
                    <a href="clothes/clothes_detail.jsp?clothesNum=10002"><img src="/imageupload/2.jpg" alt="" /></a>
                      <p><a href="clothes/clothes_detail.jsp?clothesNum=10002">트렌치 플리츠 코트 자켓 원피스</a></p>
                      <p><a href="clothes/clothes_detail.jsp?clothesNum=10002"><fmt:formatNumber value="64800" type="currency" currencySymbol="￦"/></a></p>
                </div>
                 <div class="image fit" style="text-align: center;">
                    <a href="clothes/clothes_detail.jsp?clothesNum=40011"><img src="/imageupload/23.jpg" alt="" /></a>
                      <p><a href="clothes/clothes_detail.jsp?clothesNum=40011">위티브 카라 원피스</a></p>
                      <p><a href="clothes/clothes_detail.jsp?clothesNum=40011"><fmt:formatNumber value="29000" type="currency" currencySymbol="￦"/></a></p>
                </div>
                 <div class="image fit" style="text-align: center;">
                    <a href="clothes/clothes_detail.jsp?clothesNum=90012"><img src="/imageupload/93.jpg" alt="" /></a>
                    <p><a href="clothes/clothes_detail.jsp?clothesNum=90012">파라슈트 나일론 투웨이 조거 카고 팬츠</a></p>
                     <p><a href="clothes/clothes_detail.jsp?clothesNum=90012"><fmt:formatNumber value="24560" type="currency" currencySymbol="￦"/></a></p>
                </div>
                <!-- 다른 상품들 추가 -->
            </section>
        </div>
    </div>

    <!-- Footer -->
    <footer id="footer">
        <h4>&copy; Untitled Corporation. All rights reserved. Lorem ipsum dolor sit amet nullam.</h4>
        <ul>
            <li class="icon solid fa-map-marker-alt"></li>
            <li class="icon solid fa-envelope"></li>
            <li class="icon brands fa-twitter"></li>
            <li class="icon solid fa-phone"></li>
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