package co.yedam.app.board;

import java.util.Date;

public class BoardDTO {
	private int no;
	private String poster;
	private String subject;
	private String contents;
	private Date lastpost;
	
	public BoardDTO() {
		super();
	}
	public BoardDTO(int no, String poster, String subject) {
		super();
		this.no = no;
		this.poster = poster;
		this.subject = subject;
	}
	@Override
	public String toString() {
		return "BoardDTO [no=" + no + ", poster=" + poster + ", subject=" + subject + ", contents=" + contents
				+ ", lastpost=" + lastpost + ", views=" + views + "]";
	}
	private int views;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getLastpost() {
		return lastpost;
	}
	public void setLastpost(Date lastpost) {
		this.lastpost = lastpost;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	
}
