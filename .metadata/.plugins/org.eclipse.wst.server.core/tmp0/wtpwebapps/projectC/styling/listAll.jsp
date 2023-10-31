<%@page import="dto.ClothesDto"%>
<%@page import="java.util.List"%>
<%@page import="dao.ClothesDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ClothesDao dao = ClothesDao.getInstance();

List<ClothesDto> list = dao.list();
request.setAttribute("list", list);

pageContext.forward("stylingList.jsp");

%>