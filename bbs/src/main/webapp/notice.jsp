<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>웹게시판</title>
    <link rel="stylesheet" href="./css/notice.css">

</head>
<body>
   <%
		String userID = null;
		if(session.getAttribute("userID") != null){
			// 로그인 중
			userID = (String)session.getAttribute("userID");
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
                                	if(userID !=null){
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
                            		<!-- 로그인 중 -->
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
        <section class="sec main-sec">
            <div class="container">
                <div class="contents clearfix">
                     <div class="sec-tit">게시판</div>
                     <div class="table">
                         <div class="theader">
                             <div class="col-tit col-2">번호</div>
                             <div class="col-tit col-6">제목</div>
                             <div class="col-tit col-2">작성일</div>
                             <div class="col-tit col-2">작성자</div>
                         </div>
                         <div class="tbody">
                             <div class="notice-num col-2">1</div>
                             <div class="notice-tit col-6"><a href="./read.jsp">문의드립니다.</a></div>
                             <div class="notice-date col-2">2022-03-21</div>
                             <div class="notice-name col-2">111111</div>
                         </div>                        
                     </div>
                     <button type="button"><a href="./write.jsp">글쓰기</a></button>
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