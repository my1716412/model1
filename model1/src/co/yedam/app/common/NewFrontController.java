package co.yedam.app.common;

import java.io.IOException;
import java.util.HashMap;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.board.BoardCommandCreateForm;
import co.yedam.app.board.BoardCommandSelectList;

@WebServlet("*.do") // localhost/model1/ /// .do
public class NewFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HashMap<String, Command> cont = new HashMap<String, Command>();

	public NewFrontController() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void init(ServletConfig config) throws ServletException {
		// 해쉬맵 구조를 put() 적어준다
		// board
		// 등록
		// 수정
		// 삭제
		// 상세보기
		// 목록
		cont.put("/boardList", new BoardCommandSelectList());
		// 수정폼
		cont.put("/boardCreateForm", new BoardCommandCreateForm());
		// 등록폼

		// member
		// cont.put("/index.do", new IndexCommand()); // 홈페이지 호출

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 실행할 class객체를 찾아주는 부문 get()
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
		// 로그처리
		System.out.println("paht=" + path);
		// 권한체크(로그인체크)
		Command commandImpl = cont.get(path); // 실행 클래스를 선택한다.
		String page = null;
		response.setContentType("text/html; charset=EUC-KR");
		if (commandImpl != null) {
			page = commandImpl.excute(request, response);
			request.getRequestDispatcher(page).forward(request, response);
		} else {
			response.getWriter().append("잘못된요청");
		}
	}

}
