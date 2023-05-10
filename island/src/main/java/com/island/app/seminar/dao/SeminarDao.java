package com.island.app.seminar.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.island.app.seminar.bank.vo.BankVo;

@Repository
public class SeminarDao {
	
	//은행명 카테고리 조회
	public List<BankVo> bankCategorySelect(SqlSessionTemplate sst){
		return sst.selectList("seminar.bank");
	}
}
