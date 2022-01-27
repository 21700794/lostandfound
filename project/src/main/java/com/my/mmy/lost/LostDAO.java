package com.my.mmy.lost;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LostDAO {
	@Autowired
	SqlSession sqlSession;
	
	public int insertLost(LostVO vo) {
		int result = sqlSession.insert("Lost.insertLost", vo);
		return result;
	}
	
	public int updateLost(LostVO vo) {
		int cnt = sqlSession.update("Lost.updateLost", vo);
		return cnt;
	}
	
	public int deleteLost(int id) {
		int del = sqlSession.delete("Lost.deleteLost", id);
		return del;
	}
	
	public LostVO getLost(int seq) {
		LostVO one = sqlSession.selectOne("Lost.getLost", seq);
		return one;
	}
	
	public List<LostVO> getLostList() {
		List<LostVO> list = sqlSession.selectList("Lost.getLostList");
		return list;
	}
}
