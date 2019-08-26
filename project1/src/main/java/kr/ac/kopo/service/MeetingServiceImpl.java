package kr.ac.kopo.service;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.MeetingDao;
import kr.ac.kopo.model.ACommentVO;
import kr.ac.kopo.model.Article;
import kr.ac.kopo.model.Meeting;
import kr.ac.kopo.model.MeetingMember;
import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Review;
import kr.ac.kopo.util.Pager;

@Service
public class MeetingServiceImpl implements MeetingService {
	
	@Autowired
	MeetingDao dao;
		
	@Override
	public Meeting item(long mCode) {
		return dao.item(mCode);
	}

	
	@Override
	public void add(Meeting item) {
		dao.add(item);
	
	}

	@Override
	public void memadd(MeetingMember item) {
		dao.memadd(item);
	}

	@Override
	public List<Meeting> list(Pager pager, String mCategory) {
		return dao.list(pager, mCategory);
	}


	@Override
	public int countMember(long mCode) {
		return dao.countMember(mCode);
	}


	@Override
	public Notice nitem(long mCode) {
		return dao.nitem(mCode);
	}


	@Override
	public List<Notice> nlist(long mCode) {
		return dao.nlist(mCode);
	}


	@Override
	public List<Article> alist(long mCode) {
		
		return dao.alist(mCode);
	}


	@Override
	public int countComment(long mCode) {
		return dao.countComment(mCode);
	}


	@Override
	public int count(long mCode) {
		dao.countMember(mCode);
		dao.countComment(mCode);
		return 0;
	}


	@Override
	public List<ACommentVO> aclist(long mCode) {
		
		return dao.aclist(mCode);
	}


	@Override
	public List<Review> rlist(long mCode) {
		return dao.rlist(mCode);
	}


	@Override
	public List<Calendar> clist(long mCode) {
		return dao.clist(mCode);
	}


	@Override
	public List checkMember(long mCode) {
		
		return dao.checkMember(mCode);
	}


	

	

	

}
