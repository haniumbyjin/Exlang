package kr.ac.kopo.dao;

import java.util.List;

import kr.ac.kopo.model.Calendar;

public interface CalendarDao {

	List<Calendar> getList(long mCode);

	void delete(int calNum);

	void add(Calendar item);

	void update(Calendar item);

	Calendar getItem(int calNum);

	Calendar item(long mCode);

	List<Calendar> perlist(String pId);

	void padd(Calendar item);

	void update1(Calendar item);

}
