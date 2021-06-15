<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/style2.css" />
<link rel="stylesheet" href="css/style3.css" />
<title>슬기로운 홈트생활</title>
</head>
<body>
<%@include file="menu.jsp" %>

		<div id="main-wrapper">
		<div class="container">
			<div class="content">
				
					<h2>트레이닝</h2>
					<div class="training">
						<div class="category">
							<ul>
								<li><a href="exercise.jsp" class="rk">가슴</a></li>
								<li><a href="#">등</a></li>
							    <li><a href="#">어깨</a></li>
							    <li><a href="#">팔</a></li>
							    <li><a href="#">복부</a></li>
							    <li><a href="#">힙</a></li>
							
							</ul>
						
						
						</div>
					
					
					
					
					</div>
				
			</div>
		
		</div>
	
		<div class="container1">
			<div id="box">
			
			
			
			<a href="exercise1.jsp">
					<% if(id ==null){
					
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('로그인이 필요합니다.')");
					script.println("location.href='login.jsp'");
					script.println("</script>");	
					
					}else{
					%>
					}
					<img src="image/rk3.PNG" onclick="location.href='index.jsp'" alt="바닥 프레스" width="400" height="300">
					<p>밴드 프레스</p>
			</a>
			<%
			}
			
			%>
			<a href="#">
					<img src="image/rk1.PNG" alt="" width="400" height="300">
					<p>바닥 프레스</p>
			</a>
			<a href="#">
					<img src="image/rk2.PNG" alt="" width="400" height="300">
					<p>밴드 체스트 플라이</p>
			</a>
			
			</div>
		
		
			<div id="box">
			<a href="exercise1.jsp">
					<img src="image/rk4.PNG" alt="" width="400" height="300">
					<p>벤치 프레스</p>
			</a>
			<a href="#">
					<img src="image/rk5.PNG" alt="" width="400" height="300">
					<p>푸시업</p>
			</a>
			<a href="#">
					<img src="image/rk6.PNG" alt="" width="400" height="300">
					<p>인클라인 벤치프레스</p>
			</a>
			
			</div>
			
			<div id="box">
			<a href="#">
					<img src="image/rk7.PNG" alt="" width="400" height="300">
					<p>케이블 크로스오버</p>
			</a>
			<a href="#">
					<img src="image/rk8.PNG" alt="" width="400" height="300">
					<p>펙덱 플라이 머신</p>
			</a>
			<a href="#">
					<img src="image/rk9.PNG" alt="" width="400" height="300">
					<p>체스트 프레스</p>
			</a>
			
			</div>
		</div>
	
	</div>
	
	
	
	
</body>
</html>