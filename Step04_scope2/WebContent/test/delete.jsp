<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test/delete.jsp</title>
</head>
<body>
<%
	session.removeAttribute("nick"); // 저 키값으로 저장된 내용만 삭제
	// session.invalidate(); //세션 초기화(모든 내용 다 삭제)
%>
<p> session 영역에 저장된 값을 삭제 했습니다.</p>
<a href="../index.jsp">인덱스로 돌아가기</a>
</body>
</html>