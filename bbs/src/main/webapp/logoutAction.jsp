<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		session.invalidate();		
	%>
	<script>
	alert('로그아웃 합니다.');
	location.href='./main.jsp';
	</script>

</body>
</html>