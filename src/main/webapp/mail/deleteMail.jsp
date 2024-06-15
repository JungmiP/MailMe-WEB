<%@page import="kr.ac.kopo.vo.MemberVO"%>
<%@page import="kr.ac.kopo.service.MailService"%>
<%@page import="kr.ac.kopo.service.MailServiceFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int mailCd = Integer.parseInt(request.getParameter("no"));
MemberVO member = (MemberVO)session.getAttribute("userVO");
MailService mailService = MailServiceFactory.getInstance();
mailService.moveMail(mailCd, member.getMemberCd());

String url = (String)session.getAttribute("returnUrl");
pageContext.setAttribute("url", url);
%>
<script>
location.href="." + "${ url }"
</script>