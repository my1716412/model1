package co.yedam.app.exam;

import java.util.ArrayList;
import java.util.List;

import co.yedam.app.board.DAO;

public class ExamDAO extends DAO {

	//�߰�
	public int insert(ExamDTO dto) {

		int rs = 0;

		try { 

			String sql = "insert into exam(exam_no, exam_nm, quest_cnt, exam_time, quest_group, exam_desc, exam_type)"
					+" values((select nvl(max(exam_no), 0)+1 from exam ),?,?,?,?,?,?)";

			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getExamNm());
			psmt.setInt(2, dto.getQuestCnt());
			psmt.setInt(3, dto.getExamTime());
			psmt.setString(4,  dto.getQuestGroup());
			psmt.setString(5, dto.getExamDesc());
			psmt.setString(6, dto.getExamType());
			r = psmt.executeUpdate();

		 } catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return r;
	}

	//����
	public int Update(ExamDTO dto) {

		int r = 0;

		try { 

			String sql = "Update exam set exam_nm=?, quest_cnt=?, exam_time=?, quest_group=?, exam_desc=?, exam_type=?"
					+" where exam_no = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getExamNm());
			psmt.setInt(2, dto.getQuestCnt());
			psmt.setInt(3, dto.getExamTime());
			psmt.setString(4,  dto.getQuestGroup());
			psmt.setString(5, dto.getExamDesc());
			psmt.setString(6, dto.getExamType());
			psmt.setInt(7, dto.getExamNo());

			r = psmt.executeUpdate();
		 } catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return r;
	}

 
	//����
	public int delete(ExamDTO dto) {

		int r = 0;

		try { 
			String sql = "delete exam "
					+"where exam_no = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, dto.getExamNo());

			r = psmt.executeUpdate();
		 } catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return r;
	}

//�ܰ���ȸ

	public ExamDTO selectOne(int no) {
		ExamDTO dto = new ExamDTO();

		try {
			String sql = "select * from exam where exam_no=?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1,no);
			
			rs = psmt.executeQuery();

			if(rs.next()) {
				dto.setExamNo(rs.getInt("exam_no"));
				dto.setExamNm(rs.getString("exam_nm"));
				dto.setQuestCnt(rs.getInt("quest_cnt"));
				dto.setExamTime(rs.getInt("exam_time"));
				dto.setQuestGroup(rs.getString("quest_group"));
				dto.setExamDesc(rs.getString("exam_desc"));
				dto.setExamType(rs.getString("exam_type"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return dto;
	}

//���

	public List<ExamDTO> selectList() {

		List<ExamDTO> list = new ArrayList<ExamDTO>();

		try {

			String sql = "select * from exam order by exam_no desc";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery(sql);

			while (rs.next()) {
				ExamDTO dto = new ExamDTO();
				dto.setExamNo(rs.getInt("exam_no"));
				dto.setExamNm(rs.getString("exam_nm"));
				dto.setQuestCnt(rs.getInt("quest_cnt"));
				dto.setExamTime(rs.getInt("exam_time"));
				dto.setQuestGroup(rs.getString("quest_group"));
				dto.setExamDesc(rs.getString("exam_desc"));
				dto.setExamType(rs.getString("exam_type"));

				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}

}