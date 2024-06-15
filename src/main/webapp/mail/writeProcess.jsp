<%@page import="kr.ac.kopo.vo.MemberVO"%>
<%@page import="kr.ac.kopo.service.MailService"%>
<%@page import="kr.ac.kopo.service.MailServiceFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	MailService mailService = MailServiceFactory.getInstance();
	String title = request.getParameter("title");
	String receiver = request.getParameter("receiver");
	String content = request.getParameter("content");
	int sender = ((MemberVO)session.getAttribute("userVO")).getMemberCd();
	
	String url;
	String msg;
	
	if(mailService.writeMail(title, content, sender, receiver)){
		url = "sentMail.jsp";
		msg = "메일을 성공적으로 보냈습니다.";
	}else{
		url = "writeMail.jsp";
		msg = "메일을 보내지 못했습니다.";
	}
	pageContext.setAttribute("url", url);
	pageContext.setAttribute("msg", msg);
%>
<script>
alert("${ msg }")
location.href = "${ url }"
</script>