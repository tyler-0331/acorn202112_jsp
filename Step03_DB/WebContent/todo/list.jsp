<%@page import="test.todo.dao.TodoDao"%>
<%@page import="java.util.List"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	TodoDao dao = TodoDao.getInstance();
	List<TodoDto> list=dao.selectAll();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/list.jsp</title>
</head>
<body>
<div class="container">
	<a href="insertform.jsp">할일 추가 하기</a>
	<h1>할일 리스트 입니다.</h1>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>할일</th>
				<th>날짜</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<%for(TodoDto tmp:list){ %>
			<tr>
				<td><%=tmp.getNum()%></td>
				<td><%=tmp.getContent()%></td>
				<td><%=tmp.getRegdate()%></td>
				<td><a href="updateform.jsp?num=<%=tmp.getNum()%>">수정</a></td>
				<td><a href="delete.jsp?num=<%=tmp.getNum()%>">삭제</a></td>
			</tr>
		<%}%>
		</tbody>
	</table>
</div>
</body>
</html>