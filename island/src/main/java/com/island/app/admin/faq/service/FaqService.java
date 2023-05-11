package com.island.app.admin.faq.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.island.app.admin.faq.dao.FaqDao;
import com.island.app.admin.faq.vo.FaqVo;

@Service
@Transactional
public class FaqService {

	private final FaqDao dao;
	private final SqlSessionTemplate sst;

	@Autowired
	public FaqService(FaqDao dao , SqlSessionTemplate sst) {
		this.dao = dao;
		this.sst = sst;
	}

	public List<FaqVo> getFaqList(){
		return dao.getFaqList(sst);
	}

	public int faqWrite(FaqVo vo) {
		
		return dao.faqWrite(sst, vo);
	}

	public FaqVo getFaq(String num) throws Exception {
		int result = dao.increaseHit(sst , num);
		
		if(result != 1){
			throw new Exception();
			
		}
		return dao.getFaq(sst , num);
	}
	
	public int faqedit(FaqVo vo) {
		
		return dao.faqedit(sst , vo);
	}

	public int faqdelete(String num) {
		return  dao.faqdelete(sst , num);
	}

	public int getFaqListCnt() {
		
		return dao.getFaqListCnt(sst);
	}


}
