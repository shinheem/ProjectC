<%@page import="dto.CustomerDto"%>
<%@page import="dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="assets/css/main.css?=3" />
<%
String id = request.getParameter("id");
String password = request.getParameter("password");
String confirmPassword = request.getParameter("confirmPassword");
String name = request.getParameter("name");
String tel = request.getParameter("tel");
String email = request.getParameter("email");

if (!password.equals(confirmPassword)) {
    out.println("<script>alert('패스워드가 일치하지 않습니다.'); history.go(-1);</script>");
} else {
    CustomerDto customer = CustomerDto.builder()
        .id(id)
        .password(password)
        .tel(tel)
        .name(name)
        .email(email)
        .build();
    
    CustomerDao customerDao = CustomerDao.getInstance();
    
    // MyBatis를 사용하여 회원 정보 등록
    int isRegistered = customerDao.registerCustomer(customer);
    
    if (isRegistered ==1) {
        out.println("<script>alert('회원가입이 완료되었습니다.'); location.href='login.jsp';</script>");
    } else {
        out.println("<script>alert('회원가입에 실패했습니다. 다시 시도해주세요.'); history.go(-1);</script>");
    }
}
%>
