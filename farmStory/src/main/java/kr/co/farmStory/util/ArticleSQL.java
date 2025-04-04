package kr.co.farmStory.util;

public class ArticleSQL {
	
	
	//CropStory
	public static final String INSERT_ARTICLE = "insert into `post` set "
																+ "`uid`=?,"
																+ "`title`=?,"
																+ "`content`=?,"
																+ "`file`=?,"
																+ "`nick`=?,"
																+ "`cate`=?,"
																+ "`regip`=?,"
																+ "`wdate`=now()";
	
	

	
	public static final String SELECT_ARTICLE_WITH_FILE = "SELECT p.*, f.* FROM `post` AS p "
																		+ "left JOIN `file` AS f "
																		+ "ON p.postNo=f.postNo "
																		+ "WHERE p.postNo=? and p.cate=?";
	
	
	public static final String SELECT_ALL_ARTICLE = "select * from `post` as p "
															+ "LEFT JOIN `user` AS u "
															+ "ON u.uid=p.uid "
															+ "WHERE `cate`=? "
															+ "order by `postNo` desc "
															+ "LIMIT ?, 10";
	
	public static final String SELECT_ALL_ARTICLE2 = "SELECT * FROM `post` "
															+ "WHERE `cate`='cropStory' "
															+ "LIMIT 5";
	
	public static final String SELECT_MAX_NO = "SELECT MAX(`postNo`) FROM `post`"
																	+ "where `cate`='cropStory'";
	
	
	public static final String SELECT_COUNT_ARTICLE = "SELECT COUNT(*) FROM `post` where `cate`=?";
	
	public static final String WHERE_COUNT_ARTICLE_CATE = " where cate= ?";
	
	public static final String SELECT_ALL_ARTICLE_BY_SEARCH = "select p.*, u.nick "
																			+ "from `post` as p "
																			+ "join `user` as u "
																			+ "on p.uid=u.uid ";
	
	public final static String SELECT_COUNT_POST_FOR_SEARCH = "select count(*) from `post` as p ";
	public final static String JOIN_FOR_SEARCH_NICK  = "JOIN `user` as u ON p.uid = u.uid ";
	public final static String WHERE_FOR_SEARCH_TITLE   = "WHERE p.title LIKE ? ";
	public final static String WHERE_FOR_SEARCH_CONTENT = "WHERE p.content LIKE ? ";
	public final static String WHERE_FOR_SEARCH_NICK  = "WHERE u.nick LIKE ? ";	
	
	public final static String AND_FOR_SEARCH_CATE = "and p.cate=? ";
	
	
	public final static String ORDER_FOR_SEARCH  = "order by p.postNo desc ";
	public final static String LIMIT_FOR_SEARCH  = "LIMIT ?, 10";
	
	
	public static final String UPDATE_ARTICLE = "UPDATE `post` SET "
														+ "`title`= ?, "
														+ "`content`= ? "
														+ "WHERE `postNo`=?";
	
	public static final String DELETE_ARTICLE = "delete from `post` where `postNo`=? and `cate`='cropStory'";
	public static final String DELETE_ARTICLE_IN_COMMENT = "DELETE FROM comment WHERE postNo = ?";
	
	
	
	
}
