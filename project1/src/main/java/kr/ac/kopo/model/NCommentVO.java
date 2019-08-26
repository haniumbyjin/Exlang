package kr.ac.kopo.model;

import java.util.Date;

public class NCommentVO {
	int cno;
	int noticeCode;
	String content;
	String id;
	Date regDate;
	long recommend;
	long mCode;
	int totalComment;
	public int getTotalComment() {
		return totalComment;
	}

	public void setTotalComment(int totalComment) {
		this.totalComment = totalComment;
	}

	public long getmCode() {
		return mCode;
	}

	public void setmCode(long mCode) {
		this.mCode = mCode;
	}

	


	public int getNoticeCode() {
		return noticeCode;
	}

	public void setNoticeCode(int noticeCode) {
		this.noticeCode = noticeCode;
	}

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	

	
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public long getRecommend() {
		return recommend;
	}

	public void setRecommend(long recommend) {
		this.recommend = recommend;
	}
	
	


	
}
