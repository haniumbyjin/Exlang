package kr.ac.kopo.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.User;
@Repository
public class UserDaoImpl implements UserDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public boolean login(User user) {
		// TODO Auto-generated method stub
		if(sql.selectOne("user.login", user)==null)
		return false;
		
		return true;
	}

	@Override
	public void memberAdd(User user) {
		// TODO Auto-generated method stub
		sql.insert("user.add", user);

	}

	@Override
	public int idChk(String id) {
		// TODO Auto-generated method stub
		return sql.selectOne("user.idChk", id);
	}

	@Override
	public int nameChk(String name) {
		// TODO Auto-generated method stub
		return sql.selectOne("user.nameChk", name);
	}

}
