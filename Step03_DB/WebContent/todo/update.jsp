<%@page import="test.todo.dao.TodoDao"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
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