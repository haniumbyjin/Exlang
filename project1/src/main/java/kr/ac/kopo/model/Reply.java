package kr.ac.kopo.model;

public class Reply {
	int code;
	String id;	
	int boardCode;
	int articleCode;
	String contents;
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public int getBoardCode() {
		return boardCode;
	}
	public void setBoardCode(int boardCode) {
		this.boardCode = boardCode;
	}
	public int getArticleCode() {
		return articleCode;
	}
	public void setArticleCode(int articleCode) {
		this.articleCode = articleCode;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	
	
}
