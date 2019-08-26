package kr.ac.kopo.dao;

import java.util.List;

import kr.ac.kopo.model.Notice;
import kr.ac.kopo.util.Pager;

public interface NoticeDao {

	
	List<Notice> list(Pager pager);

	void add(Notice item);

	void update(Notice item);

	void delete(long noticeCode);

	Notice item(long noticeCode);
//
//	void inRef(long noticeCode);

	int total(Pager pager);

	int todayTotal(Pager pager);

	List<Notice> list(long mCode);

//	void incRecommend(long noticeCode, String id);
//
//	void updateRecommend(long noticeCode);
//
//	int countRecommend(String id, long noticeCode);


}
