package com.island.app.admin.faq.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.island.app.admin.faq.dao.FaqDao;
import com.island.app.admin.faq.vo.FaqVo;
import com.island.app.common.page.PageVo;

/**
 * 
 * @author 김수경
 *
 */

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
	//목록조회
	public List<FaqVo> getFaqList(PageVo pv){
		return dao.getFaqList(sst , pv);
	}
	//작성하기
	public int faqWrite(FaqVo vo) {
		
		return dao.faqWrite(sst, vo);
	}
	//상세조회
	public FaqVo getFaq(String num) {
		
		return dao.getFaq(sst, num);
	}
	//수정하기
	public int faqedit(FaqVo vo) {
		
		return dao.faqedit(sst , vo);
	}
	//삭제하기
	public int faqdelete(String num) {
		return  dao.faqdelete(sst , num);
	}
	
	//게시글 갯수 조회 
	public int getCnt() {
		return dao.getCnt(sst);
	}
	
	public String getcategoryName(String categoryNo) {
		return dao.getcategoryName(sst, categoryNo);
	}
	

}
