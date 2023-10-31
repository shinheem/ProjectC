<%@page import="dto.CustomerDto"%>
<%@page import="dao.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//메소드 방식이 post 일 때는 인코딩이 꼭 필요합니다.	
	request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");
String password = request.getParameter("password");
String name = request.getParameter("name");
String email = request.getParameter("email");
String tel = request.getParameter("tel");

CustomerDto vo = CustomerDto.builder()
				.id(id)
				.password(password)
				.name(name)
				.tel(tel)
				.email(email)
				.build();

CustomerDao dao = CustomerDao.getInstance();
int result = dao.update(vo);

%>
</body>
</html>