package com.island.app.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.island.app.community.qna.vo.QnaVo;
import com.island.app.member.interest.vo.MemberInterestVo;
import com.island.app.member.vo.MemberVo;
import com.island.app.seminar.vo.SeminarVo;
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
		return sst.update("memSsber.quit" , vo);
	}
	//회원탈퇴 비번확인
	public MemberVo quitConfirm(SqlSessionTemplate sst, MemberVo vo) {
		return sst.selectOne("member.quitConfirm",vo);
	}
	//마이페이지 문의내역
	public List<QnaVo> getWriteList(SqlSessionTemplate sst, String no) {
		return sst.selectList("member.getQnaList", no);
	}
	//마이페이지 관심내역
	public List<SeminarVo> getInterestList(SqlSessionTemplate sst, String no) {
		return sst.selectList("member.getSvoList",no);
	}
	//관심취소
	public int interestEdit(SqlSessionTemplate sst, String svono) {
		return sst.delete("member.interestEdit",svono);
	}
	//마이페이지 신청내역
	public List<SeminarVo> getEnrollList(SqlSessionTemplate sst, String no) {
		return sst.selectList("member.getEnrollList",no);
	}
	//신청취소
	public int enrollEdit(SqlSessionTemplate sst, String svono) {
		return sst.delete("member.enrollEdit", svono);
	}
	//신청내역에서 리뷰작성
	public SeminarVo enrollReivew(SqlSessionTemplate sst, String no) {
		return sst.selectOne("member.enrolllReivew",no);
	}
	//개설내역
	public List<SeminarVo> getmadeListSeminar(SqlSessionTemplate sst, String no) {
		return sst.selectList("member.getmadeListSeminar", no);
	}
	

}
