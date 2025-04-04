package kr.co.farmStory.dao;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.farmStory.dto.CommentDTO;
import kr.co.farmStory.util.CommentSQL;
import kr.co.farmStory.util.DBHelper;

public class CommentDAO extends DBHelper {

	private static final CommentDAO INSTANCE = new CommentDAO();
	public static CommentDAO getInstance() {
		return INSTANCE;
	}
	private CommentDAO() {}
	
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public int insertComment(CommentDTO dto, int postNo) {
		
		int generatedKey = 0;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(CommentSQL.INSERT_COMMENT, Statement.RETURN_GENERATED_KEYS);
			pstmt.setInt(1, dto.getPostNo());
			pstmt.setString(2, dto.getContent());
			pstmt.setString(3, dto.getNick());
			pstmt.setString(4, dto.getRegip());
			pstmt.executeUpdate();
			
			//댓글 수 증가 쿼리
			pstmt2 = conn.prepareStatement(CommentSQL.COMMENT_COUNT_PLUS);
			pstmt2.setInt(1, postNo);
	        pstmt2.executeUpdate();
			
			// 자동 생성된 댓글번호 조회
			rs = pstmt.getGeneratedKeys();
			if(rs.next()) {
				generatedKey = rs.getInt(1);
			}			
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return generatedKey;
	}
	
	public CommentDTO selectComment(int cno) {
		
		CommentDTO dto = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(CommentSQL.SELECT_ALL_COMMENT);
			pstmt.setInt(1, cno);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto = new CommentDTO();
				dto.setCno(rs.getInt(1));
				dto.setPostNo(rs.getInt(2));
				dto.setContent(rs.getString(3));
				dto.setNick(rs.getString(4));
				dto.setRegip(rs.getString(5));
				dto.setWdate(rs.getString(6).substring(0, 10));
				dto.setUid(rs.getString(8));
			}
			closeAll();
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dto;
	}
	
	public List<CommentDTO> selectAllComment(String postNo) {
		
		List<CommentDTO> comments = new ArrayList<CommentDTO>();
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(CommentSQL.SELECT_ALL_COMMENT_BY_POSTNO);
			pstmt.setString(1, postNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				CommentDTO dto = new CommentDTO();
				dto.setCno(rs.getInt(1));
				dto.setPostNo(rs.getInt(2));
				dto.setContent(rs.getString(3));
				dto.setNick(rs.getString(4));
				dto.setRegip(rs.getString(5));
				dto.setWdate(rs.getString(6).substring(0, 10));
				
				comments.add(dto);
			}
			closeAll();
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
		return comments;
	}
	
	
	public CommentDTO updateComment(CommentDTO dto) {
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(CommentSQL.UPDATE_COMMENT);
			pstmt.setString(1, dto.getContent());
			pstmt.setInt(1, dto.getCno());
			pstmt.executeUpdate();
			
			closeAll();
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dto;
	}
	
	public void deleteComment(String cno, int postNo) {
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(CommentSQL.DELETE_COMMENT);
			pstmt.setString(1, cno);
			pstmt.executeUpdate();
			
			pstmt2 = conn.prepareStatement(CommentSQL.COMMENT_COUNT_MINUS);
			pstmt2.setInt(1, postNo);
			pstmt2.executeUpdate();
			
			closeAll();
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}
}
