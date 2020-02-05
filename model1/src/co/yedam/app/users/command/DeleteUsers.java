package co.yedam.app.users.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.common.Command;
import co.yedam.app.users.model.UsersDAO;
import co.yedam.app.users.model.UsersDTO;
import net.sf.json.JSONObject;

public class DeleteUsers implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//파라미터를 DTO에 담기
		String id = request.getParameter("id");
		UsersDTO dto = new UsersDTO(id); 
		//삭제 처리
		UsersDAO dao = new UsersDAO();
		dao.deleteUser(dto);
		//삭제된 정보를 응답
		return "ajax:" + JSONObject.fromObject(dto);
	}

}
