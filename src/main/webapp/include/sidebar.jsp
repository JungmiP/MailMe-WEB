<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/MailMe-WEB/mail/mailmeMain.jsp">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fa-solid fa-square-envelope"></i>
                </div>
                <div class="sidebar-brand-text mx-3">MailMe</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="/MailMe-WEB/mail/writeMail.jsp">
                    <i class="fas fa-edit"></i>
                    <span>메일쓰기</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                메일함
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <!-- li 태그 class에 active 추가 -->
            <li class="nav-item">
                <a class="nav-link" href="/MailMe-WEB/mail/mailbox.jsp" >
                   <i class="fa-solid fa-envelope"></i>
                    <span>받은 메일함</span>
                </a>                
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link" href="/MailMe-WEB/mail/sentMail.jsp">
                    <i class="fa-regular fa-envelope"></i>
                    <span>보낸 메일함</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/MailMe-WEB/mail/selfMail.jsp">
                    <i class="fa-solid fa-envelope"></i>
                    <span>내게 쓴 메일함</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/MailMe-WEB/mail/spamMail.jsp">
                   <i class="fa-regular fa-envelope"></i>
                    <span>스팸 메일함</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/MailMe-WEB/mail/trashMail.jsp">
                   <i class="fa-solid fa-trash-can"></i>
                    <span>휴지통</span>
                </a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                마이페이지
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link" href="/MailMe-WEB/myPage/myInfo.jsp">
                    <i class="fa-solid fa-circle-info"></i>
                    <span>내 정보</span>
                </a>
            </li>

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="/MailMe-WEB/login/logout.jsp">
                   <i class="fa-solid fa-right-from-bracket"></i>
                    <span>로그아웃</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->