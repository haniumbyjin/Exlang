package kr.ac.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.ACommentDao;
import kr.ac.kopo.model.ACommentVO;
@Service
public class ACommentServiceImpl implements ACommentService {
	
	@Autowired
	ACommentDao dao;
	
	@Override
	public List<ACommentVO> commentListService(int articleCode) {
		return dao.commentListService(articleCode);
	}

	@Override
	public int commentInsertService(ACommentVO comment) {
		return dao.commentInsertService(comment);
	}

	@Override
	public int commentUpdateService(ACommentVO comment) {
		return dao.commentUpdateService(comment);
	}

	@Override
	public int commentDeleteService(int cno) {
		return dao.commentDeleteService(cno);
	}

	@Override
	public int commentCount(int articleCode) {
		return dao.commentCount(articleCode);
	}

}
