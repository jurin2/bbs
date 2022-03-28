<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>웹게시판</title>
    <link rel="stylesheet" href="./css/write.css">
    <style>
        
    </style>
</head>
<body>
	
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			//로그인 중
			userID = (String)session.getAttribute("userID");
		}else{
			//로그오프
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('잘못된 접근입니다. 매인페이지로 돌아갑니다.');");
			script.println("location.href='./main.jsp';");				
			script.println("</script>");
		}
	%>
    <div class="wrap">
        <header class="header">
            <div class="container">
                <nav class="nav">
                    <ul class="gbl-nav">
                        <li class="nav-left">
                            <ul>
                                <li class="logo"><a href="./main.jsp">게시판 만들기</a></li>
                                <li><a href="./main.jsp" class="active">메인</a></li>
                                <%
                                if(userID != null){
                                %>
                                	<li><a href="./notice.jsp">게시판</a></li>
                                <%
                                }
                                %>
                            </ul>
                        </li>
                        <li class="nav-right">
                            <ul>
                            	<%
                            	if(userID == null){                            		
                           		%>
                           			<!-- 로그인 아님 -->
	                            	<li><a href="./login.jsp">로그인</a></li>
	                            	<li><a href="./join.jsp">회원가입</a></li>
                            	<%	
                            	}else{
                           		%>
                            		<!-- 로그인 중임 -->
                            		<li><a href="./logoutAction.jsp">로그아웃</a></li>
                           		<%
                            	}
                            	%>
                            
                                
                                
                                
                                
                                
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>
        </header>
        <section class="sec main-sec">
            <div class="container">
                <div class="contents clearfix">                    
                    <div class="sec-tit">글작성</div>
                    <form action="./writeAction.jsp" method="post">
                        <div class="table">
                            <div class="n-tit">
                                제목
                                <br>
                                <input type="text" name="noticeTit" id="noticeTit">    
                            </div>
                            <div class="n-content">
                                내용
                                <br>
                                <textarea name="noticeContent" id="noticeContent">
                                    
                                </textarea>
                            </div>
                            
                        </div>
                        <div class="g-btn">
                            <input type="submit" value="작성 완료">                            
                        </div>
                    </form>
                </div>
            </div>
        </section>
        <footer class="footer">
            <div class="container">
                <address>
                    Copyright CHO
                </address>
            </div>
        </footer>
    </div>
</body>
</html>