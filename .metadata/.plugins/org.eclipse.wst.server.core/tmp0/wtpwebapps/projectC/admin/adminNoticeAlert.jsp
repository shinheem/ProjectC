<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- alert과 location.href를 out.print를 안할려고 사용 -->
  <script type="text/javascript">
    alert('${message}')
    location.href='${url}'
    </script>
</body>
</html>