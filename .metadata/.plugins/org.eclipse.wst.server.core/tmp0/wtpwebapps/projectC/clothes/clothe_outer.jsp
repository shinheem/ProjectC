<%@page import="dto.ClothesDto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="dao.ClothesDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ClothesDao dao = ClothesDao.getInstance();
	
	List<ClothesDto> list = dao.outerlist();
	request.setAttribute("outerlist", list);
	
	pageContext.forward("clothe_outer_View.jsp");
%>