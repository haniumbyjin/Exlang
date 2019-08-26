package kr.ac.kopo.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.CalendarDao;
import kr.ac.kopo.model.Calendar;

@Service
public class CalendarServiceImpl implements CalendarService {

	@Autowired
	CalendarDao dao;
	
	@Override
	public Calendar item(long mCode) {
		return dao.item(mCode);
	}
	
	@Override
	public void add(Calendar item) {
		dao.add(item);
	}

	@Override
	public List<Calendar> getList(long mCode){

		return dao.getList(mCode);
	}

	@Override
	public void delete(int calNum) {
		dao.delete(calNum);

	}

	@Override
	public Calendar getItem(int calNum) {

		return dao.getItem(calNum);
	}

	@Override
	public void update(Calendar item) {
		
		dao.update(item);
	}
	
	@Override
	public void update1(Calendar item) {
		
		dao.update1(item);
	}

	@Override
	public void delete(Calendar item) {
		
	}

	@Override
	public List<Calendar> perlist(String pId) {
		return dao.perlist(pId);
	}

	@Override
	public void padd(Calendar item) {
		dao.padd(item);
	}

}
