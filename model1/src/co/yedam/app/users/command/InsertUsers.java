package co.yedam.app.users.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import co.yedam.app.common.Command;
import co.yedam.app.users.model.UsersDAO;
import co.yedam.app.users.model.UsersDTO;
import net.sf.json.JSONObject;

public class InsertUsers implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//파라미터를 DTO에 담기
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String role = request.getParameter("role");
		
		UsersDTO dto = new UsersDTO();
		dto.setId(id);
		dto.setName(name);
		dto.setGender(gender);
		dto.setRole(role);
		
		//등록 처리
		UsersDAO dao = new UsersDAO();
		dao.insertUser(dto);
		
		//등록된 결과를 조회
		
		
		//등록된 정보를 응답
		return "ajax:" + JSONObject.fromObject(dto);
	}

}
