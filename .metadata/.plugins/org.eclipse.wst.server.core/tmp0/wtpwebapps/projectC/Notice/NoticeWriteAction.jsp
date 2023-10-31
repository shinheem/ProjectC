<%@page import="java.net.InetAddress"%>
<%@page import="java.net.Inet4Address"%>
<%@page import="dto.NoticeDto"%>
<%@page import="dao.NoticeDao"%>
<%@page import="dto.CustomerDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
  //  request.setCharacterEncoding("UTF-8");   

    CustomerDto writer = (CustomerDto) session.getAttribute("user");
//  아래 작성자는 문제점을 발견하기 위한 추가 사항이고 나중에는 삭제합니다.   아래와 같이하면 세션 비교 코드 필요함.
//    String writer = request.getParameter("writer");
    String noticeTitle = request.getParameter("noticeTitle");
    String noticeContent = request.getParameter("noticeContent");
    String ip = request.getRemoteAddr();
    NoticeDao dao = NoticeDao.getInstance();
    int noticeNum = dao.noticeboardInsert(NoticeDto.builder()
            .writer(writer.getId()) 
              .noticeTitle(noticeTitle)
              .noticeContent(noticeContent)
              .ip(ip)
              .build());
  %>
<script type="text/javascript">
   alert('글 등록이 완료되었습니다.')
   location.href='Notice.jsp'
</script>