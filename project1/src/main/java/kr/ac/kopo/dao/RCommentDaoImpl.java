package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.RCommentVO;
@Repository
public class RCommentDaoImpl implements RCommentDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public List<RCommentVO> commentListService(int reviewCode) {
		return sql.selectList("reviewcomment.list", reviewCode);
	}

	@Override
	public int commentInsertService(RCommentVO comment) {
		return sql.insert("reviewcomment.insert", comment);
	}

	@Override
	public int commentUpdateService(RCommentVO comment) {
		return sql.update("reviewcomment.update", comment);
	}

	@Override
	public int commentDeleteService(int cno) {
		return sql.delete("reviewcomment.delete", cno);
	}

	@Override
	public int commentCount(int reviewCode) {
		return sql.selectOne("reviewcomment.commentCount", reviewCode);
	}
	
}
