<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style2.css" />
<title>슬기로운 홈트생활</title>
</head>
<body>
		<div class="header-wrapper">
		<header id="header" class="container" >
			<div id="logo">
				<h1><a href="index.jsp">슬기로운 홈트생활</a></h1>
			</div>
				<%
					Object id = session.getAttribute("id");
				
				%>
				<nav class="login">
					<ul>	
				<%
					if(id == null){
				%>		
						<li><button type="button" onclick="location.href='login.jsp' " class="btn1">로그인</button></li>
						<li><button type="button" onclick="location.href='register.jsp' " class="btn1">회원가입</button></li>
				<%
					}else{
				%>
					<li><button type="button" onclick="location.href='logout.jsp' " class="btn1">로그아웃</button></li>
					<li><button type="button" onclick="location.href='search.do' " class="btn1">정보수정</button></li>
					
				<%
					}
				%>
					</ul>
				</nav>
				</header>
			
			
				<div class="navbar">
					
						<a href="introduce.jsp">우리홈트</a>
						<a href="exercise.jsp">트레이닝</a>
						<a href="#">전신&코어</a>
						<a href="#">스트레칭</a>
						<div class="dropdown">
							<button class="dropbtn">온라인 PT
							</button>
						<div class="dropdown-content">
						<a href="#">공지사항</a>
						<a href="board.jsp">PT 상담</a>
						</div>
						</div>
					</div>

				
				</div>
		
	
	
</body>
</html>