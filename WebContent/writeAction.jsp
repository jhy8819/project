<%@page import="board.BoardDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="board" class="board.Board" scope="page" />
<jsp:setProperty name="board" property="boardTitle" />
<jsp:setProperty name="board" property="boardContent" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
			
		}else {
			 if (board.getBoardTitle() == null || board.getBoardContent() == null) {
		            PrintWriter script = response.getWriter();
		            script.println("<script>");
		            script.println("alert('입력이 되지 않은 사항이 있습니다.')");
		            script.println("history.back()");
		            script.println("</script>");
		        } else {
		            BoardDAO dao = new BoardDAO();
		            int result = dao.write(board.getBoardTitle(), id, board.getBoardContent()); //
		            if (result == -1) {
		        PrintWriter script = response.getWriter();
		        script.println("<script>");
		        script.println("alert('글 작성에 실패했습니다.')");
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