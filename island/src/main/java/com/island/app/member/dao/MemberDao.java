package com.island.app.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.island.app.member.vo.MemberVo;
@Repository
public class MemberDao{
	//회원가입
	public int join(SqlSessionTemplate sst, MemberVo vo) throws Exception{
		return sst.insert("member.join",vo);
	}
	//아이디 중복확인
	public int checkId(SqlSessionTemplate sst, String id) {
		return sst.selectOne("member.checkId" , id);
	}

}
