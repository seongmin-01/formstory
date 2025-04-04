package kr.co.farmStory.controller.myInfo;

import java.io.IOException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.farmStory.dto.UserDTO;
import kr.co.farmStory.service.UserService;

@WebServlet("/myInfo/modifyInfo.do")
public class ModifyController extends HttpServlet {

	private static final long serialVersionUID = -8348817414728702534L;
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	private UserService service = UserService.INSTANCE;
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		UserDTO sessUser = (UserDTO) session.getAttribute("sessUser");
		
		if (sessUser == null) {
		    resp.sendRedirect("/farmStory/index.jsp");
		    return;
		}
		
		String uid = sessUser.getUid();
		UserDTO dto = service.findUserId(uid);
		req.setAttribute("user", dto);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/view/myInfo/modifyInfo.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    
	    HttpSession session = req.getSession();
	    UserDTO sessUser = (UserDTO) session.getAttribute("sessUser");

	    if (sessUser == null) {
	        resp.sendRedirect("/farmStory/index.jsp");
	        return;
	    }

	    // 입력된 값 가져오기
	    String name = req.getParameter("name");
	    String nick = req.getParameter("nick");
	    String email = req.getParameter("email");
	    String hp = req.getParameter("hp");
	    String zip = req.getParameter("zip");
	    String addr1 = req.getParameter("addr1");
	    String addr2 = req.getParameter("addr2");
	    String uid = sessUser.getUid();

	    // 기존 정보와 비교하여 변경된 값만 DTO에 저장
	    UserDTO dto = new UserDTO();
	    dto.setUid(uid); // 기본적으로 UID는 필요

	    boolean isUpdated = false; // 변경 여부 체크

	    if (name != null && !name.equals(sessUser.getName())) {
	        dto.setName(name);
	        isUpdated = true;
	    }
	    if (nick != null && !nick.equals(sessUser.getNick())) {
	        dto.setNick(nick);
	        isUpdated = true;
	    }
	    if (email != null && !email.equals(sessUser.getEmail())) {
	        dto.setEmail(email);
	        isUpdated = true;
	    }
	    if (hp != null && !hp.equals(sessUser.getHp())) {
	        dto.setHp(hp);
	        isUpdated = true;
	    }
	    if (zip != null && !zip.equals(sessUser.getZip())) {
	        dto.setZip(zip);
	        isUpdated = true;
	    }
	    if (addr1 != null && !addr1.equals(sessUser.getAddr1())) {
	        dto.setAddr1(addr1);
	        isUpdated = true;
	    }
	    if (addr2 != null && !addr2.equals(sessUser.getAddr2())) {
	        dto.setAddr2(addr2);
	        isUpdated = true;
	    }

	    if (isUpdated) {
	        service.modifyUser(dto); // 변경된 정보만 업데이트
	        session.setAttribute("sessUser", service.findUserId(uid)); // 세션 정보 갱신
	        session.setAttribute("message", "회원 정보가 성공적으로 수정되었습니다."); // 세션에 message 저장
	    } else {
	        session.setAttribute("message", "변경된 정보가 없습니다."); // 세션에 message 저장
	    }
	    resp.sendRedirect("/farmStory/myInfo/modifyInfo.do"); // 페이지 리디렉션

	}
}
