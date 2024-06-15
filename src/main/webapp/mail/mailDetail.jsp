<%@page import="kr.ac.kopo.vo.SelectedMailVO"%>
<%@page import="kr.ac.kopo.service.MailService"%>
<%@page import="kr.ac.kopo.service.MailServiceFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%
	String no = request.getParameter("no");

	MailService mailService = MailServiceFactory.getInstance();
	int mailCd = 0;
	if(no != ""){
		mailCd = Integer.parseInt(no);
	}
	// 읽음 표시로 바꾸기
	mailService.checkOpen(mailCd);
	// 메일 가져오기
	SelectedMailVO mail = mailService.searchMail(mailCd);
	pageContext.setAttribute("mail", mail);
	
	//삭제, 뒤로가기 기능을 위해 이전 페이지의 url 저장
	String referer = request.getHeader("Referer");
	request.getSession().setAttribute("returnUrl", referer.substring(referer.lastIndexOf("/")));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메일 보기</title>
 <!-- Custom fonts for this template-->
    <link href="../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../resources/css/sb-admin-2.min.css" rel="stylesheet">    
<script>
function doAction(action){	
	switch(action){
	case 'D':
		if(confirm('정말 삭제하시겠습니까?')){
			location.href = './deleteMail.jsp?no=' + ${mail.mailCd}
		}
		break;
	case 'B':
		location.href = '.' + "${ returnUrl }"
		break;
	case 'S':
		//스팸신고 기능 만들기!
		break;
	}	
}
</script>
</head>

<body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">
	<jsp:include page="../include/sidebar.jsp" />	

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                           
                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                             
                            </a>
                            
                        </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                
                            </a>
                           
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">${ userVO.memberNm }</span>
                                <img class="img-profile rounded-circle"
                                    src="../resources/img/undraw_profile.svg">
                            </a>
                                                       
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-1 text-gray-800"></h1>
                    

                    <!-- Content Row -->
                                     
                        <!-- Border Bottom Utilities -->
                        <div class="col-lg-10">
                        	<div style="margin-bottom:10px;">
							<button class="btn btn-primary btn-icon-split btn-sm" onclick="doAction('S')"> <span class="text">신고</span></button>
							<button class="btn btn-primary btn-icon-split btn-sm" onclick="doAction('D')"> <span class="text">삭제</span></button>
							<button class="btn btn-primary btn-icon-split btn-sm" onclick="doAction('B')"> <span class="text">목록</span></button>
                            </div>
                            <div class="card mb-4 py-3 border-bottom-primary">
                                <div class="card-body">
                                    
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="col-auto" style="display:inline;">
                                            		<i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        	</div>
                                            
                                            <div class="h4 mb-0 font-weight-bold text-primary" style="display:inline;">제목 | ${ mail.mailTitle }</div>
                                        </div>                                     
                                    
                            		</div>
                                    <hr>
                                    <div class="text-xs font-weight-bold text-gray-800 text-uppercase mb-1">
                                               보낸 사람 | ${ mail.mailSenderId }</div>
                                            <div class="text-xs font-weight-bold text-gray-800 text-uppercase mb-1">
                                               받는 사람 | ${ mail.mailReceiverId }</div>                                             
                                               <hr>
                                    <div class="h6 font-weight-bold text-gray-800 text-uppercase mb-1">
                                    	내 용 <br>
                                    	${ mail.mailContent }
                                   	</div>
                                </div>
                            </div>

                            
                        </div>

                

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <jsp:include page="/include/footer.jsp" />	
            
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>


    <!-- Bootstrap core JavaScript-->
    <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../resources/js/sb-admin-2.min.js"></script>

</body>

</html>