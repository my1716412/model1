package co.yedam.app.users.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.common.Command;
import co.yedam.app.users.model.UsersDAO;
import co.yedam.app.users.model.UsersDTO;
import net.sf.json.JSONArray;

public class GetUsersList implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//파라미터를 DTO에 담기
		//조회 처리
		UsersDAO dao = new UsersDAO();
		List<UsersDTO> userList =dao.getUserList();
		//조회 정보를 응답
		return "ajax:" + JSONArray.fromObject(userList);
	}
}
