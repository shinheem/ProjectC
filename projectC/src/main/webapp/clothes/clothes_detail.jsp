<%@page import="dto.ClothesDto"%>
<%@page import="java.util.List"%>
<%@page import="dao.ClothesDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int id = 0;

if(request.getParameter("clothesNum") != null) {
	id = Integer.parseInt(request.getParameter("clothesNum"));
}

ClothesDao dao = ClothesDao.getInstance();

ClothesDto vo = dao.selectOne(id);

session.setAttribute("vo", vo);

pageContext.forward("clothes_detail_View.jsp");
%>