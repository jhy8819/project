<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "board.Board" %>
<%@ page import = "board.BoardDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
@import url('https://fonts.googleapis.com/css2?family=Gugi&display=swap');

body{
text-align:center;
font-family:'Gugi', cursive;
}

body h1{
font-size:40px;
}

#main-wrapper {
		background: #fff;
		box-shadow: 0px 3px 0px 0px rgba(0, 0, 0, 0.05);
		padding: 5em 2em 5em 2em;
	    }

table{
	margin-left:20%;


}
table .view{
  
  border-collapse: collapse;
  text-align: center;
  line-height: 1.5;
  border: 1px solid #ccc;
  

}



table.view th {
  width: 20%;
  padding: 10px 30px;
  font-weight: bold;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  background: #fcf1f4;
  font-size:30px;
  

}
table.view td {
  width: 70%;
  padding: 10px;
  border-bottom: 1px solid #ccc;
  font-size:20px;
}

</style>
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
	int boardID = 0;
	if(request.getParameter("boardID") != null) {
		boardID = Integer.parseInt(request.getParameter("boardID"));
	}
	if(boardID ==0 ){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다.')");
		script.println("location.href='board.jsp'");
		script.println("</script>");
	}
	
	Board board = new BoardDAO().getBoard(boardID);
	%>
	<div id="main-wrapper">
	   <h1> 게시판  글</h1>
	   	<table class="view">
	   		
	   		<tr>
	   			<th id="row"> 글 제목 </th>
	   			<td><%=board.getBoardTitle() %></td>
	   		</tr>
	   		<tr>
	   			<th id="row"> 작성자 </th>
	   			<td><%=board.getId() %></td>
	   		</tr>
	   		<tr>
	   			<th id="row"> 작성 일자</th>
	   			<td><%=board.getBoardDate() %></td>
	   		</tr>
	   		<tr>
	   			<th id="row">내용</th>
	   			<td colspan="3" style="min-height:200px; text-align:left"><%=board.getBoardContent() %></td>
	   		</tr>
	   		
	   	</table>
	   	<br>
            <a href="board.jsp" class="btn1">목록</a>
            <%
            	if(id != null && id.equals(board.getId())){
            %>
            	<a href="boardUpdate.jsp?boardID=<%=boardID %>" class="btn1">수정</a>
            	<a href="deleteAction.jsp?boardID=<%=boardID %>" class="btn1">삭제</a>
            	
            <%
           		}
            %>
            
         
        	</div>
    
   
</body>
</html>