<%@page import="dto.ClothesDto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="dao.ClothesDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Map<String,Object> map = new HashMap<>();

	ClothesDao dao = ClothesDao.getInstance();
	String image = "../images/4";
	
	List<ClothesDto> list = dao.toplist();
	request.setAttribute("toplist", list);
	request.setAttribute("image", image);
	
	pageContext.forward("clothe_top_View.jsp");
%>