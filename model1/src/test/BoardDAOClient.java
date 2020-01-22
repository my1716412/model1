package test;

import co.yedam.app.board.BoardDAO;
import co.yedam.app.board.BoardDTO;

public class BoardDAOClient {
	public static void main(String[] args) {
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = new BoardDTO();
		dto.setPoster("홍길동");
		dto.setSubject("test");
		dto.setContents("test입니다.");
		dao.insert(dto);
	}
}
