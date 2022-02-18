<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
<<<<<<< HEAD
	//GET 방식 파라미터로 전달되는 삭제할 회원의 번호 읽어오기
	int num=Integer.parseInt(request.getParameter("num"));
	//MemberDao 객체를 이용해서 DB 에서 삭제한다.
	boolean isSuccess=TodoDao.getInstance().delete(num);
	//응답한다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/delete.jsp</title>
</head>
<body>
	<%if(isSuccess){ %>
      <script>
         //알림창 띄우기
         alert("삭제 했습니다.");
         //목록보기로 이동 시키기
         location.href="list.jsp";
      </script>
   <%}else{ %>
      <script>
         alert("삭제 실패!");
         location.href="list.jsp";
      </script>
   <%} %>
</body>
</html>
=======
	//1. 삭제할 할일 번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	//2. DB 에서 삭제
	boolean isSuccess=TodoDao.getInstance().delete(num);
	//3. 응답
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/delete.jsp</title>
</head>
<body>
	<%if(isSuccess){ %>
		<script>
			alert("삭제 했습니다.");
			location.href="list.jsp";
		</script>
	<%}else{ %>
		<script>
			alert("삭제 실패!");
			location.href="list.jsp";
		</script>
	<%} %>
</body>
</html>




















>>>>>>> branch 'master' of https://github.com/oli999/acorn202112_jsp.git
