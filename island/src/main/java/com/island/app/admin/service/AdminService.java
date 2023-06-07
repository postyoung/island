package com.island.app.admin.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.island.app.admin.dao.AdminDao;
import com.island.app.admin.vo.AdminVo;
import com.island.app.common.page.PageVo;

@Service
@Transactional
public class AdminService {
	private final SqlSessionTemplate sst;
	private final AdminDao dao;

	@Autowired
	public AdminService(SqlSessionTemplate sst, AdminDao dao) {
		this.sst = sst;
		this.dao = dao;
	}

	// 로그인
	public AdminVo login(AdminVo vo) {
		return dao.login(sst, vo);
	}

	// 계정 생성
	public int create(AdminVo vo) {
		return dao.create(sst, vo);
	}

	// 정보 수정
	public AdminVo edit(AdminVo vo) throws Exception {
		int result = dao.edit(sst, vo);
		if (result != 1) {
			throw new Exception();
		}
		return dao.selectOneByNo(sst, vo);
	}

	// 아이디 중복 여부 확인
	public int checkId(String id) {
		return dao.checkId(sst, id);
	}

	public int getCnt(Map<String, String> searchMap) {
		return dao.getCnt(sst, searchMap);
	}

	public List<AdminVo> getAdminList(PageVo pv, Map<String, String> searchMap) {
		return dao.getAdminList(sst, pv, searchMap);
	}

	public AdminVo getAdmin(String no) {
		return dao.getAdmin(sst, no);
	}

	public int changeAuthor(AdminVo vo) {
		return dao.changeAuthor(sst, vo);
	}

	public int delete(String no) {
		return dao.delete(sst, no);
	}

	public int getMemberCnt() {
		return dao.getMemberCnt(sst);
	}

	public int getAdminCnt() {
		return dao.getAdminCnt(sst);
	}

	public int getGroupCnt() {
		return dao.getGroupCnt(sst);
	}

	public int getSeminarCnt() {
		return dao.getSeminarCnt(sst);
	}
}