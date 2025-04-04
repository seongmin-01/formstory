package kr.co.farmStory.controller.cropStory.farmingSchool;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmStory.dto.ArticleDTO;
import kr.co.farmStory.dto.CommentDTO;
import kr.co.farmStory.service.ArticleService;
import kr.co.farmStory.service.CommentService;

@MultipartConfig
@WebServlet("/farmingSchool/farmingSchoolView.do")
public class FarmingSchoolViewController extends HttpServlet{
	

	private static final long serialVersionUID = 1L;
	
	private ArticleService service = ArticleService.INSTANCE;
	private CommentService commentService = CommentService.instance;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 글번호 수신
        String postNo = req.getParameter("postNo");
        String cate = req.getParameter("cate");
        
        
        // 글 조회 서비스 호출
        ArticleDTO articledto = service.findArticle(postNo, cate);
        logger.debug("articledto : " + articledto);
        
        List<CommentDTO> comments = commentService.findAllComment(postNo);
        
        req.setAttribute("articledto", articledto);
        req.setAttribute("comments", comments);
        req.setAttribute("postNo", postNo);
        req.setAttribute("cate", cate);
	
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/cropStory/farmingSchool/farmingSchoolView.jsp");
		dispatcher.forward(req, resp);
	
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

}
