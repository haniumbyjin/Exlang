package kr.ac.kopo.service;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.MyPageDao;
import kr.ac.kopo.model.Article;
import kr.ac.kopo.model.Meeting;
import kr.ac.kopo.model.MyPage;
import kr.ac.kopo.model.Review;
import kr.ac.kopo.model.User;
@Service
public class MyPageServiceImpl implements MyPageService {
	@Autowired
	MyPageDao dao;
	
	@Override
	public List<Meeting> getMeeting(String id) {
		return dao.getMeeting(id);
	}

	@Override
	public List<Calendar> getCalendar(String id) {
		return dao.getCalendar(id);
	}

	@Override
	public List<MyPage> getList(String id) {
		return dao.getList(id);
	}

	@Override
	public User item(String id) {
		return dao.item(id);
	}

	@Override
	public List<Article> getAritcle(String id, long mCode) {
		return dao.getArticle(id, mCode);
	}

	@Override
	public List<Review> getReview(String id, long mCode) {
		return dao.getReview(id, mCode);
	}

}
