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
import kr.co.farmStory.dto.ProFileDTO;
import kr.co.farmStory.service.AdminService;
import kr.co.farmStory.service.ProFileService;

@WebServlet("/adminPro/register.do")
public class AdminProRegister extends HttpServlet{

	private static final long serialVersionUID = 1L;

	private AdminService service = AdminService.INSTANCE;
	
	private ProFileService profileService = ProFileService.instance;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		// View forward
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/adminProductManagement/adminProductR.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		String pid = req.getParameter("pid");
		String pName = req.getParameter("pName");
		System.out.println("name: " + pName);
		String types = req.getParameter("types");
		System.out.println("types: " + types);
		String price = req.getParameter("price");
		String point = req.getParameter("point");		
		String discount = req.getParameter("discount");
		String charge = req.getParameter("charge");
		String stock = req.getParameter("stock");
		String other = req.getParameter("other");
		
		List<ProFileDTO> profiles = profileService.uploadProFile(req);
		
		AdminDTO dto = new AdminDTO();
		dto.setPid(pid);
		dto.setpName(pName);
		dto.setTypes(types);
		dto.setPrice(price);
		dto.setPoint(point);
		dto.setDiscount(discount);
		dto.setCharge(charge);
		dto.setStock(stock);
		dto.setOther(other);
		
		int pcode = service.registerProduct(dto);
		
		// 파일 등록 서비스 호출
		for(ProFileDTO profileDTO : profiles) {
			profileDTO.setProId(pcode);
			profileService.registerProFile(profileDTO);
		}
		
		resp.sendRedirect("/farmStory/adminMain/list.do");
	}
	
	
}