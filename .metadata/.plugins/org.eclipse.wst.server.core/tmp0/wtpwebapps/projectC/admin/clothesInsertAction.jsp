<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="dto.ClothesDto"%>
<%@page import="dao.ClothesDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");

    // 업로드 경로 설정 (path 변수에 업로드할 경로를 지정하세요)
    String path = "F:/upload"; // 예: "C:/uploads"
    int size = 10 * 1024 * 1024; // 최대 업로드 크기 (10MB)

    // MultipartRequest를 사용하여 파일 업로드 처리
    MultipartRequest multiRequest = new MultipartRequest(
        request,        // 원래의 요청 객체
        path,           // 업로드 경로
        size,           // 파일 최대 크기
        "UTF-8",        // 파일명 인코딩
        new DefaultFileRenamePolicy() // 중복된 파일 이름 변경 정책
    );

    // 사용자로부터 입력받은 상품 정보
    String clothesKind = multiRequest.getParameter("clothesKind");
    String price2 = multiRequest.getParameter("price2");
    String clothesName = multiRequest.getParameter("clothesName");
    
    String clothesContent = multiRequest.getParameter("clothesContent");
    String clothesImage = multiRequest.getFilesystemName("clothesImage"); // 파일 업로드된 이미지 파일명
    String clothesCount = multiRequest.getParameter("clothesCount");
    String useyn = multiRequest.getParameter("useyn");
    String typeNum = multiRequest.getParameter("typeNum");

    // ClothesDto 객체 생성
    ClothesDto dto = new ClothesDto();
    dto.setClothesKind(clothesKind);
    dto.setPrice2(Integer.parseInt(price2));
    dto.setClothesName(clothesName);
    dto.setClothesContent(clothesContent);
    dto.setClothesImage(clothesImage);
    dto.setClothesCount(Integer.parseInt(clothesCount));
    dto.setUseyn(useyn);
    dto.setTypeNum(Integer.parseInt(typeNum));

    // clothesNum 설정
    dto.setClothesNumByType();

    // ClothesDao 객체 생성
    ClothesDao dao = ClothesDao.getInstance();
	int result = dao.insert(dto);
   
	if(result == 1) {
%>
<script type="text/javascript">
    // 글 등록 완료 메시지를 표시하고 목록 페이지로 리다이렉트
    alert('상품 등록이 완료되었습니다.');
    location.href = 'clothesList.jsp';
</script>
<%
	}
%>
<!-- 추가: clothesKind 선택이 변경되었을 때 typeNum을 업데이트하는 JavaScript 코드 -->
<script type="text/javascript">
    document.getElementById("clothesKind").addEventListener("change", function() {
        var selectedClothesKind = this.value;
        document.getElementById("typeNum").value = selectedClothesKind;
    });
</script>
