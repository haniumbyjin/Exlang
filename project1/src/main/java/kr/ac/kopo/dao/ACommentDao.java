package kr.ac.kopo.dao;

import java.util.List;

import kr.ac.kopo.model.ACommentVO;

public interface ACommentDao {

	List<ACommentVO> commentListService(int articleCode);

	int commentInsertService(ACommentVO comment);

	int commentUpdateService(ACommentVO comment);

	int commentDeleteService(int cno);

	int commentCount(int articleCode);

}
