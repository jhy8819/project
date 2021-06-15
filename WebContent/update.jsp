<%@page import="com.dev.vo.MemberVO"%>
<%@page import="com.dev.dao.MemberDAO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html>
<head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Gugi&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Staatliches&display=swap');
body{

font-family:'Gugi', cursive;
text-align:center;
font-size:20px;

}
form {
  width: 60%;
  margin: 60px auto;
  background: #ae8f8f;
  padding: 60px 120px 80px 120px;
  text-align: center;
 
 
}

.input {
  width: 100%;
  padding: 10px;
  border: none;
  outline: none;
  font-size:20px;
}

.btn {
  font-family:'Gugi', cursive;
  display: inline-block;
  margin-top:20px;
  padding: 15px 40px;
  background: #ffff;
  font-weight: bold;
  color: #ae8f8f;
  border: none;
  border-radius: 3px; cursor: pointer;
  font-size:20px;
  }
  
 p{
 font-style:bold;
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
		#hd_box{
		padding: 3em 0 1em 0;
		}
</style>
					
<meta charset="EUC-KR">
<title>슬기로운 홈트 생활</title>
</head>

<body>
<div id="hd_box">
		<div id="logo">
		<h1><a href="index.jsp">슬기로운 홈트생활</a></h1>
		</div>
	</div>	
	<%MemberVO member = (MemberVO)request.getAttribute("member"); %>
	<h2>회원정보 수정</h2>
	
	<hr>
	<form action="update.do" method="post">
		<p>아이디</p>
		<input type="text" name="id" class="input" readonly value="${member.id }"> <br>
		<p>비밀번호</p>
		<input type="password" name="passwd" class="input" value="${member.passwd }"><br>
		<p>이름</p>
		<input type="text" name="name" class="input" value="${member.name }"><br>
		<p>메일</p>
		<input type="text" name="mail" class="input" value="${member.mail }"><br>
		
		<input type="submit" class="btn" value="수정" >
	</form>
	
</body>
</html>