package kr.co.farmStory.controller.comment;

import java.io.IOException;
import java.io.PrintWriter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.gson.Gson;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.farmStory.dto.CommentDTO;
import kr.co.farmStory.service.CommentService;

@MultipartConfig
@WebServlet("/comment/commentWrite.do")
public class WriteCommentController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private CommentService service = CommentService.instance;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 데이터 수신
		String postNo = req.getParameter("postNo");
		String content = req.getParameter("content");
		String nick = req.getParameter("nick");
		String uid = req.getParameter("uid");
		String regip = req.getRemoteAddr();
		String cate = req.getParameter("cate");
		
		int postNoInt = Integer.parseInt(postNo);
		
		
		// DTO 생성
		CommentDTO dto = new CommentDTO();
		dto.setPostNo(postNoInt);
		dto.setContent(content);
		dto.setNick(nick);
		dto.setUid(uid);
		dto.setRegip(regip);
		dto.setCate(cate);
		
		logger.debug(dto.toString());
		
		req.setAttribute("commentdto", dto);
		
		// 서비스 호출
		CommentDTO savedCommentDTO = service.registerComment(dto, postNoInt);
		
		
		// JSON 출력
		PrintWriter printWriter = resp.getWriter();
				
		Gson gson = new Gson();
		String json = gson.toJson(savedCommentDTO);
		printWriter.println(json);
	}
}
