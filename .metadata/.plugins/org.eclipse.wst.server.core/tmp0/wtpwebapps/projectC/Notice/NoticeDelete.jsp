<%@page import="dao.NoticeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제</title>
</head>
<body>
<%
  int noticeNum=Integer.parseInt(request.getParameter("noticeNum"));
  String pageNo= request.getParameter("page");
  
  NoticeDao dao= NoticeDao.getInstance();
  if(dao.noticeboardDelete(noticeNum)==1){
	  request.setAttribute("message","글 번호"+noticeNum+"삭제 되었습니다.");
	  request.setAttribute("url", "Notice.jsp?page="+pageNo);
  }
  pageContext.forward("Noticealert.jsp");
%>
</body>
</html>