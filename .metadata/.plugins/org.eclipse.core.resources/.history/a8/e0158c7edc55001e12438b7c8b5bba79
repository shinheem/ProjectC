<%@page import="dto.CustomerAnswerDto"%>
<%@page import="dao.CustomerAnswerDao"%>
<%@page import="dto.CustomerQuestionDto"%>
<%@page import="dao.CustomerQeustionDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
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
    CustomerQuestionDto vo = dao.selectByqnum(qnum);	// 글 조회하기

    //(1)
   request.setAttribute("vo", vo);
    //(2)
    request.setAttribute("page", pageNo);
    
    CustomerAnswerDao cadao = CustomerAnswerDao.getInstance();
    List<CustomerAnswerDto> calist = cadao.commentsList(qnum);
   
    request.setAttribute("calist",calist);
    pageContext.forward("QnAReadView.jsp");		//화면에 애트리뷰트와 함께 요청 전달.
%>>