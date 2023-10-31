<%@page import="dao.NoticeDao"%>
<%@page import="dto.NoticeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>        
<%
 //  request.setCharacterEncoding("UTF-8"); //filter로 실행함.
   String ip=request.getRemoteAddr();
 
   int noticeNum= Integer.parseInt(request.getParameter("noticeNum"));
   String noticeTitle = request.getParameter("noticeTitle");
   String noticeContent= request.getParameter("noticeContent");
   String pageNo= request.getParameter("page");
   NoticeDto vo= NoticeDto.builder()
		   .noticeNum(noticeNum)
		   .noticeTitle(noticeTitle)
		   .noticeContent(noticeContent)
		   .ip(ip)
		   .build();
   
   NoticeDao dao=NoticeDao.getInstance();		         
    int result = dao.noticeboardUpdate(vo);
    if(result==1){
    	request.setAttribute("message","글 수정이 완료 되었습니다.");
    	request.setAttribute("url","adminNoticeRead.jsp?noticeNum="+noticeNum+"&page="+pageNo);
    	pageContext.forward("adminNoticeAlert.jsp");
     }
   %>