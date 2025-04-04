package kr.co.farmStory.util;

public class CommentSQL {
	
	public static final String INSERT_COMMENT = "INSERT INTO `comment` SET "
															+ "`postNo`= ?,"
															+ "`content`=?,"
															+ "`nick`=?,"
															+ "`regip`=?,"
															+ "`wdate`=NOW()";
	public static final String COMMENT_COUNT_PLUS = "UPDATE post SET comment = comment + 1 WHERE postNo = ?";
	
	
	public static final String SELECT_ALL_COMMENT = "SELECT * FROM `comment` AS c JOIN post AS p ON c.postNo = p.postNo JOIN user AS u ON p.uid = u.uid WHERE `cno`= ?";
	
	
	
	public static final String SELECT_ALL_COMMENT_BY_POSTNO = "SELECT * "
																	+ "FROM `comment` "
																	+ "WHERE `postNo`=? "
																	+ "ORDER BY `cno` ASC";
	
	public static final String DELETE_COMMENT = "DELETE FROM `comment` WHERE `cno`=?";
	public static final String COMMENT_COUNT_MINUS = "UPDATE post SET comment = comment - 1 WHERE postNo = ?";
	
	public static final String UPDATE_COMMENT = "UPDATE `comment` SET `content` = ? WHERE `cno` = ?";
	
}
