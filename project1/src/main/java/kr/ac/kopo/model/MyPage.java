package kr.ac.kopo.model;

import java.util.Date;

public class MyPage {
	String mName;
	String mIntro;
	String mId;
	String mFilename;
	String calPlan;
	Date startDate;
	Date endDate;
	int total;
	long mCode;
	public long getmCode() {
		return mCode;
	}
	public void setmCode(long mCode) {
		this.mCode = mCode;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
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
	public String getmFilename() {
		return mFilename;
	}
	public void setmFilename(String mFilename) {
		this.mFilename = mFilename;
	}
	public String getCalPlan() {
		return calPlan;
	}
	public void setCalPlan(String calPlan) {
		this.calPlan = calPlan;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
}
