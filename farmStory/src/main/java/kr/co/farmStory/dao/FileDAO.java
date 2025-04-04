package kr.co.farmStory.dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.farmStory.dto.FileDTO;
import kr.co.farmStory.util.ArticleSQL;
import kr.co.farmStory.util.DBHelper;
import kr.co.farmStory.util.FileSQL;

public class FileDAO extends DBHelper {

	private static final FileDAO instance = new FileDAO();
	public static FileDAO getInstance() {
		return instance;
	}
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	private FileDAO() {}
	
	public void insertFile(FileDTO dto) {
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(FileSQL.INSERT_FILE);
			pstmt.setInt(1, dto.getPostNo());
			pstmt.setString(2, dto.getoName());
			pstmt.setString(3, dto.getsName());
			pstmt.executeUpdate();
			
			closeAll();
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}
	
	public FileDTO selectFile(String fno) {
		
		FileDTO filedto = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(FileSQL.SELECT_FILE_BY_FNO);
			pstmt.setString(1, fno);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				filedto = new FileDTO();
				filedto.setFno(rs.getInt(1));
				filedto.setPostNo(rs.getInt(2));
				filedto.setoName(rs.getString(3));
				filedto.setsName(rs.getString(4));
				filedto.setDownload(rs.getInt(5));
				filedto.setRdate(rs.getString(6));
				
			}
			
			closeAll();
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		
		return filedto;
		
	}
	
	public void updateFileDownloadCount(String fno) {
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(FileSQL.UPDATE_FILE_DOWNLOAD_COUNT);
			pstmt.setString(1, fno);
			pstmt.executeUpdate();
			closeAll();			
		}catch (Exception e) {
			logger.error(e.getMessage());
		}
	}
	
	public void deleteFile(String postNo) {
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(FileSQL.DELETE_FILE);
			pstmt.setString(1, postNo);
			
			pstmt.executeUpdate();
			
			closeAll();
			
			
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		
	}
}
