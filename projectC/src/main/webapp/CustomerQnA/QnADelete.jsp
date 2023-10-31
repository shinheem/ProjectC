<%@page import="dao.CustomerQeustionDao"%>
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
  int qnum=Integer.parseInt(request.getParameter("qnum"));
  String pageNo= request.getParameter("page");
  
  CustomerQeustionDao dao= CustomerQeustionDao.getInstance();
  if(dao.questionDelete(qnum)==1){
	  request.setAttribute("message",qnum+
			  "번의 글이 삭제 되었습니다.");
	  request.setAttribute("url", "QnA.jsp?page="+pageNo);
  }
  pageContext.forward("QnAalert.jsp");
%>
</body>
</html>