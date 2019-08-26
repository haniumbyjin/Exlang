package kr.ac.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.ReviewDao;
import kr.ac.kopo.model.Review;
@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	ReviewDao dao;
	
	@Override
	public void add(Review item) {
		dao.add(item);
	}

	@Override
	public List<Review> list(long mCode) {
		return dao.list(mCode);
	}

	@Override
	public Review item(long reviewCode) {
		return dao.item(reviewCode);
	}

	@Override
	public void update(Review item) {
		dao.update(item);
	}

	@Override
	public void delete(long reviewCode) {
		dao.delete(reviewCode);
	}

}
