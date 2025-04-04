package kr.co.farmStory.service;

import java.util.List;

import kr.co.farmStory.dao.ArticleDAO;
import kr.co.farmStory.dao.FileDAO;
import kr.co.farmStory.dto.ArticleDTO;
import kr.co.farmStory.dto.PageGroupDTO;


public enum ArticleService {
	
	INSTANCE;
	private ArticleDAO dao = ArticleDAO.getIntance();
	private FileDAO fileDAO = FileDAO.getInstance();
	
	public int registeArticle(ArticleDTO dto) {
		return dao.insertArticle(dto);
	}
	
	
	public ArticleDTO findArticle(String postNo, String cate) {
		return dao.selectArticle(postNo, cate);
	}
	
	public List<ArticleDTO> findAllArticle(String cate, int start) {
		return dao.selectAllArticle(cate, start);
	}
	public List<ArticleDTO> findAllArticle2() {
		return dao.selectAllArticle2();
	}
	
	public List<ArticleDTO> searchAllArticle(ArticleDTO dto, int start, String cate) {
		return dao.selectAllArticleBySearch(dto, start, cate);
	}
	
	public int getCountArticleBySearch(ArticleDTO dto) {
		return dao.selectCountArticleBySearch(dto);
	}
	
	
	public int getCountArticle(String cate) {
		return dao.selectCountArticle(cate);
	}
	
	public void modifyArticle(ArticleDTO dto) {
		dao.updateArticle(dto);
	}
	
	public void removeArticle(String postNo) {
		
		fileDAO.deleteFile(postNo);		
		dao.deleteArticle(postNo);
	}

	
	
	// 마지막 페이지 번호 계산
	public int getLastPageNum(int total) {
		
		int lastPageNum = 0;
		
		if(total % 10 == 0) {
			lastPageNum = total / 10;
		}else {
			lastPageNum = total / 10 + 1;	
		}
		return lastPageNum;
	}
	
	// 현재 페이지 번호 구하기 
	public int getCurrentPage(String pg) {
		
		int currentPage = 1; 
		
		if(pg != null) {
			currentPage = Integer.parseInt(pg);
		}
		return currentPage;
	}
	
	// 페이지 시작번호 구하기(LIMIT 용)
	public int getStartNum(int currentPage) {
		return (currentPage - 1) * 10;
	}
	
	
	// 페이지 그룹 계산하기
	public PageGroupDTO getCurrentPageGroup(int currentPage, int lastPageNum) {
		
		int currentPageGroup = (int) Math.ceil(currentPage / 10.0);
		int pageGroupStart = (currentPageGroup - 1) * 10 + 1; 
		int pageGroupEnd = currentPageGroup * 10;
		
		if(pageGroupEnd > lastPageNum) {			
			pageGroupEnd = lastPageNum;
		}
		
		return new PageGroupDTO(pageGroupStart, pageGroupEnd);
	}
	
	
	// 페이지 시작번호 구하기
	public int getPageStartNum(int total, int currentPage) {
		int start = (currentPage - 1) * 10;
		return total - start;		
	}
		
}