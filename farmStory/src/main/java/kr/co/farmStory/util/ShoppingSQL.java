package kr.co.farmStory.util;

public class ShoppingSQL {

	// 장보기 전체 리스트
	public static final String SELECT_ALL_SHOPPING_PRO = "SELECT p.`pid`, f.`sName`, p.`types`, p.`pName`, p.`discount`, p.`point`, p.`price` FROM `product` AS p "
			+ "JOIN `profile` AS f ON p.pid = f.proId";

	// 카테별 조회?
	public static final String SELECT_ALL_WHERE_PRO = "SELECT p.`pid`, f.`sName`, p.`types`, p.`pName`, p.`discount`, p.`point`, p.`price` FROM `product` AS p "
			+ "JOIN `profile` AS f ON p.pid = f.proId "
			+ "WHERE p.`types`= ?";
	
	// 상세 보기
	public static final String SELECT_SHOPPING_DETAIL = "SELECT f.`sName`, p.`pName`, p.`pid`, p.`charge`, p.`price`, p.`other` "
			+ "FROM `product` AS p "
			+ "JOIN `profile` AS f ON p.pid = f.proId "
			+ "WHERE p.`pid` = ?";
}
