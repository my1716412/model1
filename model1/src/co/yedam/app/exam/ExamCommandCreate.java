package co.yedam.app.exam;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.common.Command;

public class ExamCommandCreate implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ExamDTO dto = new ExamDTO();
		dto.setExamNm(request.getParameter("examNm"));
		dto.setQuestGroup(request.getParameter("questGroup"));
		dto.setExamDesc(request.getParameter("examDesc"));
		dto.setExamType(request.getParameter("examType"));
		dto.setQuestCnt(Integer.parseInt(request.getParameter("questCnt")));
		dto.setExamTime(Integer.parseInt(request.getParameter("examTime")));
		
		//등록처리
		ExamDAO dao = new ExamDAO(); 
		dao.insert(dto);
		//목록으로 포워드
		return "/examForm.do";
	}

}
