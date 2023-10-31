<%@page import="dto.ShoppingCartDto"%>
<%@page import="dao.ShoppingCartDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
ShoppingCartDao dao = ShoppingCartDao.getShoppingCartDao();
ShoppingCartDto dto = new ShoppingCartDto();
int num = 0;
if(request.getParameter("clothesNum") != null) {
	num = Integer.parseInt(request.getParameter("clothesNum"));
}

String size = request.getParameter("clotheSize");
String id = (String)session.getAttribute("id");
System.out.print(id);
System.out.print(num);

int delete = dao.deleteone(ShoppingCartDto.builder()
							.id(id)
							.clothesNum(num)
							.clothesSize(size)
							.build());
%>
</body>
<script type="text/javascript">
alert('선택한 상품이 삭제되었습니다.');
location.href = document.referrer;//뒤로가기 후 새로고침
</script>
</html>