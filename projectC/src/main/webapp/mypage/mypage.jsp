<%@page import="dto.CustomerDto"%>
<%@page import="dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	




//�� �󼼺��⸦ Ŭ���� �������� ��ȣ�� �Ķ���ͷ� �������� ���� : �� �󼼺��⿡�� �ٽ� �۸������ ���ư����� ���ؼ�.
//						�� ���� �ִ� �� ��� �������� ���ư���. 





CustomerDao dao = CustomerDao.getInstance();
CustomerDto vo = dao.selectOne((String)session.getAttribute("id"));


//(1)
request.setAttribute("vo", vo);
//(2)
pageContext.forward("mypage_View.jsp");
%>
%>s

