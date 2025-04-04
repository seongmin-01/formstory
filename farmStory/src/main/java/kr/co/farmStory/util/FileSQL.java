package kr.co.farmStory.util;

public class FileSQL {

	// file
		public static final String INSERT_FILE = "insert into `file` set "
													+ "`postNo`=?, "
													+ "`oName`=?, "
													+ "`sName`=?, "
													+ "`rdate`=NOW()";
		
		public static final String SELECT_FILE_BY_FNO = "select * from `file` where `fno`=?";
		public static final String UPDATE_FILE_DOWNLOAD_COUNT = "UPDATE `file` SET `download` = `download` + 1 WHERE `postNo`=? and ";
		
		public static final String DELETE_FILE = "DELETE FROM `file` WHERE `postNo`=?";
}
