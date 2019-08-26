package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.model.Article;
import kr.ac.kopo.util.Pager;

public interface ArticleService {

	Article item(long articleCode);

	List<Article> list();

	void add(Article item);

	void update(Article item);

	void delete(long articleCode);

	int countRecommend(String id, long mCode);

	void incRecommend(long mCode, String id);

	int countComment(long articleCode);

}
