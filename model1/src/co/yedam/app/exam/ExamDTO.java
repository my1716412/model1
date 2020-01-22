package co.yedam.app.exam;

public class ExamDTO {
	int examNo;
	String examNm;
	int questCnt;
	int examTime;
	String questGroup;
	String examDesc;
	String examType;
	
	public int getExamNo() {
		return examNo;
	}
	public void setExamNo(int examNo) {
		this.examNo = examNo;
	}
	public String getExamNm() {
		return examNm;
	}
	public void setExamNm(String examNm) {
		this.examNm = examNm;
	}
	public int getQuestCnt() {
		return questCnt;
	}
	public void setQuestCnt(int questCnt) {
		this.questCnt = questCnt;
	}
	public int getExamTime() {
		return examTime;
	}
	public void setExamTime(int examTime) {
		this.examTime = examTime;
	}
	public String getQuestGroup() {
		return questGroup;
	}
	public void setQuestGroup(String questGroup) {
		this.questGroup = questGroup;
	}
	public String getExamDesc() {
		return examDesc;
	}
	public void setExamDesc(String examDesc) {
		this.examDesc = examDesc;
	}
	public String getExamType() {
		return examType;
	}
	public void setExamType(String examType) {
		this.examType = examType;
	}
	@Override
	public String toString() {
		return "ExamDTO [examNo=" + examNo + ", examNm=" + examNm + ", questCnt=" + questCnt + ", examTime=" + examTime
				+ ", questGroup=" + questGroup + ", examDesc=" + examDesc + ", examType=" + examType + "]";
	}
	
}
