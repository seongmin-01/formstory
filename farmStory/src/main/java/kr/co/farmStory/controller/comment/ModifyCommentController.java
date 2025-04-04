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
@WebServlet("/comment/modify.do")
public class ModifyCommentController extends HttpServlet {


	private static final long serialVersionUID = 1L;
	
	
	private CommentService service = CommentService.instance;
	    
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    // 데이터 수신
	    String cno = req.getParameter("cno");
	    String postNo = req.getParameter("postNo");
	    String content = req.getParameter("content");

	    // 파라미터 null 체크
	    if (cno == null || postNo == null || content == null) {
	        resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
	        return;
	    }

	    try {
	        int cnoInt = Integer.parseInt(cno);
	        int postNoInt = Integer.parseInt(postNo);

	        // DTO 생성
	        CommentDTO dto = new CommentDTO();
	        dto.setCno(cnoInt);
	        dto.setPostNo(postNoInt);
	        dto.setContent(content);
	        
	        logger.debug("cno: " + cno);
	        logger.debug("postNo: " + postNo);
	        logger.debug("content: " + content);

	        // 서비스 호출
	        CommentDTO updatedCommentDTO = service.modifyComment(dto);

	        // JSON 출력
	        resp.setContentType("application/json");
	        resp.setCharacterEncoding("UTF-8");
	        PrintWriter printWriter = resp.getWriter();

	        Gson gson = new Gson();
	        String json = gson.toJson(updatedCommentDTO);
	        printWriter.println(json);
	        printWriter.flush();

	    } catch (NumberFormatException e) {
	        resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
	    }
	}

}
