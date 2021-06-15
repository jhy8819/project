<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="board.Board" %>
<%@ page import ="board.BoardDAO" %>

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
	if(id == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 필요합니다.')");
		script.println("location.href='login.jsp'");
		script.println("</script>");
		
	}
	int boardID = 0;
	if (request.getParameter("boardID") != null){
		boardID = Integer.parseInt(request.getParameter("boardID"));
	}
	
	if(boardID ==0 ){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('선택한 글이 없습니다.')");
		script.println("location.href='board.jsp'");
		script.println("</script>");
	}
	Board board = new BoardDAO().getBoard(boardID);
	if(!id.equals(board.getId())){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이 글에 대한 권한이 없습니다.')");
		script.println("location.href='board.jsp'");
		script.println("</script>");
	}
	%>



	<div id="main-wrapper">
	   <div class="container">
        	
        	
            <form method="post" action="updateAction.jsp?boardID=<%=boardID%>">
            	<h1> Q & A </h1>
            	<div class="form-group">
            	<label for="title">제목</label>
                <input type="text" id="input" placeholder="글 제목"  name="boardTitle" maxlength="50" value="<%=board.getBoardTitle() %>">
                </div>
                <br>	
                <div class="form-group">
                <label for="title">내용</label>
                <textarea placeholder="글 내용" id="input" name="boardContent" maxlength="2048" 
               style="height: 400px;"><%=board.getBoardContent() %></textarea>
 				</div>
            <input type="submit" class="btn1" value="글 수정">
            	
            </form>
        	</div>
    </div>
   
</body>
</html>