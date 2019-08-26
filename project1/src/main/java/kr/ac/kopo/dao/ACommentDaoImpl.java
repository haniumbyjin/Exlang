package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.ACommentVO;
@Repository
public class ACommentDaoImpl implements ACommentDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public List<ACommentVO> commentListService(int articleCode) {
		return sql.selectList("articlecomment.list", articleCode);
	}

	@Override
	public int commentInsertService(ACommentVO comment) {
		return sql.insert("articlecomment.insert", comment);
	}

	@Override
	public int commentUpdateService(ACommentVO comment) {
		return sql.update("articlecomment.update", comment);
	}

	@Override
	public int commentDeleteService(int cno) {
		return sql.delete("articlecomment.delete", cno);
	}

	@Override
	public int commentCount(int articleCode) {
		return sql.selectOne("articlecomment.commentCount", articleCode);
	}
	
}
