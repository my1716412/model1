package co.yedam.app.boardAjax;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.chartDAO;

import co.yedam.app.common.Command;
import net.sf.json.JSONArray;


public class GetDeptCnt implements Command {

	@Override
	public String excute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//CharDAO
		chartDAO dao = new chartDAO();
		List<Map<String, Object>> list = dao.getDetpCnt();
		//json string 변환
		String str = JSONArray.fromObject(list).toString();
		
		System.out.println("GetDeptCnt"+str);
		return "ajax:" + str;
	}

}
