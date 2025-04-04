package kr.co.farmStory.dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.farmStory.dto.ArticleDTO;
import kr.co.farmStory.dto.FileDTO;
import kr.co.farmStory.util.ArticleSQL;
import kr.co.farmStory.util.DBHelper;
import kr.co.farmStory.util.SQL;

public class ArticleDAO extends DBHelper {
	
	private static final ArticleDAO instance = new ArticleDAO();
	public static ArticleDAO getIntance() {
		return instance;
	}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	
	private ArticleDAO() {}
	
	
	public int insertArticle(ArticleDTO dto) {
		
		int postNo = 0;
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(ArticleSQL.INSERT_ARTICLE);
			pstmt.setString(1, dto.getUid());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getContent());
			pstmt.setInt(4, dto.getFile());
			pstmt.setString(5, dto.getNick());
			pstmt.setString(6, dto.getCate());
			pstmt.setString(7, dto.getRegip());
			
			
			pstmt.executeUpdate();
			
			
			
			// 글 번호 조회 쿼리 실행
			stmt = conn.createStatement();
			rs = stmt.executeQuery(ArticleSQL.SELECT_MAX_NO);
			if(rs.next()) {
				postNo = rs.getInt(1);
			}
						
			closeAll();
			
			
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
		return postNo;
	}
	
	public ArticleDTO selectArticle(String postNo, String cate) {
		
		ArticleDTO dto = null;
		
		List<FileDTO> files = new ArrayList<>();
		
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(ArticleSQL.SELECT_ARTICLE_WITH_FILE);
			pstmt.setString(1, postNo);
			pstmt.setString(2, cate);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				if(dto==null) {
					dto = new ArticleDTO();
					dto.setPostNo(rs.getInt(1));
					dto.setUid(rs.getString(2));
					dto.setTitle(rs.getString(3));
					dto.setContent(rs.getString(4));
					dto.setComment(rs.getInt(5));
					dto.setFile(rs.getInt(6));
					dto.setHit(rs.getInt(7));
					dto.setNick(rs.getString(8));
					dto.setCate(rs.getString(9));
					dto.setRegip(rs.getString(10));
					dto.setWdate(rs.getString(11));
					
				}
				
				FileDTO filedto = new FileDTO();
				filedto.setFno(rs.getInt(12));
				filedto.setPostNo(rs.getInt(13));
				filedto.setoName(rs.getString(14));
				filedto.setsName(rs.getString(15));
				filedto.setDownload(rs.getInt(16));
				filedto.setRdate(rs.getString(17));
				files.add(filedto);
				
			}
			
			dto.setFiles(files);
			
			closeAll();
			
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		
		return dto;
		
	}
	
	public int selectCountArticle(String cate) {
		
		int total = 0;
		
		try {
			conn = getConnection();
			
			pstmt = conn.prepareStatement(ArticleSQL.SELECT_COUNT_ARTICLE);
			pstmt.setString(1, cate);
			
			rs = pstmt.executeQuery();
			
			
			if(rs.next()) {
				total = rs.getInt(1);
			}
			closeAll();
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
		return total;
	}
	
	public List<ArticleDTO> selectAllArticle(String cate, int start) {
		
		List<ArticleDTO> articles = new ArrayList<ArticleDTO>();
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(ArticleSQL.SELECT_ALL_ARTICLE);
			pstmt.setString(1, cate);
            pstmt.setInt(2, start);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				ArticleDTO dto = new ArticleDTO();
				dto.setPostNo(rs.getInt(1));
				dto.setUid(rs.getString(2));
				dto.setTitle(rs.getString(3));
				dto.setContent(rs.getString(4));
				dto.setComment(rs.getInt(5));
				dto.setFile(rs.getInt(6));
				dto.setHit(rs.getInt(7));
				dto.setNick(rs.getString(8));
				dto.setCate(rs.getString(9));
				dto.setRegip(rs.getString(10));
				dto.setWdate(rs.getString(11).substring(2, 16));
				dto.setNick(rs.getString(15));
				articles.add(dto);
				
			}
			
			closeAll();
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		
		return articles;
		
	}
	
	public List<ArticleDTO> selectAllArticle2() {
		
		List<ArticleDTO> articles = new ArrayList<ArticleDTO>();
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(ArticleSQL.SELECT_ALL_ARTICLE2);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ArticleDTO dto = new ArticleDTO();
				dto.setPostNo(rs.getInt(1));
				dto.setUid(rs.getString(2));
				dto.setTitle(rs.getString(3));
				dto.setContent(rs.getString(4));
				dto.setComment(rs.getInt(5));
				dto.setFile(rs.getInt(6));
				dto.setHit(rs.getInt(7));
				dto.setNick(rs.getString(8));
				dto.setCate(rs.getString(9));
				dto.setRegip(rs.getString(10));
				dto.setWdate(rs.getString(11).substring(0, 10));
				articles.add(dto);
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return articles;
	}
	
	public int selectCountArticleBySearch(ArticleDTO articleDTO) {
		
		int count = 0;
		
		StringBuilder sql = new StringBuilder(ArticleSQL.SELECT_COUNT_POST_FOR_SEARCH);
		
		if(articleDTO.getSearchType().equals("title")) {
			sql.append(ArticleSQL.WHERE_FOR_SEARCH_TITLE);
		}else if(articleDTO.getSearchType().equals("content")) {
			sql.append(ArticleSQL.WHERE_FOR_SEARCH_CONTENT);
		}else if(articleDTO.getSearchType().equals("nick")) {
			sql.append(ArticleSQL.JOIN_FOR_SEARCH_NICK);
			sql.append(ArticleSQL.WHERE_FOR_SEARCH_NICK);	
		}
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, "%"+articleDTO.getKeyword()+"%");
			logger.debug(pstmt.toString());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt(1);				
			}
			closeAll();
			
		}catch (Exception e) {
			logger.error(e.getMessage());
		}		
		return count;
		

		
	}
	
	
	public List<ArticleDTO> selectAllArticleBySearch(ArticleDTO articleDTO, int start, String cate) {
		
		List<ArticleDTO> articles = new ArrayList<ArticleDTO>();
		
		StringBuilder sql = new StringBuilder(ArticleSQL.SELECT_ALL_ARTICLE_BY_SEARCH);
		
		if(articleDTO.getSearchType().equals("title")) {
			sql.append(ArticleSQL.WHERE_FOR_SEARCH_TITLE);
			sql.append(ArticleSQL.AND_FOR_SEARCH_CATE);
			sql.append(ArticleSQL.ORDER_FOR_SEARCH);
			sql.append(ArticleSQL.LIMIT_FOR_SEARCH);
		}else if(articleDTO.getSearchType().equals("content")) {
			sql.append(ArticleSQL.WHERE_FOR_SEARCH_CONTENT);
			sql.append(ArticleSQL.AND_FOR_SEARCH_CATE);
			sql.append(ArticleSQL.ORDER_FOR_SEARCH);
			sql.append(ArticleSQL.LIMIT_FOR_SEARCH);
		}else if(articleDTO.getSearchType().equals("nick")){
			sql.append(ArticleSQL.WHERE_FOR_SEARCH_NICK);
			sql.append(ArticleSQL.AND_FOR_SEARCH_CATE);
			sql.append(ArticleSQL.ORDER_FOR_SEARCH);
			sql.append(ArticleSQL.LIMIT_FOR_SEARCH);
		}
		
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, "%"+articleDTO.getKeyword()+"%");
			pstmt.setString(2, cate);
			pstmt.setInt(3, start);
			
			
			logger.debug(pstmt.toString());
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ArticleDTO dto = new ArticleDTO();
				dto.setPostNo(rs.getInt(1));
				dto.setUid(rs.getString(2));
				dto.setTitle(rs.getString(3));
				dto.setContent(rs.getString(4));
				dto.setComment(rs.getInt(5));
				dto.setFile(rs.getInt(6));
				dto.setHit(rs.getInt(7));
				dto.setNick(rs.getString(8));
				dto.setCate(rs.getString(9));
				dto.setRegip(rs.getString(10));
				dto.setWdate(rs.getString(11).substring(2, 16));
				dto.setNick(rs.getString(12));
				articles.add(dto);
				
			}
			
			closeAll();
			
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		
		return articles;
		
	}
	
	
	
	
	

	public void updateArticle(ArticleDTO dto) {
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(ArticleSQL.UPDATE_ARTICLE);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			pstmt.setInt(3, dto.getPostNo());
			pstmt.executeUpdate();
			
			closeAll();
			
			
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		
	}
	
	
	public void deleteArticle(String postNo) {
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(ArticleSQL.DELETE_ARTICLE_IN_COMMENT);
			pstmt.setString(1, postNo);
			pstmt.executeUpdate();
			
			pstmt2 = conn.prepareStatement(ArticleSQL.DELETE_ARTICLE);
			pstmt2.setString(1, postNo);
			pstmt2.executeUpdate();
			
			closeAll();
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}
}

