<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="board.BoardDAO"%>
<%@page import="board.Board" %>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>슬기로운 홈트생활</title>
</head>
<body>
		<%
		String id = null;
		if(session.getAttribute("id")!=null){
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
		if(request.getParameter("boardID") != null){
			boardID = Integer.parseInt(request.getParameter("boardID"));
		}
		if(boardID == 0){
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
		   else {
		        if (request.getParameter("boardTitle") == null || request.getParameter("boardContent") == null
		        || request.getParameter("boardTitle").equals("") || request.getParameter("boardContent").equals("")) {
		            PrintWriter script = response.getWriter();
		            script.println("<script>");
		            script.println("alert('입력이 되지 않은 사항이 있습니다.')");
		            script.println("history.back()"); 
		            script.println("</script>");
		        } else {
		            BoardDAO dao = new BoardDAO();
		            int result = dao.update(boardID,request.getParameter("boardTitle"),request.getParameter("boardTitle")); //
		            if (result == -1) {
		        PrintWriter script = response.getWriter();
		        script.println("<script>");
		        script.println("alert('글 수정에 실패했습니다.')");
		        script.println("history.back()");
		        script.println("</script>");
		            } else {
		        PrintWriter script = response.getWriter();
		        script.println("<script>");
		        script.println("location.href='board.jsp'");
		        script.println("</script>");
		            }
		        }
		    }
		
		
		    %>
</body>
</html>