package kr.co.farmStory.controller.cropStory.cropStory;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmStory.dto.ArticleDTO;
import kr.co.farmStory.dto.PageGroupDTO;
import kr.co.farmStory.service.ArticleService;

@WebServlet("/cropStory/cropStorySearch.do")
public class CropStorySearchController extends HttpServlet {
	
	
	private ArticleService service = ArticleService.INSTANCE;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String pg = req.getParameter("pg");
		String searchType = req.getParameter("searchType");
		String keyword = req.getParameter("keyword");
		String cate = req.getParameter("cate");
		
		ArticleDTO dto = new ArticleDTO();
		dto.setSearchType(searchType);
		dto.setKeyword(keyword);
		dto.setCate(cate);
		
		int total = service.getCountArticleBySearch(dto);
		int lastPageNum = service.getLastPageNum(total);
		int currentPage = service.getCurrentPage(pg);
		int start = service.getStartNum(currentPage);
		
		PageGroupDTO pageGroupDTO = service.getCurrentPageGroup(currentPage, lastPageNum);
		int pageStartNum = service.getPageStartNum(total, currentPage);
		
		
		List<ArticleDTO> articles = service.searchAllArticle(dto, start, cate);
		
		
		req.setAttribute("articles", articles);
		req.setAttribute("currentPage", currentPage);
		req.setAttribute("lastPageNum", lastPageNum);
		req.setAttribute("pageStartNum", pageStartNum);
		req.setAttribute("pageGroupDTO", pageGroupDTO);
		req.setAttribute("searchType", searchType);
		req.setAttribute("keyword", keyword);
		req.setAttribute("cate", cate);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/cropStory/cropStory/cropStorySearchList.jsp");
		dispatcher.forward(req, resp);	
	
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	
	
	
}
