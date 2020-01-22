package co.yedam.app.exam;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.board.BoardDAO;
import co.yedam.app.common.Command;

public class ExamCommandCreateForm implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ExamDTO dto = new ExamDTO();
		dto.setExamNm(request.getParameter("examnm"));
		dto.setQuestGroup(request.getParameter("questgroup"));
		dto.setExamDesc(request.getParameter("examdesc"));
		dto.setExamType(request.getParameter("examtype"));
		//등록처리
		ExamDAO dao = new ExamDAO(); 
		//목록으로 포워드
		return "/boardList";
	}

}
