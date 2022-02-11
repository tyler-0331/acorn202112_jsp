<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDto member =(MemberDto)request.getAttribute("dto");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/member.jsp</title>
</head>
<body>
	<h1>회원 한명의 정보 입니다.</h1>
	<p>번호: <strong><%=member.getNum() %></strong></p>
	<p>이름: <strong><%=member.getName() %></strong></p>
	<p>주소: <strong><%=member.getAddr() %></strong></p>
</body>
</html>