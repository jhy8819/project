<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<style>
@import url('https://fonts.googleapis.com/css2?family=Gugi&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Staatliches&display=swap');
body{

font-family:'Gugi', cursive;
text-align:center;

}
form {
  width: 60%;
  margin: 60px auto;
  background: #ae8f8f;
  padding: 60px 120px 80px 120px;
  text-align: center;
  
 
}
label {
  display: block;
  position: relative;
  margin: 40px 0px;
}

.input {
  width: 100%;
  padding: 10px;
  border: none;
  outline: none;
}

.btn {
  font-family:'Gugi', cursive;
  display: inline-block;
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
<title>슬기로운 홈트생활</title>
</head>
<body>
	<div id="hd_box">
			
		    <div id="logo">
				<h1><a href="index.jsp">슬기로운 홈트생활</a></h1>
			</div>
			
	</div>
	<hr>
	
	<form action="join.do" method="post">
		<h1> 회원가입 </h1>
	
		<label>
			<p>아이디 </p>
				<input type="text" class="input" name="id" autofocus placeholder="아이디를 입력하세요.">
				<hr>
		</label>
		<label>
			<p>비밀번호</p>
			<input type="password" class="input" name="passwd" placeholder="비밀번호를 입력하세요.">
			<hr>
			
		</label>
		<label>
			<p>이름</p>
			<input type="text" class="input" name="name" placeholder="이름을 입력하세요.">
			<hr>

		</label>
		
		<label>
			<p>E-MAIL</p>
			<input type="text" class="input" name="mail" placeholder="이메일을 입력하세요.">
			
			
		
		</label>

	<br>  
	<input type="submit" class="btn" value="가입완료" />
	<input type="reset" class="btn" value="다시작성" />
	
</form>
</body>
</html>