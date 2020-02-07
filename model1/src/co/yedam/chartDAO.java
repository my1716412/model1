package co.yedam;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import co.yedam.app.board.DAO;

public class chartDAO extends DAO {
	
	public List<Map<String,Object>> getDetpCnt(){
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		try {
			String sql = "select department_name, count(*) cnt " + 
					"from departments d, employees e " + 
					"where d.department_id = e.department_id " + 
					"group by department_name";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next() ) {
				Map<String,Object> map = new HashMap<String,Object>();
				map.put("department_name", rs.getString(1));
				map.put("cnt", rs.getInt("cnt"));
				System.out.println(map);
				list.add(map);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
		
	}
}
