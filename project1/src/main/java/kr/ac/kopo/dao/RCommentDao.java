package kr.ac.kopo.dao;

import java.util.List;

import kr.ac.kopo.model.RCommentVO;

public interface RCommentDao {

	List<RCommentVO> commentListService(int reviewCode);

	int commentInsertService(RCommentVO comment);

	int commentUpdateService(RCommentVO comment);

	int commentDeleteService(int cno);

	int commentCount(int reviewCode);

}
