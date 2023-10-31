<%@page import="dao.CustomerDao"%>
<%@page import="dto.CustomerDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
        // CustomerDao를 사용하여 고객 목록을 불러옵니다.
        
        dao.CustomerDao customerDao = CustomerDao.getInstance();
        List<CustomerDto> customerList = customerDao.getCustomerList();

        request.setAttribute("customerList", customerList);
        pageContext.forward("listView.jsp");
    %>