package kr.ac.kopo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.UserDao;
import kr.ac.kopo.model.User;
@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDao dao;
	
	@Override
	public boolean login(User user) {
		// TODO Auto-generated method stub
		return dao.login(user);
	}

	@Override
	public void memberAdd(User user) {
		// TODO Auto-generated method stub
		dao.memberAdd(user);
	}

	@Override
	public int idChk(String id) {
		// TODO Auto-generated method stub
		return dao.idChk(id);
	}

	@Override
	public int nameChk(String name) {
		// TODO Auto-generated method stub
		return dao.nameChk(name);
	}

}
