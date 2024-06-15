<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MailMe</title>
<script>
	window.onload = function(){
		let loginBtn = document.querySelector("#login");
		loginBtn.addEventListener('click', function(){
			location.href = "login/login.jsp"
		})
		let joinBtn = document.querySelector("#join");
		joinBtn.addEventListener('click', function(){
			location.href = "login/join.jsp"
		})
		let findBtn = document.querySelector("#find");
		findBtn.addEventListener('click', function(){
			location.href = "login/find.jsp"
		})
	}
</script>
</head>
<body>
	<header>
	</header>
	<section>
		<div>
			<h1>MailMe</h1>
			<button id="login">로그인</button>
			<button id="join">회원가입</button>
			<button id="find">ID/PW찾기</button>
		</div>
	</section>
	<footer>
	</footer>
</body>
</html>