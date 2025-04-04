package kr.co.farmStory.controller.cropStory.cropStory;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmStory.service.ArticleService;

@MultipartConfig
@WebServlet("/cropStory/cropStoryRemove.do")
public class CropStoryRemoveController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private ArticleService service = ArticleService.INSTANCE;
	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String postNo = req.getParameter("postNo");
		
		logger.debug(postNo);
		
		service.removeArticle(postNo);
		
		resp.sendRedirect("/farmStory/cropStory/cropStoryList.do?cate=cropStory");
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	}
}
