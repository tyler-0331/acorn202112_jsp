<%@page import="test.todo.dao.TodoDao"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
<<<<<<< HEAD
	request.setCharacterEncoding("utf-8");
	int num=Integer.parseInt(request.getParameter("num"));
	String content=request.getParameter("content");
	String regdate=request.getParameter("regdate");
	
	TodoDto dto=new TodoDto(num,content,regdate);
	boolean isSuccess=TodoDao.getInstance().update(dto);
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/update.jsp</title>
</head>
<body>
<div class="container">
	<%if(isSuccess){%>
		<p><%=num %> 번 할일을 수정 했습니다. <a href="list.jsp">확인</a></p>
	<%}else{%>
		<p>수정 실패! <a href="updateform.jsp?num=<%=num%>"></a></p>
	<%} %>
</div>
</body>
</html>
=======
	// 인코딩 설정 
	request.setCharacterEncoding("utf-8");
	// 수정할 할일번호, 내용을 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	String content=request.getParameter("content");
	// Dto 에 담고
	TodoDto dto=new TodoDto();
	dto.setNum(num);
	dto.setContent(content);
	// DB 에 수정 반영
	boolean isSuccess=TodoDao.getInstance().update(dto);
	// 응답
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/update.jsp</title>
</head>
<body>
<div class="container">
	<%if(isSuccess){ %>
		<p> 
			<strong><%=num %></strong> 번 할일을 수정 했습니다.
			<a href="list.jsp">목록보기</a>
		</p>
	<%}else{ %>
		<p>
			수정 실패!
			<a href="updateform.jsp?num=<%=num %>">다시 작성</a>
		</p>
	<%} %>
</div>
</body>
</html>



>>>>>>> branch 'master' of https://github.com/oli999/acorn202112_jsp.git
