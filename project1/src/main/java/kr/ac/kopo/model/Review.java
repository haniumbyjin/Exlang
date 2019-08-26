package kr.ac.kopo.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Review {
	
	int reviewCode;
	String reviewTitle;
	String reviewContext;
	String id;
	
	MultipartFile uploadFile;
	Date regDate;
	String upFilename;
	
	long mCode;
	public long getmCode() {
		return mCode;
	}

	public void setmCode(long mCode) {
		this.mCode = mCode;
	}

	public String getUpFilename() {
		return upFilename;
	}

	public void setUpFilename(String upFilename) {
		this.upFilename = upFilename;
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

	
	public int getReviewCode() {
		return reviewCode;
	}

	public void setReviewCode(int reviewCode) {
		this.reviewCode = reviewCode;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public String getReviewContext() {
		return reviewContext;
	}

	public void setReviewContext(String reviewContext) {
		this.reviewContext = reviewContext;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}
