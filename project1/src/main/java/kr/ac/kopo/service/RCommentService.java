package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.model.RCommentVO;

public interface RCommentService {

	int commentCount(int reviewCode);

	List<RCommentVO> commentListService(int reviewCode);

	int commentInsertService(RCommentVO comment);

	int commentUpdateService(RCommentVO comment);

	int commentDeleteService(int cno);

}
