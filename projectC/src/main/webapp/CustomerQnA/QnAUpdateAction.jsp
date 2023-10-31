<%@page import="dao.CustomerQeustionDao"%>
<%@page import="dto.CustomerQuestionDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>        
<%
 //  request.setCharacterEncoding("UTF-8"); //filter로 실행함.
   String ip=request.getRemoteAddr();
 
   int qnum= Integer.parseInt(request.getParameter("qnum"));
   String questionTitle = request.getParameter("questionTitle");
   String questionContent= request.getParameter("questionContent");
   String pageNo= request.getParameter("page");
   CustomerQuestionDto vo= CustomerQuestionDto.builder()
		   .qnum(qnum)
		   .questionTitle(questionTitle)
		   .questionContent(questionContent)
		   .ip(ip)
		   .build();
   
   CustomerQeustionDao dao=CustomerQeustionDao.getInstance();		         
    int result = dao.questionUpdate(vo);
    if(result==1){
    	request.setAttribute("message","글 수정이 완료 되었습니다.");
    	request.setAttribute("url","QnARead.jsp?qnum="+qnum+"&page="+pageNo);
    	pageContext.forward("QnAalert.jsp");
     }
   %>