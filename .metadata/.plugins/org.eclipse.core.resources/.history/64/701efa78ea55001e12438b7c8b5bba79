<%@page import="dto.ClothesDto"%>
<%@page import="java.util.List"%>
<%@page import="dao.ClothesDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    ClothesDao dao = ClothesDao.getInstance();
    List<ClothesDto> list = dao.list();
    
    String clothesKind = request.getParameter("clothesKind");
    
    if (clothesKind != null) {
    if(clothesKind.equals("1")){
    	
    	 list = dao.outerlist(); 
    }else if(clothesKind.equals("2")){
    	
    list = dao.toplist();  
    
    }else if(clothesKind.equals("3")){
    	
    list = dao.pantslist();  
    	
    }else if(clothesKind.equals("4")){
    	
    list = dao.shoeslist();  
    	
    }else{
    	}
    }
    	
    
    
    
    
    
    
    
    request.setAttribute("list", list);
    

    
    pageContext.forward("clothesListView.jsp");
%>
