package kr.ac.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.NCommentDao;
import kr.ac.kopo.model.NCommentVO;
@Service
public class NCommentServiceImpl implements NCommentService {
	
	@Autowired
	NCommentDao dao;
	
	@Override
	public List<NCommentVO> commentListService(int noticeCode) {
		return dao.commentListService(noticeCode);
	}

	@Override
	public int commentInsertService(NCommentVO comment) {
		return dao.commentInsertService(comment);
	}

	@Override
	public int commentUpdateService(NCommentVO comment) {
		return dao.commentUpdateService(comment);
	}

	@Override
	public int commentDeleteService(int cno) {
		return dao.commentDeleteService(cno);
	}

	@Override
	public int commentCount(int noticeCode) {
		return dao.commentCount(noticeCode);
	}

}
