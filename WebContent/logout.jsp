<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>홈 트레이닝</title>
</head>
<body>
<%
	session.invalidate();

	response.sendRedirect("/project");
%>
</body>
</html>