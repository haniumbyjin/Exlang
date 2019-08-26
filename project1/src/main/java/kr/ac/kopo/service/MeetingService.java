package kr.ac.kopo.service;

import java.util.Calendar;
import java.util.List;

import kr.ac.kopo.model.ACommentVO;
import kr.ac.kopo.model.Article;
import kr.ac.kopo.model.Meeting;
import kr.ac.kopo.model.MeetingMember;
import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Review;
import kr.ac.kopo.util.Pager;

public interface MeetingService {

	Meeting item(long mCode);

	

	

	void add(Meeting item);

	void memadd(MeetingMember item);

	List<Meeting> list(Pager pager, String mCategory);





	int countMember(long mCode);





	





	List<Notice> nlist(long mCode);





	Notice nitem(long mCode);





	List<Article> alist(long mCode);





	int countComment(long mCode);





	int count(long mCode);





	List<ACommentVO> aclist(long mCode);





	List<Review> rlist(long mCode);





	List<Calendar> clist(long mCode);





	List checkMember(long mCode);










	











	



	
}
