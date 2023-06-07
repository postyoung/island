package com.island.app.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.island.app.admin.vo.AdminVo;
import com.island.app.common.page.PageVo;

@Repository
public class AdminDao {
	// 로그인
	public AdminVo login(SqlSessionTemplate sst, AdminVo vo) {
		return sst.selectOne("admin.login", vo);
	}

	// 계정 생성
	public int create(SqlSessionTemplate sst, AdminVo vo) {
		return sst.insert("admin.create", vo);
	}

	// 정보 수정
	public int edit(SqlSessionTemplate sst, AdminVo vo) {
		return sst.update("admin.edit", vo);
	}

	// 정보 수정 후 계정 정보 가져오기
	public AdminVo selectOneByNo(SqlSessionTemplate sst, AdminVo vo) {
		return sst.selectOne("admin.getAdmin", vo);
	}

	// 아이디 중복 여부 확인
	public int checkId(SqlSessionTemplate sst, String id) {
		return sst.selectOne("admin.checkId", id);
	}

	// 권한 설정, 계정 삭제 리스트 개수 조회
	public int getCnt(SqlSessionTemplate sst, Map<String, String> searchMap) {
		return sst.selectOne("admin.getCnt", searchMap);
	}

	// 권한 설정, 계정 삭제 리스트 조회
	public List<AdminVo> getAdminList(SqlSessionTemplate sst, PageVo pv, Map<String, String> searchMap) {
		int limit = pv.getBoardLimit();
		int offset = (pv.getCurrentPage() - 1) * limit;
		RowBounds rb = new RowBounds(offset, limit);
		return sst.selectList("admin.getAdminList", searchMap, rb);
	}

	public AdminVo getAdmin(SqlSessionTemplate sst, String no) {
		return sst.selectOne("admin.getAdmin", no);
	}

	public int changeAuthor(SqlSessionTemplate sst, AdminVo vo) {
		return sst.update("admin.changeAuthor", vo);
	}

	public int delete(SqlSessionTemplate sst, String no) {
		return sst.update("admin.delete", no);
	}

	public int getMemberCnt(SqlSessionTemplate sst) {
		return sst.selectOne("admin.getMember");
	}

	public int getAdminCnt(SqlSessionTemplate sst) {
		return sst.selectOne("admin.getCnt");
	}

	public int getGroupCnt(SqlSessionTemplate sst) {
		return sst.selectOne("admin.getGroup");
	}

	public int getSeminarCnt(SqlSessionTemplate sst) {
		return sst.selectOne("admin.getSeminar");
	}
}