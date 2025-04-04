package kr.co.farmStory.util;

public class AdminSQL {
	
	// 관리자 메인 리스트
	public static final String SELECT_ALL_MAIN_PRO = "SELECT `pid`,`pName`,`types`, `price`,`stock`,`pDate` FROM `product`";
	
	//  상품등록
	public static final String INSERT_PRODUCT = "insert into `product` values (?,?,?,?,?,?,?,?,?,NOW())";

	// 상품목록
	public static final String SELECT_ALL_PRODUCT = "SELECT f.`sName`, p.`pid`, p.`pName`, p.`types`, p.`price`, p.`stock`, p.`pDate` FROM `product` as p join `profile` as f on p.pid = f.proId";
	
	public static final String SELECT_MAX_PID = "SELECT MAX(`pid`) FROM `product`";

}
