package kr.co.farmStory.dto;

public class CommentDTO {
	
	private int cno;
	private int postNo;
	private String content;
	private String nick;
	private String regip;
	private String wdate;
	private String uid;
	private String cate;
	
	
	
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public int getPostNo() {
		return postNo;
	}
	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getRegip() {
		return regip;
	}
	public void setRegip(String regip) {
		this.regip = regip;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	@Override
	public String toString() {
		return "CommentDTO [cno=" + cno + ", postNo=" + postNo + ", content=" + content + ", nick=" + nick + ", regip="
				+ regip + ", wdate=" + wdate + "]";
	}
	
	

	
}	
	