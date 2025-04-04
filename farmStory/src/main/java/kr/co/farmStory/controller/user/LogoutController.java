package kr.co.farmStory.controller.user;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/view/user/logout.do")
public class LogoutController extends HttpServlet {

	private static final long serialVersionUID = -8116609313306810074L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//세션 해제
		HttpSession session = req.getSession();
		session.removeAttribute("sessUser");
		session.invalidate();
		
		//로그인 페이지 이동
		resp.sendRedirect("/farmStory/view/user/login.do?result=101");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
