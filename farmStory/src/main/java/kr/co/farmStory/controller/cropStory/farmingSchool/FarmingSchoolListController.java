package kr.co.farmStory.controller.cropStory.farmingSchool;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmStory.dto.ArticleDTO;
import kr.co.farmStory.dto.PageGroupDTO;
import kr.co.farmStory.service.ArticleService;

@WebServlet("/farmingSchool/farmingSchoolList.do")
public class FarmingSchoolListController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private ArticleService service = ArticleService.INSTANCE;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// pg 데이터 수신
		String pg = req.getParameter("pg");
		String cate = req.getParameter("cate");
		
		logger.debug(cate);
		
		
		// 전체 게시물 갯수 구하기
		int total = service.getCountArticle(cate);
				
		// 마지막 페이지 번호 구하기
		int lastPageNum = service.getLastPageNum(total);
		
		// 현재 페이지 번호 구하기
		int currentPage = service.getCurrentPage(pg);
		
		// limit
		int start = service.getStartNum(currentPage);
		
		
		// 페이지 그룹
		PageGroupDTO pageGroupDTO = service.getCurrentPageGroup(currentPage, lastPageNum);
		
		// 페이지 시작번호 구하기
		int pageStartNum = service.getPageStartNum(total, currentPage);
		
		
		
		List<ArticleDTO> articles = service.findAllArticle(cate, start);
		
		req.setAttribute("articles", articles);
		req.setAttribute("currentPage", currentPage);
		req.setAttribute("lastPageNum", lastPageNum);
		req.setAttribute("pageStartNum", pageStartNum);
		req.setAttribute("pageGroupDTO", pageGroupDTO);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/cropStory/farmingSchool/farmingSchoolList.jsp");
		dispatcher.forward(req, resp);
	
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	
}
