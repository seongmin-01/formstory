package kr.co.farmStory.dao;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import kr.co.farmStory.dto.AdminDTO;
import kr.co.farmStory.util.AdminSQL;
import kr.co.farmStory.util.DBHelper;
import kr.co.farmStory.util.ShoppingSQL;

public class AdminDAO extends DBHelper{
	private static final AdminDAO instance = new AdminDAO();
	public static AdminDAO getIntance() {
		return instance;
	}
	
	private AdminDAO() {}
	
	public int insertAdminPro(AdminDTO dto) {
		int pcode = 0;
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(AdminSQL.INSERT_PRODUCT);
			pstmt.setInt(1, dto.getPid());
			pstmt.setString(2, dto.getpName());
			pstmt.setString(3, dto.getTypes());
			pstmt.setInt(4, dto.getPrice());
			pstmt.setInt(5, dto.getPoint());
			pstmt.setString(6, dto.getDiscount());
			pstmt.setInt(7, dto.getCharge());
			pstmt.setInt(8, dto.getStock());
			pstmt.setString(9, dto.getOther());
			
			pstmt.executeUpdate();
			
			// 글 번호 조회 쿼리 실행
			stmt = conn.createStatement();
			rs = stmt.executeQuery(AdminSQL.SELECT_MAX_PID);
			if(rs.next()) {
				pcode = rs.getInt(1);
			}
					
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pcode;
		
	}
	
	public List<AdminDTO> selectAllPro() {
		
		List<AdminDTO> Products = new ArrayList<AdminDTO>();
		
		try {
			
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(AdminSQL.SELECT_ALL_PRODUCT);
			
			while(rs.next()) {
				AdminDTO dto = new AdminDTO();
				dto.setsName(rs.getString(1));
				dto.setPid(rs.getInt(2));
				dto.setpName(rs.getString(3));
				dto.setTypes(rs.getString(4));
				dto.setPrice(rs.getInt(5));
				dto.setStock(rs.getInt(6));
				dto.setpDate(rs.getString(7));
				Products.add(dto);
				
			}
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Products;
	}

	
	// 장보기 전체 목록
	public List<AdminDTO> selectAllShopping(String pid) {
		
		List<AdminDTO> Products = new ArrayList<AdminDTO>();
		
		try {
			
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(ShoppingSQL.SELECT_ALL_SHOPPING_PRO);
			
			
			
			while(rs.next()) {
				AdminDTO dto = new AdminDTO();
				dto.setPid(rs.getString(1));
				dto.setsName(rs.getString(2));
				dto.setTypes(rs.getString(3));
				dto.setpName(rs.getString(4));
				dto.setDiscount(rs.getString(5));
				dto.setPoint(rs.getInt(6));
				dto.setPrice(rs.getInt(7));
				Products.add(dto);
				
			}
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Products;
	}
	
	// 과일 목록
	public List<AdminDTO> select_fruit(String types) {
		
		List<AdminDTO> fruits = new ArrayList<AdminDTO>();
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(ShoppingSQL.SELECT_ALL_WHERE_PRO);
			pstmt.setString(1, types);
			
			
		    System.out.println("실행되는 SQL: SELECT * FROM product WHERE types = '" + types + "'");
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				AdminDTO dto = new AdminDTO();
				dto.setPid(rs.getString(1));
				dto.setsName(rs.getString(2));
				dto.setTypes(rs.getString(3));
				dto.setpName(rs.getString(4));
				dto.setDiscount(rs.getString(5));
				dto.setPoint(rs.getInt(6));
				dto.setPrice(rs.getInt(7));
				fruits.add(dto);
			}
			
			closeAll();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return fruits;
	}
	
	// 야채 목록 
	public List<AdminDTO> select_vegetable(String types) {
		
		List<AdminDTO> vegetables = new ArrayList<AdminDTO>();
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(ShoppingSQL.SELECT_ALL_WHERE_PRO);
			pstmt.setString(1, types);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				AdminDTO dto = new AdminDTO();
				dto.setPid(rs.getString(1));
				dto.setsName(rs.getString(2));
				dto.setTypes(rs.getString(3));
				dto.setpName(rs.getString(4));
				dto.setDiscount(rs.getString(5));
				dto.setPoint(rs.getInt(6));
				dto.setPrice(rs.getInt(7));
				vegetables.add(dto);
			}
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vegetables;
	}
	
	// 곡류 목록 
	public List<AdminDTO> select_grains(String types) {
		
		List<AdminDTO> grainss = new ArrayList<AdminDTO>();
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(ShoppingSQL.SELECT_ALL_WHERE_PRO);
			pstmt.setString(1, types);
			rs = pstmt.executeQuery();
			
			  System.out.println("실행되는 SQL: SELECT * FROM product WHERE types = '" + types + "'");
			
			while(rs.next()) {
				AdminDTO dto = new AdminDTO();
				dto.setPid(rs.getString(1));
				dto.setsName(rs.getString(2));
				dto.setTypes(rs.getString(3));
				dto.setpName(rs.getString(4));
				dto.setDiscount(rs.getString(5));
				dto.setPoint(rs.getInt(6));
				dto.setPrice(rs.getInt(7));
				grainss.add(dto);
			}
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return grainss;
	}
	
	// 상품 상세보기
	
	public List<AdminDTO> select_detail(String pid) {
		
		List<AdminDTO> products = new ArrayList<AdminDTO>();
		
		try {
			
			conn = getConnection();
			pstmt = conn.prepareStatement(ShoppingSQL.SELECT_SHOPPING_DETAIL);
			pstmt.setString(1, pid);
			rs = pstmt.executeQuery();
			
			System.out.println("pid" + pid);
			
			if(rs.next()) {
				AdminDTO dto = new AdminDTO();
				dto.setsName(rs.getString(1));
				dto.setpName(rs.getString(2));
				dto.setPid(rs.getString(3));
				dto.setCharge(rs.getInt(4));
				dto.setPrice(rs.getInt(5));
				dto.setOther(rs.getString(6));
				products.add(dto);
			
			}
			
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}

}