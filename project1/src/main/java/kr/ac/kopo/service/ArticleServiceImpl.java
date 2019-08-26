package kr.ac.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.ArticleDao;
import kr.ac.kopo.model.Article;
import kr.ac.kopo.util.Pager;
@Service
public class ArticleServiceImpl implements ArticleService {
	@Autowired
	ArticleDao dao;
	
	@Override
	public Article item(long articleCode) {
		return dao.item(articleCode);
	}

	@Override
	public List<Article> list() {
		return dao.list();
	}

	@Override
	public void add(Article item) {
		dao.add(item);
	}

	@Override
	public void update(Article item) {
		dao.update(item);
	}

	@Override
	public void delete(long articleCode) {
		dao.delete(articleCode);
	}

	@Override
	public int countRecommend(String id, long mCode) {
		return dao.countRecommend(id, mCode);
	}

	@Override
	public void incRecommend(long mCode, String id) {
		dao.incRecommend(mCode, id);
	}

	@Override
	public int countComment(long articleCode) {
		return dao.countComment(articleCode);
	}



}
