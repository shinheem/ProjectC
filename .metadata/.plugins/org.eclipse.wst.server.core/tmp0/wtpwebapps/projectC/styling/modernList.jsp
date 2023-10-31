<%@page import="dao.ClothesDao"%>
<%@page import="dto.ClothesDto"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="dto.StylingDto"%>
<%@page import="dao.StylingDao"%>
<%

ClothesDao dao = ClothesDao.getInstance();

List<ClothesDto> modernList = dao.listModern();

request.setAttribute("modernList", modernList);

pageContext.forward("modern_View.jsp");
%>
