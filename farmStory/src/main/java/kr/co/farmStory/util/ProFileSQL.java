package kr.co.farmStory.util;

public class ProFileSQL {

public static final String INSERT_PROFILE = "insert into `profile` set "
											+ "`proId`=?,"
											+ "`oName`=?,"
											+ "`sName`=?,"
											+ "`rdate`= NOW()";

}
