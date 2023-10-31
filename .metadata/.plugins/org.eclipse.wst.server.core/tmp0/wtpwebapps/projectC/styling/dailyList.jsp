<%@page import="dto.ClothesDto"%>
<%@page import="dao.ClothesDao"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="dto.StylingDto"%>
<%@page import="dao.StylingDao"%>
<%

ClothesDao dao = ClothesDao.getInstance();

List<ClothesDto> dailyList = dao.listDaily();

request.setAttribute("dailyList", dailyList);

pageContext.forward("dailyView.jsp");
%>
