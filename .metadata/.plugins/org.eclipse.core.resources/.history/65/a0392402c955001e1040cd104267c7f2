<%@page import="dao.ClothesDao"%>
<%@page import="dto.ClothesDto"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="dto.StylingDto"%>
<%@page import="dao.StylingDao"%>
<% 
Map<String, Object>map = new HashMap<>();

ClothesDao dao = ClothesDao.getInstance ();

List<ClothesDto> hipList = dao.listHip();

request.setAttribute("hipList", hipList);

pageContext.forward("hipView.jsp");

%>
