<%@page import="kr.ac.kopo.vo.SelectedMailVO"%>
<%@page import="kr.ac.kopo.service.MailServiceFactory"%>
<%@page import="kr.ac.kopo.vo.MailVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.ac.kopo.vo.MemberVO"%>
<%@page import="kr.ac.kopo.service.MailService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	MailService mailService = MailServiceFactory.getInstance();
	session = request.getSession();
	MemberVO memberVO = (MemberVO)session.getAttribute("userVO");
	
	List<SelectedMailVO> mailList = mailService.searchAllSelfMails(memberVO.getMemberCd());
	pageContext.setAttribute("mailList", mailList);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내게 쓴 메일함</title>
<!-- Custom fonts for this template -->
<link href="../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../resources/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="../resources/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">
<script>
let goDetail = function(no){
	<c:if test="${ not empty userVO }">
		location.href = 'mailDetail.jsp?no=' + no
	</c:if>
	<c:if test="${ empty userVO }">
		if(confirm('로그인이 필요합니다.\n로그인 페이지로 이동하시겠습니까?'))
			location.href = '../login/login.jsp'
	</c:if>
}
</script>
</head>
<body id="page-top">
	<header></header>
	<section id="wrapper">
		<jsp:include page="/include/sidebar.jsp" />
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<jsp:include page="../include/topMenu.jsp" />

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">내게 쓴 메일함</h1>
					<p class="mb-4">내게 쓴 메일을 확인하세요!</p>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">내게 쓴 메일함</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%"	cellspacing="0">
									<thead>
										<tr>
											<th><input type="checkbox"></th>
											<th>번호</th>
											<th>제목</th>
											<th>수신일</th>
											<th>읽음</th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${not empty mailList}">
										<c:forEach items="${ mailList }" var="mail" varStatus="status">
											<tr>
												<td><input type="checkbox"></td>
												<td>${ status.count }</td>
												<td>
													<a href="javascript:goDetail(${ mail.mailCd })"> 
														<c:out value="${ mail.mailTitle }" />
													</a>
												</td>
												<td>${ mail.mailSentDate }</td>
												<c:if test="${ mail.mailOpenChk eq 0}">
													<td>안 읽음
													</td>
												</c:if>
												<c:if test="${ mail.mailOpenChk eq 1}">
													<td>읽음
													</td>
												</c:if>
											</tr>
										</c:forEach>
										</c:if>
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->
			<jsp:include page="../include/footer.jsp" />
			</div>
	</section>
	<jsp:include page="../include/footer.jsp" />
</body>
</html>