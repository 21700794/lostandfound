package com.my.mmy.lost;

import java.util.List;

public interface LostService {
	public int insertLost(LostVO vo);
	public int updateLost(LostVO vo);
	public int deleteLost(int id);
	public LostVO getLost(int seq);
	public List<LostVO> getLostList();
}
