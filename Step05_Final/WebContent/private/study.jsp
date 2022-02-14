<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%
   /*
      [ 리다일렉트 응답 ]
       - 클라이언트에게 요청을 다시 하라고 강요하는 응답
       - 클라이언트의 위치를 강제로 바꾸는 효과가 된다.
       - 리다일렉트 응답도 응답이다.
   */

   String id=(String)session.getAttribute("id");
   if(id==null){//만일 로그인을 하지 않았다면
      //context 경로 얻어오기 
      String cPath=request.getContextPath();
      // response.sendRedirect("클라이언트가 요청을 다시할 절대경로");
      response.sendRedirect(cPath+"/index.jsp");
   }
%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/private/study.jsp</title>
</head>
<body>
   <h1>공부 페이지 입니다.</h1>
   <p> <%=id%>님 신나게 공부해요~</p>
   <a href="${pageContext.request.contextPath }/">인덱스로 돌아가기</a>
</body>
</html>
