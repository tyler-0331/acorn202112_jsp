<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/signup_form.jsp</title>
<jsp:include page="/include/resource.jsp"></jsp:include>
</head>
<body>
<div class="container">
	<h1>회원가입 폼 입니다.</h1>
	<form action="signup.jsp" method="post">
		<div class="mb-3">
			<label class="control-label" for="id">아이디</label>
			<input class="form-control" type="text" name="id" id="id"/>
			<div class="invalid-feedback">사용할 수 없는 아이디 입니다.</div>
		</div>
		<div class="mb-3">
			<label class="control-label" for="pwd">비밀번호</label>
			<input class="form-control" type="password" name="pwd" id="pwd"/>
		</div>
		<div class="mb-3">
			<label class="control-label" for="email">이메일</label>
			<input class="form-control" type="text" name="email" id="email"/>
		</div>
		<button class="btn btn-outline-primary" type="submit">가입</button>
	</form>
</div>
<script src="${pageContext.request.contextPath }/js/gura_util.js"></script>
<script>
	document.querySelector("#id").addEventListener("input", function(){
		//input 요소의 참조값을 self 에 미리 담아 놓기 
		const self=this;
		//입력한 문자열
		let inputId=self.value;
		//gura_util.js 에 있는 함수를 이용해서 입력한 아이디를 보내서 해당 아이디가 이미 존재하는지 여부를 응답받기 
		ajaxPromise("checkid.jsp", "get", "inputId="+inputId)
		.then(function(response){
			return response.json();
		})
		.then(function(data){
			//일단 2개의 클래스를 모두 제거 한다음 
			self.classList.remove("is-valid");
			self.classList.remove("is-invalid");
			//data 는 {isExist:true} or {isExist:false} 형식의 object 이다. 
			if(data.isExist){//이미 존재하면 사용할수 없는 아이디 
				self.classList.add("is-invalid");
			}else{
				self.classList.add("is-valid");
			}
		});
		
	});
</script>
</body>
</html>











