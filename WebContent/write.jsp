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
	<%
	String id = null;
	if(session.getAttribute("id") !=null) {
		id = (String)session.getAttribute("id");
	}
	%>
	<div id="main-wrapper">
	   <div class="container">
        	
        	
            <form method="post" action="writeAction.jsp">
            	<h1>Q & A</h1>
            	<div class="form-group">
            	<label for="title">제목</label>
                <input type="text" id="input" placeholder="글 제목"  name="boardTitle" maxlength="50">
                </div>
                <br>	
                <div class="form-group">
                <label for="title">내용</label>
                <textarea placeholder="글 내용" id="input" name="boardContent" maxlength="2048" style="height: 400px;"></textarea>
 				</div>
            <input type="submit" class="btn1" value="글쓰기">
            	
            </form>
        	</div>
    </div>
   
</body>
</html>