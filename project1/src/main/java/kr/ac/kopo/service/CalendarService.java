package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.model.Calendar;

public interface CalendarService {
	
	Calendar item(long mCode);

	void add(Calendar item);

	List<Calendar> getList(long mCode);

	void delete(Calendar item);

	Calendar getItem(int calNum);

	void update(Calendar item);

	void delete(int calNum);

	List<Calendar> perlist(String pId);

	void padd(Calendar item);

	void update1(Calendar item);

	

	

	

	
}
