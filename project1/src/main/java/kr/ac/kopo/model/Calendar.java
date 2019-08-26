package kr.ac.kopo.model;

import java.util.Date;

public class Calendar {
	int calNum;
	String mId;
	String pId;
	String calPlan;
	String startDate;
	String endDate;
	long mCode;
	String mName;
	
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getpId() {
		return pId;
	}
	public void setpId(String pId) {
		this.pId = pId;
	}
	public int getCalNum() {
		return calNum;
	}
	public void setCalNum(int calNum) {
		this.calNum = calNum;
	}
	public String getCalPlan() {
		return calPlan;
	}
	public void setCalPlan(String calPlan) {
		this.calPlan = calPlan;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String subsd) {
		this.startDate = subsd;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String subed) {
		this.endDate = subed;
	}
	public long getmCode() {
		return mCode;
	}
	public void setmCode(long mCode) {
		this.mCode = mCode;
	}
}
