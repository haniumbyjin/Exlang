package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.model.NCommentVO;

public interface NCommentService {

	int commentCount(int noticeCode);

	List<NCommentVO> commentListService(int noticeCode);

	int commentInsertService(NCommentVO comment);

	int commentUpdateService(NCommentVO comment);

	int commentDeleteService(int cno);

}
