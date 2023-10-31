<%@page import="dto.ShoppingCartDto"%>
<%@page import="dao.ShoppingCartDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ShoppingCartDao dao = ShoppingCartDao.getShoppingCartDao();
ShoppingCartDto dto = new ShoppingCartDto();
String buy = request.getParameter("p_num1");

int delete = dao.delete((String)session.getAttribute("id"));
%>
<script type="text/javascript">
alert('장바구니가 비워졌습니다.');
location.href = document.referrer;//뒤로가기 후 새로고침
</script>