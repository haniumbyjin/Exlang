package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.model.Review;

public interface ReviewService {

	void add(Review item);

	List<Review> list(long mCode);

	Review item(long reviewCode);

	void update(Review item);

	void delete(long reviewCode);

}
