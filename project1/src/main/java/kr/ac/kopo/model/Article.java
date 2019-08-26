package kr.ac.kopo.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Article {
	int articleCode;
	String articleTitle;
	String articleContext;
	String id;
	
	MultipartFile uploadFile;
	Date regDate;
	String upFilename;
	private int totalcomment;
	
	public int getTotalcomment() {
		return totalcomment;
	}

	public void setTotalcomment(int totalcomment) {
		this.totalcomment = totalcomment;
	}

	public int getArticleCode() {
		return articleCode;
	}

	public void setArticleCode(int articleCode) {
		this.articleCode = articleCode;
	}

	public String getArticleTitle() {
		return articleTitle;
	}

	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}

	public String getArticleContext() {
		return articleContext;
	}

	public void setArticleContext(String articleContext) {
		this.articleContext = articleContext;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getUpFilename() {
		return upFilename;
	}

	public void setUpFilename(String upFilename) {
		this.upFilename = upFilename;
	}

	public long getmCode() {
		return mCode;
	}

	public void setmCode(long mCode) {
		this.mCode = mCode;
	}

	long mCode;
}
