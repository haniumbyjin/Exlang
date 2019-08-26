package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.model.ACommentVO;


public interface ACommentService {
	List<ACommentVO> commentListService(int articleCode);

	int commentInsertService(ACommentVO comment);

	int commentUpdateService(ACommentVO comment);

	int commentDeleteService(int cno);
	
	int commentCount(int articleCode);

}
