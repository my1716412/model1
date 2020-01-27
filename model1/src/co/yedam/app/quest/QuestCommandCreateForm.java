package co.yedam.app.quest;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.common.Command;

public class QuestCommandCreateForm implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		//파라미터
//		QuestDTO dto = new QuestDTO();
//		dto.setQuestContent(request.getParameter("questcontent"));
//		dto.setQuestType(request.getParameter("questtype"));
//		dto.setAnswer1(request.getParameter("answer1"));
//		dto.setAnswer2(request.getParameter("answer2"));
//		dto.setAnswer3(request.getParameter("answer3"));
//		dto.setAnswer4(request.getParameter("answer4"));
//		dto.setRightAnswer(request.getParameter("rightanswer"));
//		dto.setExplain(request.getParameter("explain"));
//		//등록처리
//		QuestDAO dao = new QuestDAO();
//		dao.insert(dto);
//		//목록으로 포워드
		return "/questForm.jsp";
	}

}
