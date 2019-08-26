package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.NCommentVO;
@Repository
public class NCommentDaoImpl implements NCommentDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public List<NCommentVO> commentListService(int noticeCode) {
		return sql.selectList("noticecomment.list", noticeCode);
	}

	@Override
	public int commentInsertService(NCommentVO comment) {
		return sql.insert("noticecomment.insert", comment);
	}

	@Override
	public int commentUpdateService(NCommentVO comment) {
		return sql.update("noticecomment.update", comment);
	}

	@Override
	public int commentDeleteService(int cno) {
		return sql.delete("noticecomment.delete", cno);
	}

	@Override
	public int commentCount(int noticeCode) {
		return sql.selectOne("noticecomment.commentCount", noticeCode);
	}
	
}
