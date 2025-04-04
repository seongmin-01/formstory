package kr.co.farmStory.controller.myInfo;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.farmStory.dto.UserDTO;
import kr.co.farmStory.service.UserService;

@WebServlet("/myInfo/modifyPass.do")
public class ModifyPassController extends HttpServlet {

	private static final long serialVersionUID = -1145436663984982731L;
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	private UserService service = UserService.INSTANCE;
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		UserDTO sessUser = (UserDTO) session.getAttribute("sessUser");
		
		if (sessUser == null) {
		    resp.sendRedirect("/farmStory/index.jsp");
		    return;
		}
		
		String uid = sessUser.getUid();
		UserDTO dto = service.findUserId(uid);
		req.setAttribute("user", dto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/myInfo/modifyInfo.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		UserDTO sessUser = (UserDTO) session.getAttribute("sessUser");
		
		if (sessUser == null) {
		    resp.sendRedirect("/farmStory/index.jsp");
		    return;
		}
		
		String pass = req.getParameter("pass1");
		String uid = sessUser.getUid();  // 세션에서 UID 가져오기
		
		UserDTO dto = new UserDTO();
		dto.setPass(pass);
		dto.setUid(uid);  // uid 값 설정
		
		service.modifyUserPass(dto);
		
		session.removeAttribute("sessUser");
		session.invalidate();
		
		resp.sendRedirect("/farmStory/index.jsp");
	}
	
}
