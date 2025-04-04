package kr.co.farmStory.controller.shopping;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmStory.dto.AdminDTO;
import kr.co.farmStory.service.AdminService;

@WebServlet("/shopping/Fruits.do")
public class Fruits extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private AdminService service = AdminService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String types = req.getParameter("types");
		
		List<AdminDTO> fruits = service.find_fruit(types);
		
		System.out.println("과일컨트롤러" + fruits);
		
		req.setAttribute("fruits", fruits);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/shopping/fruits.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
