package kr.co.farmStory.controller.user;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmStory.dto.UserDTO;
import kr.co.farmStory.service.UserService;

@WebServlet("/view/user/register.do")
public class RegisterController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private UserService service = UserService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/user/signUp.jsp");
		dispatcher.forward(req, resp);
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//데이터 수신
		String uid = req.getParameter("uid");
		String pass1 = req.getParameter("pass1");
		String pass2 = req.getParameter("pass2");
		String name = req.getParameter("name");
		String nick = req.getParameter("nick");
		String email = req.getParameter("email");
		String auth = req.getParameter("auth");
		String hp = req.getParameter("hp");
		String role = req.getParameter("role");
		String zip = req.getParameter("zip");
		String addr1 = req.getParameter("addr1");
		String addr2 = req.getParameter("addr2");
		String regip = req.getRemoteAddr(); //클라이언트 IP번호
		
		//DTO 생성
		UserDTO dto = new UserDTO();
		dto.setUid(uid);
		dto.setPass(pass1);
		dto.setName(name);
		dto.setNick(nick);
		dto.setEmail(email);
		dto.setHp(hp);
		dto.setZip(zip);
		dto.setAddr1(addr1);
		dto.setAddr2(addr2);
		dto.setRegip(regip);
		
		resp.setContentType("text/html; charset=UTF-8"); // 응답 인코딩 설정
		resp.setCharacterEncoding("UTF-8"); // 응답 문자 인코딩 지정
		
		PrintWriter out = resp.getWriter();
		
		service.registerUser(dto);
		
		out.println("<script>");
        out.println("alert('회원가입이 완료되었습니다.');");
        out.println("location.href='/farmStory/view/user/login.do';");
        out.println("</script>");
		
		//resp.sendRedirect("/farmStory/view/user/login.do");
	}
}
