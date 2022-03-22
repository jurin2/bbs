<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원가입</title>
    <style>
        *{box-sizing:border-box;margin:0;padding:0;}
        a{text-decoration:none;color:black;}
        
        .nav {
            margin-bottom:30px;
        }
        .nav .container{
            display:flex;
            flex-flow:row nowrap;
            justify-content:space-between;
            padding:20px;
            background-color:#999;
        }
        .nav .container a{
            color:#fff;
        }
        .nav .container a.active{font-weight:900;color:#000;}
        .join_form .container{
            width:300px;
            max-width:800px;
            margin:0 auto;
            border-radius:10px;
            padding:20px;
            background-color:#ccc;
        }
        .join_form .container div{
            margin-bottom:16px;
        }
        .join_form .container div:last-child{
            margin-bottom:0;
        }
        .join_form input{
            display:block;
            width:100%;
            height:30px;
            padding:0 20px;
        }
        .join_form input[type="submit"]{
            color:#fff;
            background-color:#333;
        }
        @media (min-width:640px){
            .join_form .container{
                width:560px;
            }
        }
        @media (min-width:940px){
            .join_form .container{
                width:80%;
            }
        }
    </style>
</head>
<body>
    <nav class="nav">
        <div class="container">
            <div class="notice">
                <a href="./notice.jsp">게시판 바로가기</a>
            </div>
            <div class="login-join">            	
            	<a href="./login.jsp">로그인 바로가기</a>
                <a href="./join.jsp" class="active">회원가입 바로가기</a>
            </div>
        </div>
    </nav>

    <section class="sec join_form">
        <div class="container">
            <form action="joinAction.jsp" method="post">
                <div class="user-id">
                    <input type="text" name="userID" id="user-id" placeholder="아이디">
                </div>
                <div class="user-password">
                    <input type="password" name="userPassword" id="user-pass" placeholder="패스워드">
                </div>
                <div class="user-name">
                    <input type="text" name="userName" id="user-name" placeholder="성명">
                </div>
                <div class="user-email">
                    <input type="email" name="userEmail" id="user-email" placeholder="매일주소">
                </div>
                <div class="user-phone">
                    <input type="text" name="userPhone" id="user-phone" placeholder="전화번호">
                </div>
                <div class="btn-submit">
                    <input type="submit" value="회원가입">
                </div>
                <div class="btn-reset">
                    <input type="reset" value="다시작성">
                </div>
            </form>
        </div>
    </section>
</body>
</html>