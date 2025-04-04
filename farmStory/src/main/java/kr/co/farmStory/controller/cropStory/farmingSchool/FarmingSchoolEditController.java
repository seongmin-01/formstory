package kr.co.farmStory.controller.cropStory.farmingSchool;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmStory.dto.ArticleDTO;
import kr.co.farmStory.service.ArticleService;

@MultipartConfig
@WebServlet("/farmingSchool/farmingSchoolEdit.do")
public class FarmingSchoolEditController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	private ArticleService service = ArticleService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String postNo = req.getParameter("postNo");
		String cate = req.getParameter("cate");
		
		ArticleDTO articledto = service.findArticle(postNo, cate);

		req.setAttribute("articledto", articledto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/cropStory/farmingSchool/farmingSchoolList.jsp");
		dispatcher.forward(req, resp);
	
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String postNo = req.getParameter("postNo");
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		int postNoInt = Integer.parseInt(postNo);
		
		ArticleDTO dto = new ArticleDTO();
		dto.setTitle(title);
		dto.setContent(content);
		dto.setPostNo(postNoInt);
		
		service.modifyArticle(dto);
		
		
		resp.sendRedirect("/farmStory/cropStory/cropStoryList.do");
		
		
		
	}
}
