package com.my.mmy.lost;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LostServiceImpl implements LostService {
	@Autowired
	LostDAO lostDAO;
	
	@Override
	public int insertLost(LostVO vo) {
		return lostDAO.insertLost(vo);
	}
	
	@Override
	public int updateLost(LostVO vo) {
		return lostDAO.updateLost(vo);
	}
	
	@Override
	public int deleteLost(int id) {
		return lostDAO.deleteLost(id);
	}
	
	@Override
	public LostVO getLost(int seq) {
		return lostDAO.getLost(seq);
	}
	
	@Override
	public List<LostVO> getLostList() {
		return lostDAO.getLostList();
	}
}
