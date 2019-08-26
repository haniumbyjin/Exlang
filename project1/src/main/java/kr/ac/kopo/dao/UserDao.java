package kr.ac.kopo.dao;

import kr.ac.kopo.model.User;

public interface UserDao {

	boolean login(User user);

	void memberAdd(User user);

	int idChk(String id);

	int nameChk(String name);

}
