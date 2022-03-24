<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>웹게시판</title>
    <link rel="stylesheet" href="./css/write.css">
</head>
<body>
    <div class="wrap">
        <header class="header">
            <div class="container">
                <nav class="nav">
                    <ul class="gbl-nav">                        
                        <li class="nav-left">
                            <ul>
                                <li class="logo"><a href="./main.jsp">게시판 만들기</a></li>
                                <li><a href="./main.jsp">메인</a></li>
                                <li><a href="./notice.jsp" class="active">게시판</a></li>
                            </ul>    
                        </li>
                        <li class="nav-right">
                            <ul>
                                <li><a href="./login.jsp">로그인</a></li>
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
                <div class="contents clearfix">
                    <div class="sec-tit">글작성</div>
                    <form action="#" method="post">
                        <div class="table">
                            <div class="n-tit">
                                제목
                                <br>
                                <input type="text" name="noticeTit" id="noticeTit">
                            </div>
                            <div class="n-content">
                                내용
                                <br>
                                <textarea name="noticeContent" id="noticeContent"></textarea>
                            </div>
                        </div>
                        <div class="g-btn">
                            <input type="submit" value="작성완료">
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