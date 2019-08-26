package kr.ac.kopo.model;

import org.springframework.web.multipart.MultipartFile;

public class Meeting {
	long mCode;
	String mName;
	String mCategory;
	String mMember;
	String mId;
	String mIntro;
	String mLocation;
	private int total;
	int totalcomment;
	public int getTotalcomment() {
		return totalcomment;
	}
	public void setTotalcomment(int totalcomment) {
		this.totalcomment = totalcomment;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public String getmLocation() {
		return mLocation;
	}
	public void setmLocation(String mLocation) {
		this.mLocation = mLocation;
	}
	public String getmIntro() {
		return mIntro;
	}
	public void setmIntro(String mIntro) {
		this.mIntro = mIntro;
	}
	
	
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public long getmCode() {
		return mCode;
	}
	public void setmCode(long mCode) {
		this.mCode = mCode;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmCategory() {
		return mCategory;
	}
	public void setmCategory(String mCategory) {
		this.mCategory = mCategory;
	}
	public String getmMember() {
		return mMember;
	}
	public void setmMember(String mMember) {
		this.mMember = mMember;
	}
	
	//DB에 넣어줄때는 filename으로 사용해준다.
	String mFilename;
	MultipartFile uploadFile;

	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public String getmFilename() {
		return mFilename;
	}
	public void setmFilename(String mFilename) {
		this.mFilename = mFilename;
	}


	
}
