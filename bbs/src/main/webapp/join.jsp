<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>웹게시판</title>
    <link rel="stylesheet" href="./css/join.css">

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
                                <li><a href="./notice.jsp">게시판</a></li>
                            </ul>    
                        </li>
                        <li class="nav-right">
                            <ul>
                                <li><a href="./login.jsp">로그인</a></li>
                                <li style="display: none;"><a href="#">로그아웃</a></li>
                                <li><a href="./join.jsp" class="active">회원가입</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>
        <section class="sec main-sec">
            <div class="container">
                <div class="contents">                    
                    <div class="sec-tit">회원가입</div>
                    <form action="joinAction.jsp" method="post">
                        <div class="u-id not-null">
                            <input type="text" name="userID" id="userID" placeholder="아이디">
                        </div>
                        <div class="u-pass not-null">
                            <input type="password" name="userPassword" id="userPassword" placeholder="패스워드">
                        </div>
                        <div class="u-name not-null">
                            <input type="text" name="userName" id="userName" placeholder="성명">
                        </div>
                        <div class="u-address">
                            <input type="text" name="userAddress" id="userAddress" placeholder="주소">
                        </div>
                        <div class="u-birthday">
                            <input type="text" name="userBirthday" id="userBirthday" placeholder="생년월일">
                        </div>
                        <div class="u-gender">
                            <label>
                                <input type="radio" name="userGender" id="userGender1" value="남">
                                남자
                            </label>
                            <label>
                                <input type="radio" name="userGender" id="userGender2" value="여">
                                여자
                            </label>
                        </div>
                        <div class="u-email">
                            <input type="email" name="userEmail" id="userEmail" placeholder="이메일">
                        </div>
                        <div class="u-phone">
                            <input type="text" name="userPhone" id="userPhone" placeholder="연락처">
                        </div>
                        

                        <div class="g-btn">
                            <input type="submit" value="전송">
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