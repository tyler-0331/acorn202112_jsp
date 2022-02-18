package test.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.member.dto.MemberDto;

@WebServlet("/member")
public class MemberServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//1. 1명의 회원 정보를 얻어오는 비즈니스 로직을 수행했다고 가정하자
		MemberDto dto=new MemberDto();
		dto.setNum(1);
		dto.setName("김구라");
		dto.setAddr("노량진");
		//2. 로직 수행결과 데이터(모델)을 request scope 에 담기
		req.setAttribute("dto", dto);
		//3. jsp 페이지로 forward 이동해서(응답을 위임해서) 응답
		RequestDispatcher rd=req.getRequestDispatcher("/test/member.jsp");
		rd.forward(req, resp);
	}
}








