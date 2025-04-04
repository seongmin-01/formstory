package kr.co.farmStory.service;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;
import kr.co.farmStory.dao.ProFileDAO;
import kr.co.farmStory.dto.ProFileDTO;

public enum ProFileService {
	
	instance;
	
	private ProFileDAO dao = ProFileDAO.getInstance();
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public void registerProFile(ProFileDTO dto) {
		dao.insertProFile(dto);
	}

	public List<ProFileDTO> uploadProFile(HttpServletRequest req) {
		
		List<ProFileDTO> profiles = new ArrayList<ProFileDTO>();
		
		// 파일 업로드 경로 
		//ServletContext ctx = req.getServletContext();
		//String uploadPath = ctx.getRealPath("/imguploads");
		
		
		// 파일 업로드 디렉터리가 존재하지 않으면 디렉터리 생성
		//String uploadPath =  "C:/Users/lotte06/Desktop/workspace/GCA_JSP_TeamProject/farmStory/src/main/webapp/uploadImg";

		//!주의! 본인 PC 이름 넣어줄 것
		String uploadPath = "C:/Users/lotte06/Desktop/workspace/GCA_JSP_TeamProject/farmStory/src/main/webapp/uploadImg";
		File uploadDir = new File(uploadPath); 
		
		if(!uploadDir.exists()) {
			uploadDir.mkdir();
		}
		
		try {
			
			// 첨부파일 객체 가져오기
			Collection<Part> parts = req.getParts();
			
			for(Part part : parts) {
				logger.debug(part.toString());
				
				// 파일명 추출 
				String oName = part.getSubmittedFileName();
				logger.debug(oName);
				
				// 파일을 첨부했으면
				if(oName != null && !oName.isEmpty()) {
					
					// 고유 파일명 생성
					int idx = oName.lastIndexOf(".");
					String ext = oName.substring(idx);
					String sName = UUID.randomUUID().toString() + ext;
					
					// 파일 저장
					part.write(uploadPath + File.separator + sName);
					
					// 파일dto 생성
					ProFileDTO dto = new ProFileDTO();
					dto.setoName(oName);
					dto.setsName(sName);
					
					profiles.add(dto);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return profiles;
	}
}
