package co.yedam.app.users.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.app.common.Command;
import co.yedam.app.users.model.UsersDAO;
import co.yedam.app.users.model.UsersDTO;
import net.sf.json.JSONObject;

public class ManageUsers implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		return "users/userList_Json.jsp";
	}

}
