<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="board.BoardDAO" %>
<%@ page import ="board.Board" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>슬기로운 홈트생활</title>
<link rel="stylesheet" href="css/style2.css" />
<style>
	a,a:hover {
		color:black;
		text-decoration:none;
	}

</style>
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
    String id = null; //그렇지 않으면 null값
    if (session.getAttribute("id") != null) {
        id = (String) session.getAttribute("id");
    }
    int pageNumber=1;
    if (request.getParameter("pageNumber") != null){
    	pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
    }
    %>
   

 <div id="main-wrapper">
 	<div class="container">
 		<div class="content">
 		
 			<table class="list">
 				<thead>
 					<tr>
 						<th>번호</th>
 						<th>제목</th>
 						<th>작성자</th>
 						<th>작성일</th>
 				</thead>
 				<tbody>
 				<%
 					BoardDAO dao = new BoardDAO();
 					ArrayList<Board> list = dao.getList(pageNumber);
 					for(int i=0; i< list.size(); i++) {
 				%>
 				
 				<tr>
 						<td><%=list.get(i).getBoardID() %></td>
 						<td><a href="view.jsp?boardID=<%=list.get(i).getBoardID()%>"><%=list.get(i).getBoardTitle() %></a></td>
 						<td><%=list.get(i).getId() %></td>
 						<td><%=list.get(i).getBoardDate() %></td>
 				</tr>
 				
 		
 				<% 		
 					}
 				
 				
 				%>
 					
 				</tbody>
 			</table>
			
			
 			<br>
 			<a href="write.jsp" class="btn1">글쓰기</a>
 			
 		</div>
 	
 	</div>
 
 
 </div>

</body>
</html>