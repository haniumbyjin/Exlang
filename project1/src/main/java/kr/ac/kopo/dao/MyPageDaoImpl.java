package kr.ac.kopo.dao;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.kopo.model.Article;
import kr.ac.kopo.model.Meeting;
import kr.ac.kopo.model.MyPage;
import kr.ac.kopo.model.Review;
import kr.ac.kopo.model.User;
@Repository
public class MyPageDaoImpl implements MyPageDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Meeting> getMeeting(String id) {
		return sql.selectList("mypage.getmeeting", id);
	}

	@Override
	public List<Calendar> getCalendar(String id) {
		return sql.selectList("mypage.getCalendar",id);
	}

	@Override
	public List<MyPage> getList(String id) {
		return sql.selectList("mypage.getList",id);
	}

	@Override
	public User item(String id) {
		return sql.selectOne("mypage.item", id);
	}

	@Override
	public List<Article> getArticle(String id, @RequestParam long mCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("mCode", mCode);
		return sql.selectList("mypage.getArticle", map);
	}

	@Override
	public List<Review> getReview(String id, long mCode) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("mCode", mCode);
		return sql.selectList("mypage.getReview",map);
	}

}
