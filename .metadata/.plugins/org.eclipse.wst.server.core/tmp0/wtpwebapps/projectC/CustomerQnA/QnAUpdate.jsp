<%@page import="dto.CustomerQuestionDto"%>
<%@page import="dao.CustomerQeustionDao"%>
<%@page import="dto.CustomerDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  
CustomerDto user = (CustomerDto)session.getAttribute("user");
if(user==null) /* 로그인이 안된 상태 */
   throw new IllegalAccessException();
/* IllegalAccessException은 일반적으로 임의의 Exception 발생시킬 때 많이 씁니다. */
	
int qnum=0; 
	int pageNo =0;
	if(request.getParameter("qnum") !=null) {
		qnum = Integer.parseInt(request.getParameter("qnum"));
	}
            //글 상세보기를 클릭한 페이지의 번호를 파라미터로 가져오는 이유 : 글 상세보기에서 다시 글목록으로 돌아갈때를 위해서.
            //						ㄴ 보고 있던 글 목록 페이지로 돌아가기. 
    if(request.getParameter("page")!=null) {
        pageNo = Integer.parseInt(request.getParameter("page"));
    }
            
    CustomerQeustionDao dao = CustomerQeustionDao.getInstance();
    CustomerQuestionDto vo = dao.selectByqnum(qnum);//idx 글 조회하기

    if(!user.getId().equals(vo.getQuestionWriter()))
    	throw new IllegalAccessException();
    	
    //(1)
    request.setAttribute("vo", vo);
    //(2)
    request.setAttribute("page", pageNo);
    pageContext.forward("QnAUpdateView.jsp");		//화면에 애트리뷰트와 함께 요청 전달.
%>