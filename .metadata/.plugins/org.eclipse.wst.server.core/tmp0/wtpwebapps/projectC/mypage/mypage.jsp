<%@page import="dto.CustomerDto"%>
<%@page import="dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	




//글 상세보기를 클릭한 페이지의 번호를 파라미터로 가져오는 이유 : 글 상세보기에서 다시 글목록으로 돌아갈때를 위해서.
//						ㄴ 보고 있던 글 목록 페이지로 돌아가기. 





CustomerDao dao = CustomerDao.getInstance();
CustomerDto vo = dao.selectOne((String)session.getAttribute("id"));


//(1)
request.setAttribute("vo", vo);
//(2)
pageContext.forward("mypage_View.jsp");
%>
%>s

