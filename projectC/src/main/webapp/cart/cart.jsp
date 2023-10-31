
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="dto.ClothesDto"%>
<%@page import="dao.ClothesDao"%>
<%@page import="java.util.List"%>
<%@page import="dto.ShoppingCartDto"%>
<%@page import="dao.ShoppingCartDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
int qun = 0;

if(request.getParameter("p_num1") != null) {
	qun = Integer.parseInt(request.getParameter("p_num1"));
}

int clothesNum = 0;

if(request.getParameter("clothesNum") != null) {
	clothesNum = Integer.parseInt(request.getParameter("clothesNum"));
}



String size = request.getParameter("clotheSize");
String id = (String)session.getAttribute("id");
String clothesName = request.getParameter("clothesNum");

ClothesDao clothesDao = ClothesDao.getInstance();

ClothesDto clothesDto = clothesDao.selectOne(clothesNum);
ShoppingCartDao dao = ShoppingCartDao.getShoppingCartDao();

Map<String,Object> map = new HashMap<>();
map.put("clothesNum", clothesNum);
map.put("id", id);
map.put("clotheSize", size);


if(dao.itemDuplicated(map)==0) {

dao.insert(ShoppingCartDto.builder()
         .clothesNum(clothesNum)
         .id(id)
         .clothesSize(size)
         .clothesNum(clothesNum)
         .clothesName(clothesDto.getClothesName())
         .cartQuantity(1)
         .clothesImage(clothesDto.getClothesImage())
         .price2(clothesDto.getPrice2())
         .cartIndate(null)
         .build());
}
else {
   dao.updateplus(map);
}

//ShoppingCartDto dto2 = new ShoppingCartDto();

%>
<script type="text/javascript">
alert('상품 등록이 완료되었습니다.')
<%-- location.href="../clothes/clothes_detail.jsp?clothesNum=" + <%= clothesNum %> --%>
history.back()
</script>