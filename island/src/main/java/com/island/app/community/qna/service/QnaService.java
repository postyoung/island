package com.island.app.community.qna.service;


import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.island.app.common.page.PageVo;
import com.island.app.community.qna.dao.QnaDao;
import com.island.app.community.qna.vo.QnaVo;
import com.island.app.community.qnaan.vo.QnaAnswerVo;
/**
 * 
 * @author 김수진
 *
 */
@Service
@Transactional
public class QnaService {
	
	private final QnaDao dao;
	private final SqlSessionTemplate sst;
	
	@Autowired
	public QnaService(QnaDao dao, SqlSessionTemplate sst) {
		this.dao = dao;
		this.sst = sst;
	}


	//목록조회
	public List<QnaVo> getQnaList(PageVo pv, Map<String, String> searchMap) {
		return dao.getQnaList(sst,pv, searchMap);
	}
	
	//작성하기
	public int write(QnaVo vo) {
		return dao.write(sst, vo);
	}
	
	//상세조회(조회수)
	public QnaVo getQna(String no) throws Exception {
		int result = dao.increaseHit(sst, no);
		if(result != 1) {
			throw new Exception();
		}
		return dao.getQna(sst, no);
	}
	//상세조회해서 답변 보여주기
	public List<QnaAnswerVo> getQnaAnswerList(String qNo) {
	    return dao.getQnaAnswerList(sst, qNo);
	}
	
	//수정하기 화면
	public QnaVo getQnaEdit(String no) throws Exception {
		return dao.getQnaEdit(sst, no);
	}
	
	//수정하기(작성자만)
	public int updateQna(QnaVo vo) {
		return dao.updateQna(sst, vo);
	}
	
	//삭제하기(작성자만)
	public int delete(QnaVo vo) {
		return dao.delete(sst, vo);
	}
	
	//게시글 갯수조회
	public int getCnt(Map<String, String> searchMap) {
		return dao.getCnt(sst, searchMap);
	}


	public List<Map<String, String>> getCategoryList() {
		return dao.getCategoryList(sst);
	}
	
	
	/**
	 * QNA 에 insert
	 * ATTACHMENT 에 changeNameList 의 값들을 insert (QNA 기본키 참조)
	 * 
	 * @param 게시글 관련 데이터
	 * @param 파일업로드 이후 저장된 파일명 리스트
	 * @return QNA테이블 및 Attachment 테이블 에 insert 한 결과
	 */

}
