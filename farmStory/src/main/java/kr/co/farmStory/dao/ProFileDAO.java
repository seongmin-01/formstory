package kr.co.farmStory.dao;

import java.sql.Statement;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.farmStory.dto.ProFileDTO;
import kr.co.farmStory.util.DBHelper;
import kr.co.farmStory.util.ProFileSQL;

public class ProFileDAO extends DBHelper{

	private static final ProFileDAO instance = new ProFileDAO();
	public static ProFileDAO getInstance() {
		return instance;
	}
	
	private ProFileDAO() {}
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public void insertProFile(ProFileDTO dto) {
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(ProFileSQL.INSERT_PROFILE,  Statement.RETURN_GENERATED_KEYS);
			pstmt.setInt(1, dto.getProId());
			pstmt.setString(2, dto.getoName());
			pstmt.setString(3, dto.getsName());
			pstmt.executeUpdate();
			
			
			closeAll();
			
			
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		
	}
	
	
	
}
