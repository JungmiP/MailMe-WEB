<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MailMe</title>
	<!-- Custom fonts or this template-->
<link href="../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../resources/css/sb-admin-2.min.css" rel="stylesheet">
	<script>
		<c:if test="${ empty userVO }">
			alert("로그인이 필요합니다.")
			location.href = "../login/login.jsp"
		</c:if>
	</script>
</head>
<body>
	<header></header>
	<section>
		${ userVO.memberNm }님 메일함
		<ul>
			<li><a href="writeMail.jsp">메일 쓰기</a></li>
			<li><a href="mailbox.jsp">받은 메일함</a></li>
			<li><a href="sentMail.jsp">보낸 메일함</a></li>
			<li><a href="selfMail.jsp">내게 쓴 메일함</a></li>
			<li><a href="spamMail.jsp">스팸 메일함</a></li>
			<li><a href="trashMail.jsp">쓰레기통</a></li>
		</ul>
	</section>
	<jsp:include page="../include/footer.jsp" />
</body>
</html>