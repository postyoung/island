package com.island.app.admin.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import com.island.app.admin.vo.AdminVo;

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
}