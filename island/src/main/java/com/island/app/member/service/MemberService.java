package com.island.app.member.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.island.app.member.dao.MemberDao;
import com.island.app.member.vo.MemberVo;
/**
 * 
 * @author 김수진
 *
 */
@Service
@Transactional
public class MemberService {
	
	private final SqlSessionTemplate sst;
	private final MemberDao dao;
	private final BCryptPasswordEncoder enc;
	
	@Autowired
	public MemberService(SqlSessionTemplate sst , MemberDao dao, BCryptPasswordEncoder enc) {
		this.sst = sst;
		this.dao = dao;
		this.enc = enc;

	}
	//회원가입
	public int join(MemberVo vo) throws Exception{
		
		String pwd = vo.getPwd();
		String newPwd = enc.encode(pwd);
		
		vo.setPwd(newPwd);
		
		return dao.join(sst, vo);
	}
	//아이디 중복확인
	public int checkId(String id) {
		return dao.checkId(sst , id);
	}
	
	//닉네임 중복확인
	public int checkNick(String nick) {
		return dao.checkNick(sst, nick);
	}
	//로그인
	public MemberVo login(MemberVo vo) {
		MemberVo memberVo = dao.login(sst,vo);
		
		String userPwd = vo.getPwd();
		String dbPwd = memberVo.getPwd();
		
		boolean result = enc.matches(userPwd, dbPwd);
		if(result) {
			return memberVo;
		}else {
			return null;
		}
	}
	
	//회원정보수정
	public MemberVo edit(MemberVo vo) throws Exception {
		
		String pwd = vo.getPwd();
		String newPwd = enc.encode(pwd);
		
		vo.setPwd(newPwd);
		
		int result = dao.edit(sst , vo);
		if(result != 1) {
			throw new Exception();
		}
		return dao.selectOneByNo(sst , vo);
	}
	
	//회원탈퇴
	public MemberVo quit(MemberVo vo) {
		
		MemberVo memberVo = dao.quitConfirm(sst,vo);
		
		if (memberVo != null) {
	        memberVo.setQReason(vo.getQReason());

	        dao.quit(sst, memberVo);
		
		String userpwd = vo.getPwd();
		String dbpwd = memberVo.getPwd();
		
		boolean result = enc.matches(userpwd, dbpwd);
		if(result) {
			return memberVo;
		}else {
			return null;
		}
		
		}
		return memberVo;


	
}
}//class
