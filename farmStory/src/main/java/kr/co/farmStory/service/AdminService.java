package kr.co.farmStory.service;

import java.util.List;

import kr.co.farmStory.dao.AdminDAO;
import kr.co.farmStory.dto.AdminDTO;

public enum AdminService {
	
	INSTANCE;
	private AdminDAO dao = AdminDAO.getIntance();
	
	// 메인 목록 
	public List<AdminDTO> findAllMainPro() {
		return dao.selectAllPro();
	}
	
	// 상품등록
	public int registerProduct(AdminDTO dto) {
		return dao.insertAdminPro(dto);
		
	}
	
	// 상품목록
	public List<AdminDTO> findAllProduct() {
		return dao.selectAllPro();
	}
	
	// 장보기
	public List<AdminDTO> findAllShopping(String pid) {
		return dao.selectAllShopping(pid);
	}
	
	// ====================================================
	
	// 과일 목록
	public List<AdminDTO> find_fruit(String types) {
		return dao.select_fruit(types);
	}
	
	// 야채 목록
	public List<AdminDTO> find_vegetable(String types) {
		return dao.select_vegetable(types);
	}
	
	// 곡류 목록
	public List<AdminDTO> find_grains(String types) {
		return dao.select_grains(types);
	}
	
	// 상세보기
	public List<AdminDTO> find_detail(String pid) {
		return dao.select_detail(pid);
	}
	
	
	
}