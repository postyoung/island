package com.island.app.member.dao;

import org.apache.ibatis.session.SqlSession;
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
	//닉네임 중복확인
	public int checkNick(SqlSessionTemplate sst, String nick) {
		return sst.selectOne("member.checkNick" , nick);
	}
	//로그인
	public MemberVo login(SqlSessionTemplate sst, MemberVo vo) {
		return sst.selectOne("member.login",vo);
	}
	//회원정보수정
	public int edit(SqlSessionTemplate sst, MemberVo vo) {
		return sst.update("member.edit" , vo);
	}
	public MemberVo selectOneByNo(SqlSessionTemplate sst, MemberVo vo) {
		return sst.selectOne("member.getMember" , vo);
	}
	//회원탈퇴
	public int quit(SqlSession sst, MemberVo vo) {
		return sst.update("member.quit" , vo);
	}
	//회원탈퇴 비번확인
	public MemberVo quitConfirm(SqlSessionTemplate sst, MemberVo vo) {
		return sst.selectOne("member.quitConfirm",vo);
	}

}
