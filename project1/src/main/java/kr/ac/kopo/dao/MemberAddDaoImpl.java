package kr.ac.kopo.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.model.MeetingMember;
@Repository
public class MemberAddDaoImpl implements MemberAddDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public void memadd(MeetingMember item) {
		sql.insert("MeetingMember.memadd", item);
	}

}
