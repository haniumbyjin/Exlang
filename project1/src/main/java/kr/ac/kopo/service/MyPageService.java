package kr.ac.kopo.service;

import java.util.Calendar;
import java.util.List;

import kr.ac.kopo.model.Article;
import kr.ac.kopo.model.Meeting;
import kr.ac.kopo.model.MyPage;
import kr.ac.kopo.model.Review;
import kr.ac.kopo.model.User;

public interface MyPageService {

	List<Meeting> getMeeting(String id);

	List<Calendar> getCalendar(String id);

	List<MyPage> getList(String id);

	User item(String id);

	List<Article> getAritcle(String id, long mCode);

	List<Review> getReview(String id, long mCode);

}
