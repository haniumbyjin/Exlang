package kr.ac.kopo.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Article;
import kr.ac.kopo.util.Pager;
@Repository
public class ArticleDaoImpl implements ArticleDao {
	@Autowired
	SqlSession sql;
	
	@Override
	public Article item(long articleCode) {
		return sql.selectOne("article.item", articleCode);
	}

	@Override
	public List<Article> list() {
		
		
		return sql.selectList("article.list");
	}

	@Override
	public void add(Article item) {
		sql.insert("article.add", item);
	}

	@Override
	public void update(Article item) {
		sql.update("article.update", item);
	}

	@Override
	public void delete(long articleCode) {
		sql.delete("article.delete", articleCode);
	}

	@Override
	public int countRecommend(String id, long mCode) {
		return 0;
	}

	@Override
	public void incRecommend(long mCode, String id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mCode", mCode);
		map.put("id",id);
		
		sql.insert("article.");
	}

	@Override
	public int countComment(long articleCode) {
		return sql.selectOne("article.commentCount", articleCode);
	}

}
