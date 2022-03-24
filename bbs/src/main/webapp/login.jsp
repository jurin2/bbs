<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.io.PrintWriter" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>웹게시판</title>
    <link rel="stylesheet" href="./css/login.css">

</head>
<body>
	<%
		PrintWriter script = response.getWriter();
	
		if(session.getAttribute("userID") != null){	
			script.println("<script>");
			script.println("alert('잘못된 접근입니다. 메인페이지로 돌아갑니다.')");
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
                                <li><a href="./main.jsp">메인</a></li>
                                <li><a href="./notice.jsp">게시판</a></li>
                            </ul>    
                        </li>
                        <li class="nav-right">
                            <ul>
                                <li><a href="./login.jsp" class="active">로그인</a></li>
                                <li style="display: none;"><a href="#">로그아웃</a></li>
                                <li><a href="./join.jsp">회원가입</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>
        <section class="sec main-sec">
            <div class="container">
                <div class="contents">                    
                    <div class="sec-tit">로그인</div>
                    <form action="./loginAction.jsp" method="post">
                        <div class="u-id">
                            <input type="text" name="userID" id="userID" placeholder="아이디">
                        </div>
                        <div class="u-pass">
                            <input type="password" name="userPassword" id="userPassword" placeholder="패스워드">
                        </div>
                        <div class="g-btn">
                            <input type="submit" value="로그인">
                            <input type="reset" value="취소">
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