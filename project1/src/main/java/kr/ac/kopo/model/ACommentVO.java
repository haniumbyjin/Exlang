package kr.ac.kopo.model;

import java.util.Date;

public class ACommentVO {
	int cno;
	int articleCode;
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

	public int getArticleCode() {
		return articleCode;
	}

	public void setArticleCode(int articleCode) {
		this.articleCode = articleCode;
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
