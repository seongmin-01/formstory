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

@WebServlet("/shopping/productDetail.do")
public class ProductDetail extends HttpServlet{

	private static final long serialVersionUID = 1L;

	private AdminService service = AdminService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String pid = req.getParameter("pid");
		
		List<AdminDTO> dtos = service.find_detail(pid);
		
		req.setAttribute("dtos", dtos);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/shopping/productDetail.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
