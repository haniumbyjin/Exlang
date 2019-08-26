package kr.ac.kopo.service;

import kr.ac.kopo.model.User;

public interface UserService {

	boolean login(User user);

	void memberAdd(User user);

	int idChk(String id);

	int nameChk(String name);

}
