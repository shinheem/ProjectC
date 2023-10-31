<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dao.ClothesDao" %>

<%
int clothesNum = 0;
if(request.getParameter("clothesNum") != null){
    clothesNum=Integer.parseInt(request.getParameter("clothesNum"));
}
System.out.println("clothesNum");
String message = "";
ClothesDao dao = ClothesDao.getInstance();
dao.delete(clothesNum);
  request.setAttribute("url", "clothesList.jsp");
    request.setAttribute("message", "상품이 삭제되었습니다.");
    
    pageContext.forward("adminNoticeAlert.jsp");


%>