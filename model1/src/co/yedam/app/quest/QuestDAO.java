package co.yedam.app.quest;

import java.util.ArrayList;
import java.util.List;

import co.yedam.app.board.DAO;

public class QuestDAO extends DAO {

	//추가
	public int insert(QuestDTO dto) {

		int r = 0;

		try { 

			String sql = "insert into quest(quest_no, quest_content, quest_type, answer1, answer2, answer3, answer4, right_answer, explain)"
					+" values((select nvl(max(quest_no),0)+1 from quest),?,?,?,?,?,?,?,?)";

			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getQuestContent());
			psmt.setString(2, dto.getQuestType());
			psmt.setString(3, dto.getAnswer1());
			psmt.setString(4, dto.getAnswer2());
			psmt.setString(5, dto.getAnswer3());
			psmt.setString(6, dto.getAnswer4());
			psmt.setString(7, dto.getRightAnswer());
			psmt.setString(8, dto.getExplain());
			
			r = psmt.executeUpdate();
		 } catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return r;
	}

	//수정
	public int Update(QuestDTO dto) {

		int r = 0;

		try { 

			String sql = "Update quest set quest_content=?, quest_type=?, answer1=?, answer2=?, answer3=?, answer4=?, right_answer=?, explain=?"
					+" where quest_no = ?";

			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getQuestContent());
			psmt.setString(2, dto.getQuestType());
			psmt.setString(3, dto.getAnswer1());
			psmt.setString(4, dto.getAnswer2());
			psmt.setString(5, dto.getAnswer3());
			psmt.setString(6, dto.getAnswer4());
			psmt.setString(7, dto.getRightAnswer());
			psmt.setString(8, dto.getExplain());
			psmt.setInt(9, dto.getQuestNo());

			r = psmt.executeUpdate();
		 } catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return r;
	}

 
	//삭제
	public int delete(QuestDTO dto) {

		int r = 0;

		try { 
			String sql = "delete quest "
					+"where quest_no = ?";

			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, dto.getQuestNo());

			r = psmt.executeUpdate();

		 } catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return r;
	}

//단건조회

	public QuestDTO selectOne(int no) {
		QuestDTO dto = new QuestDTO();

		try {
			String sql = "select * from quest where quest_no=?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1,no);
			
			rs = psmt.executeQuery();

			if(rs.next()) {
				dto.setQuestNo(rs.getInt("quest_no"));
				dto.setQuestContent(rs.getString("quest_content"));
				dto.setQuestType(rs.getString("quest_type"));
				dto.setAnswer1(rs.getString("answer1"));
				dto.setAnswer2(rs.getString("answer2"));
				dto.setAnswer3(rs.getString("answer3"));
				dto.setAnswer4(rs.getString("answer4"));
				dto.setRightAnswer(rs.getString("right_answer"));
				dto.setExplain(rs.getString("explain"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return dto;
	}

	//목록
	public List<QuestDTO> selectList() {

		List<QuestDTO> list = new ArrayList<QuestDTO>();

		try {

			String sql = "select * from quest order by quest_no desc";

			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery(sql);

			while (rs.next()) {
				QuestDTO dto = new QuestDTO();
				dto.setQuestNo(rs.getInt("quest_no"));
				dto.setQuestContent(rs.getString("quest_content"));
				dto.setQuestType(rs.getString("quest_type"));
				dto.setAnswer1(rs.getString("answer1"));
				dto.setAnswer2(rs.getString("answer2"));
				dto.setAnswer3(rs.getString("answer3"));
				dto.setAnswer4(rs.getString("answer4"));
				dto.setRightAnswer(rs.getString("right_answer"));
				dto.setExplain(rs.getString("explain"));

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