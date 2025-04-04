package kr.co.farmStory.dao;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.farmStory.dto.UserDTO;
import kr.co.farmStory.util.DBHelper;
import kr.co.farmStory.util.SQL;

public class UserDAO extends DBHelper {
	
	private static final UserDAO INSTANCE = new UserDAO();
	public static UserDAO getInstance() {
		return INSTANCE;
	}
	private UserDAO() {}
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public void insertUser(UserDTO dto) {
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(SQL.INSERT_USER);
			pstmt.setString(1, dto.getUid());
			pstmt.setString(2, dto.getPass());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getNick());
			pstmt.setString(5, dto.getEmail());
			pstmt.setString(6, dto.getHp());
			pstmt.setString(7, dto.getZip());
			pstmt.setString(8, dto.getAddr1());
			pstmt.setString(9, dto.getAddr2());
			pstmt.setString(10, dto.getRegip());
			pstmt.executeUpdate();
			closeAll();
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}
	
	public int selectCountUser(String type, String value) {
		
		int count = 0;
		
		//String 불변성을 고려해 StringBuilder로 동적 SQL 생성
		StringBuilder sql = new StringBuilder(SQL.SELECT_COUNT_USER);
		
		if(type.equals("uid")) {
			sql.append(SQL.WHERE_UID);
		} else if(type.equals("nick")) {
			sql.append(SQL.WHERE_NICK);
		} else if(type.equals("email")) {
			sql.append(SQL.WHERE_EMAIL);
		} else if(type.equals("hp")) {
			sql.append(SQL.WHERE_HP);
		}
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, value);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt(1);
			}
			closeAll();
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		
		return count;
	}
	
	public UserDTO selectUser(UserDTO dto) {
		
		UserDTO userDTO = null; 
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(SQL.SELECT_USER);
			pstmt.setString(1, dto.getUid());
			pstmt.setString(2, dto.getPass());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				userDTO = new UserDTO();
				userDTO.setUid(rs.getString(1));
				userDTO.setPass(rs.getString(2));
				userDTO.setName(rs.getString(3));
				userDTO.setNick(rs.getString(4));
				userDTO.setEmail(rs.getString(5));
				userDTO.setHp(rs.getString(6));
				userDTO.setRole(rs.getString(7));
				userDTO.setPoint(rs.getInt(8));
				userDTO.setZip(rs.getString(9));
				userDTO.setAddr1(rs.getString(10));
				userDTO.setAddr2(rs.getString(11));
				userDTO.setRegip(rs.getString(12));
				userDTO.setRegDate(rs.getString(13));
				userDTO.setLeaveDate(rs.getString(14));
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return userDTO;
	}
	
	public UserDTO selectUserId(String uid) {
		
		UserDTO dto = null; 
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(SQL.SELECT_USER_ID);
			pstmt.setString(1, uid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto = new UserDTO();
				dto.setUid(rs.getString(1));
				dto.setPass(rs.getString(2));
				dto.setName(rs.getString(3));
				dto.setNick(rs.getString(4));
				dto.setEmail(rs.getString(5));
				dto.setHp(rs.getString(6));
				dto.setRole(rs.getString(7));
				dto.setPoint(rs.getInt(8));
				dto.setZip(rs.getString(9));
				dto.setAddr1(rs.getString(10));
				dto.setAddr2(rs.getString(11));
				dto.setRegip(rs.getString(12));
				dto.setRegDate(rs.getString(13));
				dto.setLeaveDate(rs.getString(14));
			}
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return dto;
	}
	
	public List<UserDTO> selectAllUser() {
		
		List<UserDTO> users = new ArrayList<>();
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(SQL.SELECT_ALL_USER);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				UserDTO dto = new UserDTO();
				dto.setUid(rs.getString(1));
				dto.setPass(rs.getString(2));
				dto.setName(rs.getString(3));
				dto.setNick(rs.getString(4));
				dto.setEmail(rs.getString(5));
				dto.setHp(rs.getString(6));
				dto.setRole(rs.getString(7));
				dto.setPoint(rs.getInt(8));
				dto.setZip(rs.getString(9));
				dto.setAddr1(rs.getString(10));
				dto.setAddr2(rs.getString(11));
				dto.setRegip(rs.getString(12));
				dto.setRegDate(rs.getString(13).substring(0, 10));
				dto.setLeaveDate(rs.getString(14));
				users.add(dto);
			}
			closeAll();
			
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return users;
	}
	
	public void updateUserInfo(UserDTO dto) {
	    try {
	        conn = getConnection();
	        StringBuilder sql = new StringBuilder("UPDATE user SET ");
	        List<Object> params = new ArrayList<>();

	        if (dto.getName() != null) {
	            sql.append("name = ?, ");
	            params.add(dto.getName());
	        }
	        if (dto.getNick() != null) {
	            sql.append("nick = ?, ");
	            params.add(dto.getNick());
	        }
	        if (dto.getEmail() != null) {
	            sql.append("email = ?, ");
	            params.add(dto.getEmail());
	        }
	        if (dto.getHp() != null) {
	            sql.append("hp = ?, ");
	            params.add(dto.getHp());
	        }
	        if (dto.getZip() != null) {
	            sql.append("zip = ?, ");
	            params.add(dto.getZip());
	        }
	        if (dto.getAddr1() != null) {
	            sql.append("addr1 = ?, ");
	            params.add(dto.getAddr1());
	        }
	        if (dto.getAddr2() != null) {
	            sql.append("addr2 = ?, ");
	            params.add(dto.getAddr2());
	        }

	        // 마지막 콤마(,) 제거
	        sql.setLength(sql.length() - 2);
	        sql.append(" WHERE uid = ?");
	        params.add(dto.getUid());

	        pstmt = conn.prepareStatement(sql.toString());
	        for (int i = 0; i < params.size(); i++) {
	            pstmt.setObject(i + 1, params.get(i));
	        }

	        pstmt.executeUpdate();
	        closeAll();
	    } catch (Exception e) {
	        logger.error(e.getMessage());
	    }
	}
	
	public void updateUserPass(UserDTO dto) {
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(SQL.MODIFY_USER_PASS);
			pstmt.setString(1, dto.getPass());
			pstmt.setString(2, dto.getUid());
			pstmt.executeUpdate();
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}
	
	public void deleteUser(String uid) {
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(SQL.DELETE_USER);
			pstmt.setString(1, uid);
			pstmt.executeUpdate();
			closeAll();
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}
}
