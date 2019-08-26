
package kr.ac.kopo.dao;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.ACommentVO;
import kr.ac.kopo.model.Article;
import kr.ac.kopo.model.Meeting;
import kr.ac.kopo.model.MeetingMember;
import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Review;
import kr.ac.kopo.util.Pager;

@Repository
public class MeetingDaoImpl implements MeetingDao {
	@Autowired
	SqlSession sql;
	
	@Override
	public Meeting item(long mCode) {
		return sql.selectOne("meeting.item", mCode);
	}



	@Override
	public void add(Meeting item) {
		sql.insert("meeting.add", item);

	}

	@Override
	public void memadd(MeetingMember item) {
		sql.insert("meetingmember.memadd", item);
	}

	@Override
	public List<Meeting> list(Pager pager, String mCategory) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pager", pager);
		map.put("mCategory", mCategory);
		
		return sql.selectList("meeting.list", map);
	}



	@Override
	public int countMember(long mCode) {
		return sql.selectOne("meeting.countMember", mCode);
	}



	@Override
	public Notice nitem(long mCode) {
		return sql.selectOne("meeting.nitem", mCode);
	}



	@Override
	public List<Notice> nlist(long mCode) {
		return sql.selectList("meeting.nitem", mCode);
	}



	@Override
	public List<Article> alist(long mCode) {
		return sql.selectList("meeting.aitem", mCode);
	}



	@Override
	public int countComment(long mCode) {
		return sql.selectOne("article.countComment", mCode);
	}



	@Override
	public List<ACommentVO> aclist(long mCode) {
		return sql.selectList("meeting.acitem",mCode);
	}



	@Override
	public List<Review> rlist(long mCode) {
		return sql.selectList("meeting.ritem",mCode);
	}



	@Override
	public List<Calendar> clist(long mCode) {
		return sql.selectList("meeting.citem",mCode);
	}



	@Override
	public List checkMember(long mCode) {
		
		
		return sql.selectList("meeting.checkmember", mCode);
	}



	

	
	


	

	

}
