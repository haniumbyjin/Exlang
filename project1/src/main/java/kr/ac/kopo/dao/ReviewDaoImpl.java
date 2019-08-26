package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Review;
@Repository
public class ReviewDaoImpl implements ReviewDao {
	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Review item) {
		sql.insert("review.add", item);

	}

	@Override
	public List<Review> list(long mCode) {
		return sql.selectList("review.list", mCode);
	}

	@Override
	public Review item(long reviewCode) {
		return sql.selectOne("review.item", reviewCode);
	}

	@Override
	public void update(Review item) {
		sql.update("review.update", item);
	}

	@Override
	public void delete(long reviewCode) {
		sql.delete("review.delete", reviewCode);
	}

}
