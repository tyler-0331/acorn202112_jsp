<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/index.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="/include/navbar.jsp"></jsp:include>
<div class="container">
<<<<<<< HEAD
   <h1>인덱스 페이지 입니다.</h1>
   <ul>
      <li><a href="test.jsp">DB 연결 테스트</a></li>
      <li><a href="member/list.jsp">회원 목록보기</a></li>
      <li><a href="todo/list.jsp">할일 목록</a></li>
   </ul>
=======
	<h1>인덱스 페이지 입니다.</h1>
	<p>컨텍스트 경로 : <strong>${pageContext.request.contextPath }</strong></p>
	<ul>
		<li><a href="test.jsp">DB 연결 테스트</a></li>
		<li><a href="member/list.jsp">회원 목록보기</a></li>
		<li><a href="todo/list.jsp">할일 목록보기</a></li>
	</ul>
>>>>>>> branch 'master' of https://github.com/oli999/acorn202112_jsp.git
</div>
<%-- 
	[ 다른 jsp 페이지와 공동으로 응답하기 ]
	
	- 컨텍스트 경로는 쓰지 않는다.  / 가 곧 WebContent 이다.
	- 상대 경로도 가능하다 
	- include 된 jsp 페이지와 공동으로(협동 작업으로) 응답하는 것이다.
 --%>
<jsp:include page="/include/footer.jsp"></jsp:include>
</body>
</html>







