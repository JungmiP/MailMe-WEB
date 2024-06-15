<%@page import="kr.ac.kopo.service.MemberServiceFactory"%>
<%@page import="kr.ac.kopo.service.MemberService"%>
<%@page import="kr.ac.kopo.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	작업순서
	1. 파라미터 추출(id, password)
	2. DB(t_member)에서 파라미터에 해당하는 회원존재여부 판단
	
 --%>    
<%
	MemberService memberService = MemberServiceFactory.getInstance();
	request.setCharacterEncoding("utf-8");
	String url;
	String msg;

	String id = request.getParameter("id");
	
	//아이디 중복체크
	if(memberService.searchMemberCdById(id) != 0){
		url = "join.jsp";
		msg = "이미 가입한 아이디 입니다.";
	}else{
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String birthDate = request.getParameter("birthDate");
		String phone = request.getParameter("phone");
		
		birthDate = birthDate.replaceAll("-","");
		MemberVO member = new MemberVO(id, password, name, birthDate, phone);
		
		if(memberService.createMember(member)){
			url = "../index.jsp";
			msg = "회원 가입을 축하드립니다!";
		}else{
			url = "join.jsp";
			msg = "가입을 실패하였습니다.";
		}		
	}	
		
	pageContext.setAttribute("url", url);
	pageContext.setAttribute("msg", msg);
%>    
<script>
	alert('${ msg }')
	location.href = '${ url }'
</script>