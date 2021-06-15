<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>홈 트레이닝</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="css/style1.css" />

</head>
<body>
	
	
<!-- 헤더 -->
	
		<div id="hd_box">
			
		    <div id="logo">
				<h1><a href="index.jsp">슬기로운 홈트생활</a></h1>
			</div>
		
			<div class="top_box">
				<ul class="list">
				<%
					Object id = session.getAttribute("id");
				
				%>
				<%
					if(id == null){
				%>	
					<li><button type="button" onclick="location.href='login.jsp' " class="btn1">로그인</button></li>
					<li><button type="button" onclick="location.href='register.jsp' " class="btn1">회원가입</button></li>
				<%
					}else{
				%>
					<li><button type="button" onclick="location.href='logout.jsp' " class="btn1">로그아웃</button></li>
					<li><button type="button" onclick="location.href='search.do' " class="btn1">정보 수정</button></li>
				<%
					}
				%>
				
				
					
				</ul>
			</div>
		</div>
		
	
	<nav>
				<ul id="main-menu">
					<li><a href="introduce.jsp">우리홈트</a></li>
					<li><a href="exercise.jsp">트레이닝</a></li>
					<li><a href="exercise1.jsp">전신 &코어</a></li>
					<li><a href="#">스트레칭</a></li>
					<li><a href="board.jsp">온라인 PT</a>
					</li>
				</ul>
	</nav>
	

<div class ="container">
<div class="carousel"></div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="js/swiper.js"></script>
<script>
  $('.carousel').swiper({
    imageList : ['image/img04.jpg', 'image/img01.jpg', 'image/img03.jpg', 'image/img02.jpg', 'image/img05.jpg'],
    animateType : 'animate',
    changeBtn : true,
    slideBtn : true,
    isAuto : true,
  });
 </script>

</div>	


	<div class="banner_box">
		<p class="box1">HomeTraining Service</p>
		<p class="box2">슬기로운 홈트생활은 이러한 서비스를 제공합니다.</p>
	</div>
	
<div id="feactures-wrapper">
	<div class="container">
		<div class="row">
			<div class="colmedium">
			
				<section class="box_feature">
				<a href="board.jsp" class="image feature">
					<img src="image/training2.jpg" alt="" width="550" height="500">
				</a>
				<div class="inner">
						<header>
							<h2>온라인 PT 서비스</h2>
							<p> ★ 전담코치와 함께 1:1 맞춤운동과 개인 식단 관리</p>
							<p> ★ 개인 운동에 관한 문의사항 바로 질문 가능</p>
						</header>
						
					</div>
				</section>
			</div>
			<div class="colmedium">
				<section class="box_feature">
					<a href="exercise.jsp" class="image feature">
						<img src="image/training1.jpg" alt="" width="550" height="500">
					</a>
					<div class="inner">
						<header>
							<h2>홈트레이닝의 장점 최대화</h2>
							<p> ★ 운동 초보자도 쉽게 따라할 수 있는 홈 트레이닝</p>
							<p> ★ 원하는 부위에 따른 운동 영상 제공</p>
						</header>
							
					</div>
					</section>
			</div>
			
		
		</div>
	
	
	</div>

</div>


</body>
<%@include file="footer.jsp" %>
</html>