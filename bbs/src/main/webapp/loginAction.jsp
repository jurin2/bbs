<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>>
<%request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<script>

		<%
			UserDAO userDAO = new UserDAO();
			int result = userDAO.login(user.getUserID(), user.getUserPassword());
			PrintWriter script = response.getWriter();
			if(result == 1){
				// 로그인 성공
				script.println("<script>");
				script.println("alert('로그인 성공')");
				script.println("location.href='./main.jsp'");
				script.println("</script>");
		
			}else if(result == -1){
				// 아이디 없음
				script.println("<script>");
				script.println("alert('존재하지 않는 사용자 입니다.')");
				script.println("history.back()");
				script.println("</script>");
		
			}else if(result == -2){
				// 패스워드 다름
				script.println("<script>");
				script.println("alert('패스워드가 일치하지 않습니다.')");
				script.println("history.back()");
				script.println("</script>");
	
			}else if(result == -3){
				// 데이터베이스 오류
				script.println("<h1 style='text-align:center;'>");
				script.println("데이터베이스 관리자에게 문의하세요.");
				script.println("</h1>");
			}
			
		%>
	</script>
	
	


</body>
</html>