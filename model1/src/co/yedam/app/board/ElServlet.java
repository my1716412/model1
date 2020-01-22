package co.yedam.app.board;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ElServlet")

public class ElServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ElServlet() {
        super();

    }

 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("name", "request-hong");
		HttpSession session = request.getSession();
		session.setAttribute("name", "session-hong");
		
		//application형식
		this.getServletContext()
			.setAttribute("name", "application-hong");
		

		//list형식

		List<BoardDTO> list = new ArrayList<>();
		list.add(new BoardDTO(1,"홍길동","첫번째"));
		list.add(new BoardDTO(2,"김유신","두번째"));
		request.setAttribute("boardList", list);

		
		//map형식

		Map<String, Object> map = new HashMap<>();
		map.put("name", "이순신");
		map.put("age", 25);
		map.put("dept", "개발");
		request.setAttribute("userInfo", map);

		
		//dto형식
		
		request.setAttribute("board", new BoardDTO(3,"최","세번째"));	
		request.getRequestDispatcher("jsp/elTest.jsp")
				.forward(request, response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

	}

 

}


