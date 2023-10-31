<%@page import="java.util.List"%>
<%@page import="dto.NoticeDto"%>
<%@page import="dao.NoticeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int noticeNum=0; 
	int pageNo =0;
	if(request.getParameter("noticeNum") !=null) {
	noticeNum = Integer.parseInt(request.getParameter("noticeNum"));
	}
            //글 상세보기를 클릭한 페이지의 번호를 파라미터로 가져오는 이유 : 글 상세보기에서 다시 글목록으로 돌아갈때를 위해서.
            //						ㄴ 보고 있던 글 목록 페이지로 돌아가기. 
    if(request.getParameter("page")!=null) {
        pageNo = Integer.parseInt(request.getParameter("page"));
    }
            
    NoticeDao dao = NoticeDao.getInstance();
    NoticeDto vo = dao.selectByNoticeNum(noticeNum);	//idx 글 조회하기

    //(1)
   request.setAttribute("vo", vo);
    //(2)
    request.setAttribute("page", pageNo);
    pageContext.forward("adminNoticeReadView.jsp");		//화면에 애트리뷰트와 함께 요청 전달.
%>>