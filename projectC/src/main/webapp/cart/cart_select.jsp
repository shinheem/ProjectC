<%@page import="dto.ShoppingCartDto"%>
<%@page import="java.util.List"%>
<%@page import="dao.ShoppingCartDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ShoppingCartDao dao1 = ShoppingCartDao.getShoppingCartDao();

List<ShoppingCartDto> list = dao1.selectId((String)session.getAttribute("id"));

//dto 항목 모두에 대해 수량 * 단가를 누적해서 더하면 총합계
long sum =0;
int count = 0;

for(ShoppingCartDto dto : list) {
	sum += dto.getCartQuantity() * dto.getPrice2();
	count++;
}


request.setAttribute("cartlist", list);

request.setAttribute("count", count);
request.setAttribute("sum", sum);
pageContext.forward("cart_View.jsp");
%>