<%@page import="java.time.LocalDate"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="dto.Paging"%>
<%@page import="dao.BuyDao"%>
<%@page import="dto.BuyDto"%>
<%@page import="dto.CustomerDto"%>
<%@page import="dao.CustomerDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
int pageNo;

if(request.getParameter("page")==null) pageNo=1;
else pageNo= Integer.parseInt(request.getParameter("page"));
 BuyDao dao= BuyDao.getInstance();
 int pageSize=10;

 Paging pages= new Paging(pageNo,dao.buycount(),pageSize);
 
 Map<String,Integer> map = new HashMap<>();
 map.put("start",pages.getStartNo());
 map.put("end",pages.getEndNo());
 

 
CustomerDao dao2 = CustomerDao.getInstance();
CustomerDto my = dao2.selectOne((String)session.getAttribute("id"));
request.setAttribute("my", my);   


List<BuyDto> list = dao.pagelist(map);
request.setAttribute("list", list);
request.setAttribute("today", LocalDate.now());		


request.setAttribute("page", pageNo);
request.setAttribute("paging", pages);
pageContext.forward("buy_View.jsp");
		%>
</body>
</html>