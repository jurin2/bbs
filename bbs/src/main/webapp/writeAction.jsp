<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="notice.NoticeDAO"%>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="notice" class="notice.Notice" scope="page"/>
<jsp:setProperty name="notice" property="noticeTit"/>
<jsp:setProperty name="notice" property="noticeContent"/>

   
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		PrintWriter script = response.getWriter();
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID=(String)session.getAttribute("userID");
		}
	
		NoticeDAO noticeDAO = new NoticeDAO();
		int result = noticeDAO.write(notice.getNoticeTit(),userID,notice.getNoticeContent());			
		if(result == -3){
			//데이터베이스 오류
			script.println("<script>");
			script.println("alert('데이터베이스 오류')");
			script.println("location.href='./main.jsp'");
			script.println("</script>");
		}else{
			//게시판 작성 성공
			script.println("<script>");
			script.println("alert('게시판 작성이 완료되었습니다.')");
			script.println("location.href='./notice.jsp'");
			script.println("</script>");
		}			
		
	%>

	
</body>
</html>