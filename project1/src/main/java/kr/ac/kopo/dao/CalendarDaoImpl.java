package kr.ac.kopo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.Calendar;

@Repository
public class CalendarDaoImpl implements CalendarDao {

	
	@Autowired
	SqlSession sql;
	String Namespace = "calendar";
	
	@Override
	public Calendar item(long mCode) {
		return sql.selectOne(Namespace+".item", mCode);
	}
	
	@Override
	public List<Calendar> getList(long mCode){
		
		return sql.selectList(Namespace+".list", mCode);
	}

	@Override
	public void delete(int calNum) {
		
		sql.delete(Namespace+".delete", calNum);
	}

	@Override
	public void add(Calendar item) {
		sql.insert(Namespace+".add",item);
	}

	@Override
	public Calendar getItem(int calNum) {

		return sql.selectOne(Namespace+".getItem", calNum);
	}

	@Override
	public void update(Calendar item) {
		
		sql.update(Namespace+".update", item);
	}
	
	@Override
	public void update1(Calendar item) {
		
		sql.update(Namespace+".update1", item);
	}

	@Override
	public List<Calendar> perlist(String pId) {
		// TODO Auto-generated method stub
		return sql.selectList(Namespace+".perlist", pId);
	}

	@Override
	public void padd(Calendar item) {
		// TODO Auto-generated method stub
		sql.insert(Namespace+".padd", item);
	}

}
