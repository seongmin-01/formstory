package kr.co.farmStory.controller.admin;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmStory.dto.AdminDTO;
import kr.co.farmStory.dto.UserDTO;
import kr.co.farmStory.service.AdminService;
import kr.co.farmStory.service.UserService;


@WebServlet("/adminMain/list.do")
public class AdminMainList extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	private AdminService service = AdminService.INSTANCE;
	
	private UserService userservice = UserService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		List<AdminDTO> dtos = service.findAllMainPro();
		
		req.setAttribute("dtos", dtos);
		
		List<UserDTO> users = userservice.findAllUser();
		
		req.setAttribute("users", users);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/adminMain/adminMain.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

}
