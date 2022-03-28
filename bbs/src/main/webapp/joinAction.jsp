<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>>
<%request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<jsp:setProperty name="user" property="userName"/>
<jsp:setProperty name="user" property="userAddress"/>
<jsp:setProperty name="user" property="userBirthday"/>
<jsp:setProperty name="user" property="userGender"/>
<jsp:setProperty name="user" property="userEmail"/>
<jsp:setProperty name="user" property="userPhone"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<script>

		<%
			PrintWriter script = response.getWriter();
		
			if(
					user.getUserID()==null ||
					user.getUserPassword()==null ||
					user.getUserName()==null ||
					user.getUserAddress()==null ||
					user.getUserBirthday()==null ||
					user.getUserGender()==null ||
					user.getUserEmail()==null ||
					user.getUserPhone()==null
			){
				script.println("<script>");
				script.println("alert('입력자료를 확인하세요.')");
				script.println("history.back();");
				script.println("</script>");	
			}else{
				String userID = null;
				if(session.getAttribute("userID") != null){
					// 로그인 중
					userID = (String)session.getAttribute("userID");
					script.println("<script>");
					script.println("alert('로그인 중입니다.')");
					script.println("location.href='./main.jsp';");
					script.println("</script>");	
				}
				
				
				UserDAO userDAO = new UserDAO();
				int result = userDAO.join(user.getUserID(), user.getUserPassword(), user.getUserName(), user.getUserAddress(), user.getUserBirthday(), user.getUserGender(), user.getUserEmail(), user.getUserPhone());
				
				if(result == -3){
					// 데이터베이스 오류
					script.println("<script>");
					script.println("alert('데이터베이스 오류')");
					script.println("location.href='./main.jsp';");
					script.println("</script>");
				}else{
					// 회원가입 성공
					script.println("<script>");
					script.println("alert('회원가입을 환영합니다.')");
					script.println("location.href='./main.jsp';");
					script.println("</script>");
				}
			}
		
		
			
			
		%>
	</script>
	
	


</body>
</html>