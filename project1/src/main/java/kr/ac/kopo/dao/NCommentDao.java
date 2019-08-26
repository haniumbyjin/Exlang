package kr.ac.kopo.dao;

import java.util.List;

import kr.ac.kopo.model.NCommentVO;

public interface NCommentDao {

	List<NCommentVO> commentListService(int noticeCode);

	int commentInsertService(NCommentVO comment);

	int commentUpdateService(NCommentVO comment);

	int commentDeleteService(int cno);

	int commentCount(int noticeCode);

}
