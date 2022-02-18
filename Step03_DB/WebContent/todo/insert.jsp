<<<<<<< HEAD
<%@page import="test.todo.dao.TodoDao"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String content = request.getParameter("content");
	String regdate = request.getParameter("regdate");
	
	TodoDto dto = new TodoDto();
	dto.setContent(content);
	dto.setRegdate(regdate);
	boolean isSuccess = TodoDao.getInstance().insert(dto);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/insert.jsp</title>
</head>
<body>
<div class="container">
	<%if(isSuccess){ %>
	<p>할일이 추가 되었습니다. <a href="list.jsp">할일 목록보기</a></p>
	<%}else{ %>
	<p>저장 실패! <a href="insertform.jsp">다시 입력하기</a></p>
	<%} %>
</div>
</body>
</html>
=======
<%@page import="test.todo.dto.TodoDto"%>
<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 폼 전송되는 할일을 읽어와서
	request.setCharacterEncoding("utf-8");
	String content=request.getParameter("content");
	//2. DB 에 저장하고
	TodoDto dto=new TodoDto();
	dto.setContent(content);
	boolean isSuccess=TodoDao.getInstance().insert(dto);
	//3. 응답 한다.
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/insert.jsp</title>
</head>
<body>
<div class="container">
	<%if(isSuccess){ %>
		<p>
			할일을 추가 했습니다.
			<a href="list.jsp">목록보기</a>
		</p>
	<%}else{ %>
		<p>
			할일 추가 실패!
			<a href="insertform.jsp">다시 입력</a>
		</p>
	<%} %>
</div>
</body>
</html>






>>>>>>> branch 'master' of https://github.com/oli999/acorn202112_jsp.git
