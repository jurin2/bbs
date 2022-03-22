<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="user.UserDAO" %> 
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="user" class="user.User"/>
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userEmail" />
<jsp:setProperty name="user" property="userPhone" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		UserDAO userDAO = new UserDAO();
		int rst = userDAO.join(user);
		PrintWriter script = response.getWriter();		
		if(rst==-300){
			//디비오류
			script.println("<script>");
			script.println("alert('디비오류')");	
			// script.println("location.href='login.jsp'");
			script.println("</script>");					
		}else{
			//가입성공 성공
			script.println("<script>");
			script.println("alert('가입성공')");	
			// script.println("location.href='login.jsp'");
			script.println("</script>");	
		}
	
	
	%>
</body>
</html>