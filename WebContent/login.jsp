<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<style>
		@import url('https://fonts.googleapis.com/css2?family=Gugi&display=swap');
		@import url('https://fonts.googleapis.com/css2?family=Staatliches&display=swap');
		body{
			background: #ae8f8f;
			text-align: center;
			}
			
		.group{
			 width: 50%;
			 height:50%;
  			 padding: 10px;
 			 border: none;
 			 outline: none;
		}
		
		.btn {
 		display: inline-block;
  		padding: 10px 30px;
  		background: #ffff;
  		font-weight: bold;
  		color: #ae8f8f;
  		border: none;
  		border-radius: 3px; cursor: pointer;
  		font-family: 'Gugi', cursive;
  		font-size:20px;

		}
		form {
			font-size: 30px;
			text-align: center;
			margin-top: 100px;
			
		}
		b{
			font-family: 'Gugi', cursive;
			font-size :40px;

		}
		#logo{
		float:center;
		margin-left:20px;
		display:inline-block;
		
		}
		
		#logo a{ color:#fadfe8; }
		
		#hd_box{
		padding: 3em 0 1em 0;
		}
 		a { text-decoration:none }
 		
		#logo h1 {
			background: #ff4486;
			color: #ffff;
			border-radius: 8px;
			font-family:'Gugi', cursive;
			font-weight: 400;
			padding: 0.25em 1.2em 0.25em 1.2em;
			font-size: 2em;
			letter-spacing: 0.05em;
			display: inline-block;
			vertical-align:middle;
			
		}
	
					
</style>
<meta charset="EUC-KR">
<title>홈트레이닝</title>
</head>
<body>
	
	<div id="hd_box">
			
		    <div id="logo">
				<h1><a href="index.jsp">슬기로운 홈트생활</a></h1>
			</div>
			
	</div>
	<hr>
	<div class="container" align="center">
		<form action="login.do" method="post">
			<b>로그인</b> <br>
			<div>
			
			<input type="text" name="id" class="group" placeholder="ID를 입력하세요" >
			</div>
			<br>
			<div>
			<input type="password" class="group" placeholder="Password" name="passwd">
	    	</div>
	    	<br>
	    	<input type="submit" class="btn" value="로그인">
	    	<button type="button" onclick="location.href='register.jsp' " class="btn">회원가입</button>
			</form>
	</div>
	
</body>
</html>