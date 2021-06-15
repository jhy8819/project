<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="board.Board" %>
<%@page import="board.BoardDAO" %>
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
			script.println("alert('유효하지 않은 글입니다.)");
			script.println("location.href='board.jsp'");
			script.println("</script>");
		}
		else{
			
	    	BoardDAO dao = new BoardDAO();
	   
			int result = dao.delete(boardID); 
	        if (result == -1) {
	        PrintWriter script = response.getWriter();
	        script.println("<script>");
	        script.println("alert('글 삭제에 실패했습니다.')");
	        script.println("history.back()");
	        script.println("</script>");
	            } 
	        else {
	        PrintWriter script = response.getWriter();
	        script.println("<script>");
	        script.println("location.href='board.jsp'");
	        script.println("</script>");
	            }
	        
	    }
		
		    %>
</body>
</html>