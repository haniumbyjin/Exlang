package kr.ac.kopo.dao;

import java.util.List;

import kr.ac.kopo.model.Review;

public interface ReviewDao {

	void add(Review item);

	List<Review> list(long mCode);

	Review item(long reviewCode);

	void update(Review item);

	void delete(long reviewCode);

}
